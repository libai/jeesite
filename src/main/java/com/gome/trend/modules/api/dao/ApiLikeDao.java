/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.dao;

import java.util.HashMap;
import java.util.List;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.gome.trend.modules.api.entity.ApiLike;


/**
 * 点赞DAO接口
 * @author caoxiaobing
 * @version 2015-05-28
 */
@MyBatisDao
public interface ApiLikeDao extends CrudDao<ApiLike> {

	public List<ApiLike> findListByPhotoIds(List<String> photoids);

	public List<Long> findCountByPhotoIds(List<String> photoids);
	//public int findIsLiked(String photoid, String uid);

	public int findIsLiked(ApiLike apiLike);

	public int findCountByPhotoId(HashMap<String, String> params);
	

}