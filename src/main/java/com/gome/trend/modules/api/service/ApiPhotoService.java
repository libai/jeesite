/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.gome.trend.modules.api.entity.ApiComment;
import com.gome.trend.modules.api.entity.ApiLike;
import com.gome.trend.modules.api.entity.ApiPhoto;
import com.gome.trend.modules.api.entity.ApiPhotoResponse;
import com.gome.trend.modules.api.entity.ApiTag;
import com.gome.trend.modules.api.dao.ApiCommentDao;
import com.gome.trend.modules.api.dao.ApiLikeDao;
import com.gome.trend.modules.api.dao.ApiPhotoDao;
import com.gome.trend.modules.api.dao.ApiTagDao;

/**
 * 接口Service
 * @author caoxiaobing
 * @version 2015-05-28
 */
@Service
@Transactional(readOnly = true)
public class ApiPhotoService extends CrudService<ApiPhotoDao, ApiPhoto> {
	
	@Autowired
	private ApiTagService apiTagService;
	
	@Autowired
	private ApiCommentDao apiCommentDao;
	
	@Autowired
	private ApiCommentService apiCommentService;
	
	@Autowired
	private ApiLikeDao apiLikeDao;
	
	@Autowired
	private ApiTagDao apiTagDao;
	
	

	public ApiPhoto get(String id) {
		return super.get(id);
	}
	
	public List<ApiPhoto> findList(ApiPhoto apiPhoto) {
		return super.findList(apiPhoto);
	}
	
	public Page<ApiPhoto> findPage(Page<ApiPhoto> page, ApiPhoto apiPhoto) {
		return super.findPage(page, apiPhoto);
	}
	
	public List<ApiPhotoResponse> getResponseRows(List<ApiPhoto> apiphotos){
		
		List<ApiPhotoResponse> apiPhotoResponseList = new ArrayList<ApiPhotoResponse>();
	
		List<String> photoids = new ArrayList<String>();
		HashSet<String> uids = new HashSet<String>();
		HashMap<String, Integer> photoIdIndex = new HashMap<String, Integer>(); 
	
		
		Iterator<ApiPhoto> iter = apiphotos.iterator();
		ApiPhoto apiphoto;
		while(iter.hasNext()){
			apiphoto =  iter.next();
			String photoid = apiphoto.getPhotoId();
			photoids.add(photoid);
			uids.add(apiphoto.getUid());
		}
		
		List<ApiComment> apiCommentList = apiCommentService.findTest();
		
		
		//取评论
		//List<ApiComment> apiCommentList = apiCommentService.findListByProcedure(photoids);
		Iterator<ApiComment> it = apiCommentList.iterator();
		ApiComment apiComment;
		while(it.hasNext()){
			apiComment =  it.next();
			uids.add(apiComment.getPostUid());
			String replyUid = apiComment.getReplyUid();
			if(!"0".equals(replyUid) && !"".equals(replyUid) && replyUid!=null){
				uids.add(replyUid);
			}
		}
		
		//取点赞
		List<ApiLike> apiLikeList = apiLikeDao.findListByPhotoIds(photoids);
		Iterator<ApiLike> itlike = apiLikeList.iterator();
		while(itlike.hasNext()){
			uids.add(itlike.next().getUid());
		}
		
		//取标签
		List<ApiTag> apiTags =  apiTagDao.findListByPhotoIds(photoids);

		HashMap<String , List<ApiComment>> map = new HashMap<String , List<ApiComment>>(); 
		
		String photo_id;
		ApiComment comment;
		/*
		//评论遍历处理
		for(int i=0;i< apiComment.size();i++){
			
			comment = apiComment.get(i);
			photo_id = comment.getPhotoId();
			//System.out.println(photo_id);
			apiphotos.get(photoIdIndex.get(photo_id)).getComments().add(comment);
			//
			//System.out.println(apiphotos);
			uids.add(comment.getPostUid());//uid集合添加
		}
		/*
		for(int i=0;i< apiCommentCount.size();i++){
			
			
		}*/
		
		//点赞
		
		
		
		return apiPhotoResponseList;
	}
	
	@Transactional(readOnly = false)
	public int updateCount(String field, String inc, String photoId){
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("field", field);
		params.put("inc",   inc);
		params.put("photoId",  photoId);
		return dao.updateCount(params);
	}
	
	@Transactional(readOnly = false)
	public int setCount(String field, String count, String photoId){
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("field", field);
		params.put("value",   count);
		params.put("photoId",  photoId);
		return dao.setCount(params);
	}

	public List<ApiPhoto> findListByParams(HashMap<String, String> paramMap) {
		return dao.findListByParams(paramMap);
	}
	
}