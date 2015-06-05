package com.gome.trend.modules.api.util;

import java.io.IOException;
import java.util.HashMap;

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.thinkgem.jeesite.common.utils.StringUtils;

public class Request{
	
	public static HashMap<String,String> parseParams(String params){
		
		ObjectMapper objectMapper = new ObjectMapper();
		HashMap<String, String> paramMap = new HashMap<String, String>();
		try {
			if(StringUtils.isNoneEmpty(params)){
				paramMap =objectMapper.readValue(params, HashMap.class);
			}
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return paramMap;
	}


}