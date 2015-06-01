/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gome.trend.modules.api.entity.ApiPhoto;
import com.gome.trend.modules.api.entity.ApiPhotoResponse;
import com.gome.trend.modules.api.service.ApiPhotoService;
import com.gome.trend.modules.content.entity.GoPhoto;


/**
 * 接口Controller
 * @author caoxiaobing
 * @version 2015-05-28
 */
@Controller
@RequestMapping(value = "/photo")
public class ApiPhotoController extends BaseController {

	@Autowired
	private ApiPhotoService apiPhotoService;
	
	@RequestMapping(value = {"list", ""})
	public String list(@RequestBody String params, ApiPhoto apiPhoto, HttpServletRequest request, HttpServletResponse response, Model model) {
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		try {
			if(!"".equals(params)){
				apiPhoto = objectMapper.readValue(params, ApiPhoto.class);
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
		
		
		List<ApiPhoto> photoList = apiPhotoService.findList(apiPhoto);
		
	
		List<ApiPhotoResponse> apiPhotoResponse =  apiPhotoService.getResponseRows(photoList);
		
		//model.addAttribute("photoList", photoList);
	
		System.out.println(apiPhotoResponse);
		return renderString(response, apiPhotoResponse);
	}

	@RequestMapping(value = {"like", ""})
	public String like(@RequestBody String params,ApiPhoto apiPhoto, HttpServletRequest request, HttpServletResponse response, Model model) throws JsonParseException, JsonMappingException, IOException {

		ObjectMapper objectMapper = new ObjectMapper();
		ApiPhoto apiParams = objectMapper.readValue(params, ApiPhoto.class);
		//用户登陆认证
		
		
		
		//是否已赞
		
		
		
	
		
		
		return renderString(response, "{}");
	}
	
	

}