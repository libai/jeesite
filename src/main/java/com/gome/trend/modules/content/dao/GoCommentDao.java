/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.content.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.gome.trend.modules.content.entity.GoComment;

/**
 * 评论DAO接口
 * @author 评论
 * @version 2015-05-29
 */
@MyBatisDao
public interface GoCommentDao extends CrudDao<GoComment> {
	
}