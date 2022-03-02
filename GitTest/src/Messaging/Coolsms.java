package Messaging;

import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;
import javax.net.ssl.HttpsURLConnection;

import java.util.Properties;
import java.util.Random;
import java.util.HashMap;
import java.util.Map.Entry;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.junit.Test;

import java_sdk.exceptions.CoolsmsException;
import java_sdk.exceptions.CoolsmsSDKException;
import java_sdk.exceptions.CoolsmsServerException;
import java_sdk.exceptions.CoolsmsSystemException;


public class Coolsms {
  final String URL = "https://api.coolsms.co.kr";
  final String SDK_VERSION = "2.2";

  private String apiName = "sms";
  private String apiVersion = "2";

  private String salt;
  private String timestamp;
  private String signature;
  private String apiKey;
  private String apiSecret;

  String charset = "UTF-8";


  public Coolsms(String apiKey, String apiSecret) {
    // disable SNI. Java 1.7 bug
    System.setProperty("jsse.enableSNIExtension", "false");
    this.apiKey = apiKey;
    this.apiSecret = apiSecret;
  }

 
  public JSONObject sendPostRequest(String resource, HashMap<String, String> params) throws CoolsmsException {
    JSONObject obj = new JSONObject();

    // set base info
    params = setBaseInfo(params);

    // create delimiter
    String boundary = this.salt + this.timestamp;
    String delimiter = "\r\n--" + boundary + "\r\n";

    // create stringbuffer and append delimiter
    StringBuffer postDataBuilder = new StringBuffer();
    postDataBuilder.append(delimiter);

    // set contents
    for (Entry<String, String> entry : params.entrySet()) {
      String key = entry.getKey();
      String value = entry.getValue();

      // if key is image. process below
      if (key == "image")
        continue;
      postDataBuilder = setPostData(postDataBuilder, key, value, delimiter);
    }

    try {
      // start https connection	
      URL url = new URL(getResourceUrl(resource));
      HttpsURLConnection connection = (HttpsURLConnection) url.openConnection();
      connection.setDoInput(true); 		
      connection.setDoOutput(true); 
      connection.setRequestMethod("POST");
      connection.setRequestProperty("Connection", "Keep-Alive");
      connection.setRequestProperty("Content-Type", "multipart/form-data;boundary=" + boundary);
      connection.setUseCaches(false);
      DataOutputStream outputStream = new DataOutputStream(new BufferedOutputStream(connection.getOutputStream()));

      // set image data 
      if (params.get("image") != null) {
        // set image file 
        postDataBuilder.append(setFile("image", params.get("image")));
        postDataBuilder.append("\r\n");

        FileInputStream fileStream = new FileInputStream(params.get("image"));
        outputStream.writeUTF(postDataBuilder.toString());

        // add an image file to the buffer
        int maxBufferSize = 1024;
        int bufferSize = Math.min(fileStream.available(), maxBufferSize);
        byte[] buffer = new byte[bufferSize];
        int byteRead = fileStream.read(buffer, 0, bufferSize);
        while (byteRead > 0) {
          outputStream.write(buffer);
          bufferSize = Math.min(fileStream.available(), maxBufferSize);
          byteRead = fileStream.read(buffer, 0, bufferSize);
        }
        fileStream.close();
      } else {
        outputStream.writeUTF(postDataBuilder.toString());
      }

      outputStream.writeBytes(delimiter);
      outputStream.flush();
      outputStream.close();

      // get response data
      String response = getHttpsResponse(connection);
      if (response == null)
        return obj;

      // casting JSONObject or JSONArray
      try {
        obj = (JSONObject) JSONValue.parse(response);
      } catch (ClassCastException e) {
        try {
          JSONArray response_array = (JSONArray) JSONValue.parse(response);
          obj.put("data", response_array);
        } catch (Exception ex) {
          throw new CoolsmsSystemException(ex.getMessage(), 302);
        }
      }
    } catch (IOException e) {
      throw new CoolsmsSystemException(e.getMessage(), 399);
    }

    return obj;
  }

 
  public JSONObject sendGetRequest(String resource, HashMap<String, String> params) throws CoolsmsException {
    JSONObject obj = new JSONObject();

    // set base info
    params = setBaseInfo(params);
    String data = getResourceUrl(resource) + "?";
    try {
      data = data + URLEncoder.encode("api_key", this.charset) + "=" + URLEncoder.encode(this.apiKey, this.charset);
    } catch (UnsupportedEncodingException e) {
      throw new CoolsmsSystemException(e.getMessage(), 399);
    }

    // remove api_secret
    params.remove("api_secret");

    // set contents
    for (Entry<String, String> entry : params.entrySet()) {
      String key = entry.getKey();
      String value = entry.getValue();

            if (key == "api_key")
        continue;

      data = setGetData(data, key, value);
      if (data == null) {
        throw new CoolsmsSDKException("params is something wrong, key : " + key + " value : " + value, 201);
      }
    }

    try {
      URL url = new URL(data);
      HttpsURLConnection connection = (HttpsURLConnection) url.openConnection();
      connection.setRequestMethod("GET");
      String response = getHttpsResponse(connection);

      // casting JSONObject or JSONArray
      try {
        obj = (JSONObject) JSONValue.parse(response);
      } catch (ClassCastException e) {
        try {
          JSONArray response_array = (JSONArray) JSONValue.parse(response);
          obj.put("data", response_array);
        } catch (Exception ex) {
          throw new CoolsmsSystemException(ex.getMessage(), 302);
        }
      }
    } catch (IOException e) {
      throw new CoolsmsSystemException(e.getMessage(), 399);
    }

    return obj;
  }

 
  public void setApiConfig(String api_name, String api_version) throws CoolsmsException {
    if (!checkString(api_name) || !checkString(api_version))
      throw new CoolsmsSDKException("API name and version is requried", 201);
    this.apiName = api_name;
    this.apiVersion = api_version;
  }

