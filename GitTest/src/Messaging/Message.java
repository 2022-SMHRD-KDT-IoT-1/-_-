package Messaging;

import java.util.HashMap;

import org.json.simple.JSONObject;

import java_sdk.Coolsms;
import java_sdk.exceptions.CoolsmsException;
import java_sdk.exceptions.CoolsmsSDKException;

public class Message extends Coolsms {
 
  public Message(String apiKey, String apiSecret) {
    super(apiKey, apiSecret);
  }


  public JSONObject send(HashMap<String, String> params) throws CoolsmsException {
    return sendPostRequest("send", params);
  }

  public JSONObject sent(HashMap<String, String> params) throws CoolsmsException {
    return sendGetRequest("sent", params);
  }

 
  public JSONObject cancel(HashMap<String, String> params) throws CoolsmsException {
    if (!checkString(params.get("message_id")) && !checkString(params.get("group_id")))
      throw new CoolsmsSDKException("message_id or group_id either one must be entered", 202);

    return sendPostRequest("cancel", params);
  }

  public JSONObject balance() throws CoolsmsException {

	  HashMap<String, String> params = new HashMap<String, String>();
    return sendGetRequest("balance", params);
  }

  public JSONObject getStatus(HashMap<String, String> params) throws CoolsmsException {
    return sendGetRequest("status", params);
  }
}
