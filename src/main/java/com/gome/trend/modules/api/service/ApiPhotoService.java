/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.gome.trend.modules.api.entity.ApiPhoto;
import com.gome.trend.modules.api.dao.ApiPhotoDao;

/**
 * 接口Service
 * @author caoxiaobing
 * @version 2015-05-28
 */
@Service
@Transactional(readOnly = true)
public class ApiPhotoService extends CrudService<ApiPhotoDao, ApiPhoto> {

	public ApiPhoto get(String id) {
		return super.get(id);
	}
	
	public List<ApiPhoto> findList(ApiPhoto apiPhoto) {
		return super.findList(apiPhoto);
	}
	
	public Page<ApiPhoto> findPage(Page<ApiPhoto> page, ApiPhoto apiPhoto) {
		return super.findPage(page, apiPhoto);
	}
	
}