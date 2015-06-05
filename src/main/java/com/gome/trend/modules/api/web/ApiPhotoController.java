/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.web;

import java.io.IOException;
import java.util.Date;
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
import com.gome.trend.modules.api.entity.ApiLike;
import com.gome.trend.modules.api.entity.ApiPhoto;
import com.gome.trend.modules.api.entity.ApiPhotoResponse;
import com.gome.trend.modules.api.entity.ApiResponse;
import com.gome.trend.modules.api.entity.ApiTag;
import com.gome.trend.modules.api.service.ApiLikeService;
import com.gome.trend.modules.api.service.ApiPhotoService;
import com.gome.trend.modules.api.service.ApiTagService;
import com.gome.trend.modules.api.service.GomeInterFaceService;
import com.gome.trend.modules.api.util.Request;
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
	@Autowired
	private ApiTagService apiTagService;
	@Autowired
	private ApiLikeService apiLikeService;
	
	@RequestMapping(value = {"getList", ""})
	public String list(@RequestBody String params, HttpServletRequest request, HttpServletResponse response, Model model) {

		ApiResponse<ApiPhotoResponse> apiResponse = new ApiResponse<ApiPhotoResponse>();
		//请求参数
		HashMap<String, String> paramMap = Request.parseParams(params);
	
		List<ApiPhoto> photoList = apiPhotoService.findListByParams(paramMap);

		List<ApiPhotoResponse> apiPhotos =  apiPhotoService.getResponseRows(photoList);
		
		apiResponse.setDataRows(apiPhotos);
		
		return renderString(response, "{}");
	}

	@RequestMapping(value = {"like", ""})
	public String like(@RequestBody String params,ApiPhoto apiPhoto, HttpServletRequest request, HttpServletResponse response, Model model) throws JsonParseException, JsonMappingException, IOException {
	
		ApiResponse<ApiLike> apiResponse = new ApiResponse<ApiLike>();
		
		//请求参数
		HashMap<String, String> paramMap = Request.parseParams(params);
		
		ApiLike apiLike = new ApiLike();
		//用户登陆认证
		String uid = GomeInterFaceService.getLoginUser(request, response);
		if("".equals(uid) || uid == null){
			apiResponse.SetError("E001", "用户不存在");
			return renderString(response, apiResponse);
		}
		apiLike.setUid(uid);
		//图片id
		if(StringUtils.isEmpty(paramMap.get("photoId"))){
			apiResponse.SetError("E201", "图片不存在");
			return renderString(response, apiResponse);
		}
		apiLike.setPhotoId(paramMap.get("photoId"));
		//是否已赞
		if(apiLikeService.isLiked(apiLike)){
			apiResponse.SetError("E202", "用户已赞过");
			return renderString(response, apiResponse);
		}
		apiLike.setCreateDate(new Date());
		int res = apiLikeService.save(apiLike);
		if(res<1){
			apiResponse.SetError("E203", "点赞失败");
			return renderString(response, apiResponse);
		}
		
		apiPhotoService.updateCount("like_count", "a", apiLike.getPhotoId());
		apiResponse.setSuccessMessage("点赞成功");
		
		return renderString(response, apiResponse);
	}
	
	@RequestMapping(value = {"unlike", ""})
	public String unlike(@RequestBody String params, ApiPhoto apiPhoto, HttpServletRequest request, HttpServletResponse response, Model model) throws JsonParseException, JsonMappingException, IOException {
		
		ApiResponse<ApiLike> apiResponse = new ApiResponse<ApiLike>();
		//请求参数
		HashMap<String, String> paramMap = Request.parseParams(params);
		
		ApiLike apiLike = new ApiLike();

		//用户登陆认证
		String uid = GomeInterFaceService.getLoginUser(request, response);
		if(StringUtils.isEmpty(uid)){
			apiResponse.SetError("E001", "用户不存在");
			return renderString(response, apiResponse);
		}
		apiLike.setUid(uid);
		
		//图片id
		if(StringUtils.isEmpty(paramMap.get("photoId"))){
			apiResponse.SetError("E201", "图片不存在");
			return renderString(response, apiResponse);
		}
		apiLike.setPhotoId(paramMap.get("photoId"));

		//是否已赞
		if(!apiLikeService.isLiked(apiLike)){
			apiResponse.SetError("E202", "用户未赞过");
			return renderString(response, apiResponse);
		}
		int res = apiLikeService.delete(apiLike);
		if(res<1){
			apiResponse.SetError("E204", "取赞失败");
			return renderString(response, apiResponse);
		}
		//重置点赞数
		int likeCount = apiLikeService.findCountByPhotoId(paramMap.get("photoId"));
		String likeCountStr = "0";
		if(likeCount > 0){
			likeCountStr = String.valueOf(likeCount);
		}
		System.out.println(likeCountStr);
		apiPhotoService.setCount("like_count", likeCountStr, paramMap.get("photoId"));
		apiResponse.setSuccessMessage("取赞成功");
		
		return renderString(response, apiResponse);
	}


	
	

}