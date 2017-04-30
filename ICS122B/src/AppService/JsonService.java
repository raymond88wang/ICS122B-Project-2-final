package AppService;

import java.lang.reflect.Type;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class JsonService{
	
	public static String ToJson(Object o){
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		return gson.toJson(o);
	}
	
	public static Object GetJsonFromObject(String o, Type t){
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		return gson.fromJson(o, t);
	}
	
}
