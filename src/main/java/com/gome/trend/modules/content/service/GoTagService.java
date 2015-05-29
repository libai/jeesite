/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.content.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.gome.trend.modules.content.entity.GoTag;
import com.gome.trend.modules.content.dao.GoTagDao;

/**
 * 标签Service
 * @author 标签
 * @version 2015-05-29
 */
@Service
@Transactional(readOnly = true)
public class GoTagService extends CrudService<GoTagDao, GoTag> {

	public GoTag get(String id) {
		return super.get(id);
	}
	
	public List<GoTag> findList(GoTag goTag) {
		return super.findList(goTag);
	}
	
	public Page<GoTag> findPage(Page<GoTag> page, GoTag goTag) {
		return super.findPage(page, goTag);
	}
	
	@Transactional(readOnly = false)
	public void save(GoTag goTag) {
		super.save(goTag);
	}
	
	@Transactional(readOnly = false)
	public void delete(GoTag goTag) {
		super.delete(goTag);
	}
	
}