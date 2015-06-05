/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gome.trend.modules.api.dao.ApiTagDao;
import com.gome.trend.modules.api.entity.ApiTag;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;


/**
 * 标签Service
 * @author caoxiaobing
 * @version 2015-05-28
 */
@Service
@Transactional(readOnly = true)
public class ApiTagService extends CrudService<ApiTagDao, ApiTag> {

	public ApiTag get(String id) {
		return super.get(id);
	}
	
	public List<ApiTag> findList(ApiTag apiTag) {
		return super.findList(apiTag);
	}
	
	public Page<ApiTag> findPage(Page<ApiTag> page, ApiTag apiTag) {
		return super.findPage(page, apiTag);
	}
	
	@Transactional(readOnly = false)
	public void save(ApiTag apiTag) {
		super.save(apiTag);
	}
	
	@Transactional(readOnly = false)
	public void delete(ApiTag apiTag) {
		super.delete(apiTag);
	}

	public List<ApiTag> findListByPhotoIds(String[] photoids) {
		return dao.findListByPhotoIds(photoids);
	}

}