/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gome.trend.modules.api.dao.ApiCommentDao;
import com.gome.trend.modules.api.entity.ApiComment;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;


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
	
	public Page<ApiComment> findPage(Page<ApiComment> page, ApiComment ApiComment) {
		return super.findPage(page, ApiComment);
	}
	
	@Transactional(readOnly = false)
	public void save(ApiComment ApiComment) {
		super.save(ApiComment);
	}
	
	@Transactional(readOnly = false)
	public void delete(ApiComment ApiComment) {
		super.delete(ApiComment);
	}
	
}