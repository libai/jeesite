/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
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
	public void save(ApiLike apiLike) {
		super.save(apiLike);
	}
	
	@Transactional(readOnly = false)
	public void delete(ApiLike apiLike) {
		super.delete(apiLike);
	}
	
}