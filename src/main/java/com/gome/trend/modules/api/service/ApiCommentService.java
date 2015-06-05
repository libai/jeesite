/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gome.trend.modules.api.dao.ApiCommentDao;
import com.gome.trend.modules.api.dao.ApiLikeDao;
import com.gome.trend.modules.api.dao.ApiPhotoDao;
import com.gome.trend.modules.api.entity.ApiComment;
import com.gome.trend.modules.api.entity.ApiCommentResponse;
import com.gome.trend.modules.api.entity.ApiUser;
import com.thinkgem.jeesite.common.persistence.Page;



/**
 * 评论Service
 * @author caoxiaobing
 * @version 2015-05-28
 */
@Service
@Transactional(readOnly = true)
public class ApiCommentService extends CrudService<ApiCommentDao, ApiComment> {
	
	public ApiComment get(String id) {
		return super.get(id);
	}
	
	public List<ApiComment> findList(ApiComment ApiComment) {
		return super.findList(ApiComment);
	}
	
	public int findCountByPhotoId(ApiComment apiComment){
		return dao.findCountByPhotoId(apiComment);
	}
	public Page<ApiComment> findPage(Page<ApiComment> page, ApiComment ApiComment) {
		return super.findPage(page, ApiComment);
	}
	
	@Transactional(readOnly = false)
	public int save(ApiComment apiComment) {
		int res = 0;
		try {
			res =  super.save(apiComment);
		} catch (SQLException e) {
			res = 0;
			e.printStackTrace();
		}
		return res;
	}
	
	@Transactional(readOnly = false)
	public int delete(ApiComment apiComment) {
		apiComment.setUpdateDate(new Date());
		int res = 0;
		try {
			res =   super.delete(apiComment);
		} catch (SQLException e) {
			res = 0;
			e.printStackTrace();
		}
		return res;
	}
	
	public List<ApiCommentResponse> getResponseRows(List<ApiComment> apiComments){
		
		List<ApiCommentResponse> apiCommentResponseList = new ArrayList<ApiCommentResponse>();
		
		HashSet<String> uids = new HashSet<String>();
		
		Iterator<ApiComment> iter = apiComments.iterator();
		ApiComment apiComment;
		while(iter.hasNext()){
			apiComment = iter.next();
			uids.add(apiComment.getPostUid());
			String replyUid = apiComment.getReplyUid();
			if(!"0".equals(replyUid) && !"".equals(replyUid) && replyUid!=null){
				uids.add(replyUid);
			}
		}
		//批量用户处理
		HashMap<String, ApiUser> userinfos = GomeInterFaceService.getUserInfo(uids);

		//userinfos.get(key);
		Iterator<ApiComment> it = apiComments.iterator();
		
		while(it.hasNext()){
			apiComment = it.next();
			ApiCommentResponse apiCommentResponse = new ApiCommentResponse();
			apiCommentResponse.setBaseData(apiComment);
			apiCommentResponse.setPostUser(userinfos.get(apiComment.getPostUid()));
	
			String replyUid = apiComment.getReplyUid();
			if(!"0".equals(replyUid) && !"".equals(replyUid) && replyUid!=null){
				apiCommentResponse.setReplyUid(null);
				apiCommentResponse.setReplyUser(userinfos.get(replyUid));
			}
			
			apiCommentResponseList.add(apiCommentResponse);
		}
		return apiCommentResponseList;
	}
	
	public boolean getHasNext(HashMap<String, String> paramMap){
		ApiComment next	= dao.getNext(paramMap);
		if(next != null && !"".equals(next.getCommentId()) && !"0".equals(next.getCommentId())){
			return true;
		}else{
			return false;
		}
	}

	public List<ApiComment> findListByParams(HashMap<String, String> paramMap) {
		return dao.findListByParams(paramMap);
	}
	
	@Transactional(readOnly = false)
	public List<ApiComment> findListByProcedure(List<String> photoids){
		HashMap<String, String> paramMap = new 	HashMap<String, String>();
		paramMap.put("photoids", "12,1");
		paramMap.put("limit", "10");
		System.out.println(paramMap);
		return dao.findListByProcedure(paramMap);
	}
	@Transactional(readOnly = false)
	public List<ApiComment> findTest(){
		//dao.
		//dao.insert("test.testProc", paramMap); 
		return dao.findTest();
	}
	
	@Transactional(readOnly = false)
	public void proHello(){
		HashMap<String, String> param = new HashMap<String, String>();  
        param.put("p_user_name", "zhangsan");  
        String returnValue = (String) dao.proHello(param);
        System.out.println("message=" + param.get("p_user_name"));  
        System.out.println("result=" + param.get("result"));  
        System.out.println("returnValue=" + returnValue);  
	}
	

}