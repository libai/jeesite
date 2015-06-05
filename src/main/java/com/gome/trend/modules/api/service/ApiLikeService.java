/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.service;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.gome.trend.modules.api.entity.ApiLike;
import com.gome.trend.modules.api.dao.ApiLikeDao;

/**
 * 点赞Service
 * @author caoxiaobing
 * @version 2015-05-28
 */
@Service
@Transactional(readOnly = true)
public class ApiLikeService extends CrudService<ApiLikeDao, ApiLike> {

	public ApiLike get(String id) {
		return super.get(id);
	}
	
	public List<ApiLike> findList(ApiLike apiLike) {
		return super.findList(apiLike);
	}
	
	public Page<ApiLike> findPage(Page<ApiLike> page, ApiLike apiLike) {
		return super.findPage(page, apiLike);
	}
	
	@Transactional(readOnly = false)
	public int save(ApiLike apiLike) {
		int res = 0;
		try {
			res = super.save(apiLike);
		} catch (SQLException e) {
			res = 0;
			e.printStackTrace();
		}
		return res;
	}
	
	@Transactional(readOnly = false)
	public int delete(ApiLike apiLike) {
		int res = 0;
		try {
			res = super.delete(apiLike);
		} catch (SQLException e) {
			res = 0;
			e.printStackTrace();
		}
		return res;
	}
	
	public boolean isLiked(ApiLike apiLike){
		//dao.findLike
		int likenum = dao.findIsLiked(apiLike);
		if(likenum>0)
		return true;
		else return false;
	}

	public int findCountByPhotoId(String photoId) {
		HashMap<String, String> params = new HashMap<String, String>();
		params.put("photoId",  photoId);
		return dao.findCountByPhotoId(params);
	}

}