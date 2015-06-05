/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.gome.trend.modules.api.entity.ApiComment;
import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.cms.entity.Article;

/**
 * 评论DAO接口
 * @author caoxiaobing
 * @version 2015-05-28
 */
@MyBatisDao
public interface ApiCommentDao extends CrudDao<ApiComment> {

	public List<ApiComment> findListByPhotoIds(List<String> ids);
	
	public List<ApiComment> findByIdIn(String[] ids);
	
	public int findCountByPhotoId(ApiComment apiComment);

	public ApiComment getNext(HashMap<String, String> paramMap);

	public List<ApiComment> findListByParams(HashMap<String, String> paramMap);
	

	public List<ApiComment> findListByProcedure(HashMap<String, String> paramMap);
	public String proHello(HashMap<String, String> paramMap);

	public List<ApiComment> findTest();
	
	
}