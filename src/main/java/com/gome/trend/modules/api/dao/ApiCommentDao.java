/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.dao;

import com.gome.trend.modules.api.entity.ApiComment;
import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;

/**
 * 评论DAO接口
 * @author caoxiaobing
 * @version 2015-05-28
 */
@MyBatisDao
public interface ApiCommentDao extends CrudDao<ApiComment> {
	
}