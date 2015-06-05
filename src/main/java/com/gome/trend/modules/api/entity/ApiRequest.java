package com.gome.trend.modules.api.entity;

import java.io.IOException;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class ApiRequest<T> {
	 private Class<T> clazz = null;
	 
	 public ApiRequest(Class<T> clazzz)  
	 {  
	        this.clazz = clazzz;  
	 }

}
