package com.gome.trend.modules.api.service;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gome.trend.modules.api.entity.ApiUser;

public class GomeInterFaceService {
	
	
	//国美接口服务获取当前用户id
	public static String getLoginUser(HttpServletRequest request, HttpServletResponse response){
		
		return "123456";
	}
	
	//
	public static HashMap<String, ApiUser> getUserInfo(HashSet<String> uids){
		Iterator<String> it  = uids.iterator();
		String uid = "";
		HashMap<String, ApiUser> retval = new HashMap<String, ApiUser>();
		while (it.hasNext()){
			uid = it.next();
			retval.put(uid, new ApiUser(uid, "测试用户名", "测试头像"));
		}

		return retval;
	}

}
