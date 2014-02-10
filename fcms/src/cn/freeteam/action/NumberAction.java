package cn.freeteam.action;

import java.util.HashMap;
import java.util.Map;

public class NumberAction {
	private Map mapValues=new HashMap();
	
public String  add(){
	mapValues.put("key1", "1");
	mapValues.put("key2", "2");
	return "add";
}

public Map getMapValues() {
	return mapValues;
}

public void setMapValues(Map mapValues) {
	this.mapValues = mapValues;
}

}