  HashMap<String, String> setBaseInfo(HashMap<String, String> params) throws CoolsmsException {
    Properties properties = System.getProperties();

    this.salt = getSalt();
    this.timestamp = getTimestamp();
    this.signature = getSignature(this.apiSecret, salt, timestamp); // getSignature

    params.put("api_key", this.apiKey);
    params.put("salt", this.salt);
    params.put("signature", this.signature);
    params.put("timestamp", this.timestamp);
    params.put("os_platform", properties.getProperty("os.name"));
    params.put("dev_lang", "JAVA " + properties.getProperty("java.version"));
    params.put("sdk_version", "JAVA SDK " + this.SDK_VERSION);
    return params;
  }

  public String setFile(String key, String fileName) {
    return "Content-Disposition: form-data; name=\"" + key + "\";filename=\"" + fileName + "\"\r\nContent-type: image/jpeg;\r\n";
  }

  public StringBuffer setPostData(StringBuffer builder, String key, String value, String delimiter) throws CoolsmsException {
    try {
      String data = "Content-Disposition: form-data; name=\"" + key + "\"\r\n\r\n" + value;
      builder.append(data);
      builder.append(delimiter);
    } catch (Exception e) {
      throw new CoolsmsSystemException(e.getMessage(), 302);
    }

    return builder;
  }

  public String setGetData(String data, String key, String value) throws CoolsmsException {
    try {
      data += "&" + URLEncoder.encode(key, this.charset) + "=" + URLEncoder.encode(value, this.charset);
    } catch (Exception e) {
      throw new CoolsmsSystemException(e.getMessage(), 302);
    }

    return data;
  }

  private String getResourceUrl(String resource) {
    String resourceUrl = String.format("%s/%s/%s/%s", this.URL, this.apiName, this.apiVersion, resource);
    return resourceUrl;
  }

  public String getSignature(String apiSecret, String salt, String timestamp) throws CoolsmsException {
    String signature = "";

    try {
      String temp = timestamp + salt;
      SecretKeySpec keySpec = new SecretKeySpec(apiSecret.getBytes(), "HmacMD5");
      Mac mac = Mac.getInstance("HmacMD5");
      mac.init(keySpec);

      byte[] result = mac.doFinal(temp.getBytes());
      char[] hexArray = "0123456789ABCDEF".toCharArray();
      char[] hexChars = new char[result.length * 2];

      for (int i = 0; i < result.length; i++) {
        int positive = result[i] & 0xff;
        hexChars[i * 2] = hexArray[positive >>> 4];
        hexChars[i * 2 + 1] = hexArray[positive & 0x0F];
      }
      signature = new String(hexChars);
    } catch (Exception e) {
      throw new CoolsmsSystemException(e.getMessage(), 302);
    }

    return signature;
  }

  public String getTimestamp() {
    long timestamp_long = System.currentTimeMillis() / 1000;
    String timestamp = Long.toString(timestamp_long);
    return timestamp;
  }

  public String getHttpsResponse(HttpURLConnection connection) throws CoolsmsException {
    int responseCode = 0;
    String responseBody = null;
    String inputLine = null;
    BufferedReader in = null;
    JSONObject obj = new JSONObject();

    try {
      responseCode = connection.getResponseCode();
      if (responseCode != 200) {
        in = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
      } else {
        in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
      }

      while ((inputLine = in.readLine()) != null) {
        responseBody = inputLine;
      }

      // response code is not 200, throw CoolsmsServerException
      if (responseCode != 200)
        throw new CoolsmsServerException(responseBody, responseCode);
    } catch (Exception e) {
      throw new CoolsmsSystemException(e.getMessage(), 302);
    }

    return responseBody;
  }

 
  public String getSalt() {
    String uniqId = "";
    Random randomGenerator = new Random();

    // length - set the unique Id length
    for (int length = 1; length <= 10; ++length) {
      int randomInt = randomGenerator.nextInt(10); // digit range from 0 - 9
      uniqId += randomInt + "";
    }

    return uniqId;
  }

  public boolean checkString(String str) {
    if (str == null)
      return false;
    str = str.trim();
    if (str == null || str.isEmpty())
      return false;
    return true;
  }
}
