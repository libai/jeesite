/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.web;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

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

import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gome.trend.modules.api.entity.ApiComment;
import com.gome.trend.modules.api.entity.ApiLike;
import com.gome.trend.modules.api.entity.ApiPhoto;
import com.gome.trend.modules.api.entity.ApiResponse;
import com.gome.trend.modules.api.entity.ApiCommentResponse;
import com.gome.trend.modules.api.service.ApiCommentService;
import com.gome.trend.modules.api.service.ApiPhotoService;
import com.gome.trend.modules.api.service.GomeInterFaceService;
import com.gome.trend.modules.api.util.Request;
import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;


/**
 * 评论Controller
 * @author caoxiaobing
 * @version 2015-05-28
 */
@Controller
@RequestMapping(value = "comment")
public class ApiCommentController extends BaseController {

	@Autowired
	private ApiCommentService apiCommentService;
	
	@Autowired
	private ApiPhotoService apiPhotoService;
	
	@ModelAttribute
	public ApiComment get(@RequestParam(required=false) String id) {
		ApiComment entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = apiCommentService.get(id);
		}
		if (entity == null){
			entity = new ApiComment();
		}
		return entity;
	}

	@RequestMapping(value = {"getList", ""})
	public String list(@RequestBody String params, HttpServletRequest request, HttpServletResponse response, Model model) {

		ApiResponse<ApiCommentResponse> apiResponse = new ApiResponse<ApiCommentResponse>();
		//请求参数
		HashMap<String, String> paramMap = Request.parseParams(params);
		

		List<ApiComment> commentList = apiCommentService.findListByParams(paramMap);
			
		//格式转化
		List<ApiCommentResponse> ApiCommentResponseList = apiCommentService.getResponseRows(commentList);
		apiResponse.setDataRows(ApiCommentResponseList);
		
		//是否有下一页查询
		String requestLimit = paramMap.get("limit");
		int limit = 10;
		if(requestLimit != null){
			 limit = Integer.parseInt(requestLimit);
		}
		if(commentList.size()>0 && commentList.size() == limit){
			String lastCommentId = commentList.get(commentList.size()-1).getCommentId();
			paramMap.put("startId", lastCommentId);
			
			if(apiCommentService.getHasNext(paramMap)){
				apiResponse.setDataHasNext("Y");
			}
		}

		return renderString(response, apiResponse);
	}


	@RequestMapping(value = "send")
	public String send(@RequestBody String params, ApiComment apiComment, HttpServletRequest request, HttpServletResponse response, Model model) {
		
		ApiResponse<ApiComment> apiResponse = new ApiResponse<ApiComment>();
		
		//请求参数
		HashMap<String, String> paramMap = Request.parseParams(params);
				
		//参数检查
		//图片id
		if(StringUtils.isEmpty(paramMap.get("photoId"))){
			if(StringUtils.isBlank(paramMap.get("replyId"))){
				apiResponse.SetError("E201", "图片不存在");
				return renderString(response, apiResponse);
			}
		}
		apiComment.setPhotoId(paramMap.get("photoId"));
		//评论内容
		if(StringUtils.isBlank(paramMap.get("content"))){
			apiResponse.SetError("E305", "内容不能为空");
			return renderString(response, apiResponse);
		}
		apiComment.setCommentContent(paramMap.get("content"));
		//用户登陆认证
		String uid = GomeInterFaceService.getLoginUser(request, response);
		if(StringUtils.isEmpty(uid)){
			apiResponse.SetError("E001", "用户不存在");
			return renderString(response, apiResponse);
		}
		apiComment.setPostUid(uid);
		//关键词过虑
		
		//保存
		
	
		if (StringUtils.isNotEmpty(paramMap.get("replyId"))){
			ApiComment replyComment = apiCommentService.get(paramMap.get("replyId"));
			if(replyComment!=null){
				apiComment.setReplyCommentId(paramMap.get("replyId"));
				apiComment.setReplyUid(replyComment.getPostUid());
				apiComment.setPhotoId(replyComment.getPhotoId());
			}else{
				apiResponse.SetError("E306", "回复的评论未找到");
				return renderString(response, apiResponse);
			}
			apiComment.setIsReply("Y");
		}else{
			apiComment.setIsReply("N");
		}
	
		int res = apiCommentService.save(apiComment);
		if(res<1){
			apiResponse.SetError("E301", "发布失败");
			return renderString(response, apiResponse);
		}
		
		//修改图片评论计数
		apiPhotoService.updateCount("comment_count", "a", apiComment.getPhotoId());
	
		apiResponse.setSuccessMessage("发布成功");
		return renderString(response, apiResponse);
	}
	@RequestMapping(value = "del")
	public String delete(@RequestBody String params, ApiComment apiComment, HttpServletRequest request, HttpServletResponse response, Model model) {
		
		ApiResponse<ApiComment> apiResponse = new ApiResponse<ApiComment>();
		
		//请求参数
		HashMap<String, String> paramMap = Request.parseParams(params);
					
		//参数检查
		if(StringUtils.isEmpty(paramMap.get("commentId"))){
			apiResponse.SetError("E307", "评论未找到");
			return renderString(response, apiResponse);
		}else{
			apiComment.setCommentId(paramMap.get("commentId"));
		}
	
		//用户登陆认证
		String uid = GomeInterFaceService.getLoginUser(request, response);
		if(StringUtils.isEmpty(uid)){
			apiResponse.SetError("E001", "用户不存在");
			return renderString(response, apiResponse);
		}
		
		ApiComment apiCommentRes =  apiCommentService.get(apiComment);
		if(apiCommentRes == null){
			apiResponse.SetError("E309", "评论未找到或已被删除");
			return renderString(response, apiResponse);
		}
		
		apiComment.setPostUid(uid);
		int res = apiCommentService.delete(apiComment);
		if(res<1){
			apiResponse.SetError("E308", "删除失败");
			return renderString(response, apiResponse);
		}
		//重置图片的评论计数
		int commentCount = apiCommentService.findCountByPhotoId(apiCommentRes);
		String commentCountStr = "0";
		if(commentCount>0){
			commentCountStr = String.valueOf(commentCount);
		}
		apiPhotoService.setCount("comment_count", commentCountStr, apiCommentRes.getPhotoId());
		
		apiResponse.setSuccessMessage("删除成功");
		return renderString(response, apiResponse);
	}

}