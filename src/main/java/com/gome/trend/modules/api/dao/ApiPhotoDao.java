/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.gome.trend.modules.api.entity.ApiPhoto;

/**
 * 接口DAO接口
 * @author caoxiaobing
 * @version 2015-05-28
 */
@MyBatisDao
public interface ApiPhotoDao extends CrudDao<ApiPhoto> {
	public int updateCount(HashMap<String, String> params);
	public int setCount(HashMap<String, String> params);
	public List<ApiPhoto> findListByParams(HashMap<String, String> paramMap);
	public List<ApiPhoto> findListBySql(String photoids);
}