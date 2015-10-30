package vz;

import java.io.Serializable;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

public class Content implements Serializable {

	
	public List<String> registrationIds;
	public HashMap<String, String> mapData;
	
	public  void addRegId(String regId)
	{
		registrationIds = new LinkedList<String>();
		
		registrationIds.add(regId);
		
	}
	
	public void createData(String key,String values)
	{
		if(mapData==null)
			mapData= new HashMap<String, String>();
		
		mapData.put(key, values);
	}
		
}


