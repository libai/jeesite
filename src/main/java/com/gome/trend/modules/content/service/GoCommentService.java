/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.content.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.gome.trend.modules.content.entity.GoComment;
import com.gome.trend.modules.content.dao.GoCommentDao;

/**
 * 评论Service
 * @author 评论
 * @version 2015-05-29
 */
@Service
@Transactional(readOnly = true)
public class GoCommentService extends CrudService<GoCommentDao, GoComment> {

	public GoComment get(String id) {
		return super.get(id);
	}
	
	public List<GoComment> findList(GoComment goComment) {
		return super.findList(goComment);
	}
	
	public Page<GoComment> findPage(Page<GoComment> page, GoComment goComment) {
		return super.findPage(page, goComment);
	}
	
	@Transactional(readOnly = false)
	public void save(GoComment goComment) {
		super.save(goComment);
	}
	
	@Transactional(readOnly = false)
	public void delete(GoComment goComment) {
		super.delete(goComment);
	}
	
}