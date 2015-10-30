package vz;

import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class Content implements Serializable {

public List<String> registration_ids;
public Map<String,String> data;

public void addRegId(String regId){
    if(registration_ids == null)
        registration_ids = new LinkedList<String>();
    registration_ids.add(regId);
}

public void createData(String title, String message){
    if(data == null)
        data = new HashMap<String,String>();
    
    data.put("customerName", "sebastinnaveen");
    data.put("customerLocation", "Tambaram,chennai");
    data.put("customerNumber", "9840384885");
    data.put("msgTech", "Fios Dispatch Request - 11011");
}

}