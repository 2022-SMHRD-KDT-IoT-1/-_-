package Messaging;
import static org.junit.Assert.*;

import java.io.Reader;
import java.util.HashMap;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.JSONValue;
import org.junit.Test;

import API.Message;
import java_sdk.exceptions.CoolsmsException;

public class MessageSend {
  String api_key = "NCSJPOBXC4JAGLJY";
  String api_secret = "9KNDWSKZCV30LKB52Q2YAOE2AXBLQ3BF";

  Message message = new Message(api_key, api_secret);
  JSONObject result;
  JSONArray result_array;
  HashMap<String, String> params = new HashMap<String, String>();

  @Test
  public void MessageTest() {
    try {
      // send					
      params.put("to", "01082651707");
      params.put("from", "01082651707");
      params.put("type", "SMS");
      params.put("text", "sos test");
      params.put("mode", "test");
      result = message.send(params);
      assertNotNull(result.get("group_id"));

      // balance
      result = message.balance();
      assertNotNull(result.get("cash"));

      // sent
      params.clear();
      try {
        result = message.sent(params);
        assertNotNull(result.get("data"));
      } catch (Exception e) {
        result = (JSONObject) JSONValue.parse(e.getMessage());
        assertEquals(result.get("code"), "NoSuchMessage");
      }

      // status
      result = message.getStatus(params);
      assertNotNull(result.get("data"));

      // cancel
      params.put("mid", "MIDTEST");
      result = message.cancel(params);
      assertTrue(!result.isEmpty());
    } catch (Exception e) {
      fail(e.toString());
    }
  }

  
  }


