/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.content.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.gome.trend.modules.content.entity.GoPhoto;
import com.gome.trend.modules.content.dao.GoPhotoDao;

/**
 * 图片管理Service
 * @author caoxiaobing
 * @version 2015-05-28
 */
@Service
@Transactional(readOnly = true)
public class GoPhotoService extends CrudService<GoPhotoDao, GoPhoto> {

	public GoPhoto get(String id) {
		return super.get(id);
	}
	
	public List<GoPhoto> findList(GoPhoto goPhoto) {
		return super.findList(goPhoto);
	}
	
	public Page<GoPhoto> findPage(Page<GoPhoto> page, GoPhoto goPhoto) {
		return super.findPage(page, goPhoto);
	}
	
	@Transactional(readOnly = false)
	public void save(GoPhoto goPhoto) {
		super.save(goPhoto);
	}
	
	@Transactional(readOnly = false)
	public void delete(GoPhoto goPhoto) {
		super.delete(goPhoto);
	}
	
}