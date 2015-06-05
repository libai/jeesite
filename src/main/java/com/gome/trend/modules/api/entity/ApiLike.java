/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.entity;

import org.hibernate.validator.constraints.Length;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import javax.validation.constraints.NotNull;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 点赞Entity
 * @author caoxiaobing
 * @version 2015-05-28
 */
public class ApiLike extends DataEntity<ApiLike> {
	
	private static final long serialVersionUID = 1L;
	private String photoId;		// 图片id
	private String uid;		// 用户id

	
	public ApiLike() {
		super();
	}

	public ApiLike(String id){
		super(id);
	}

	@Length(min=1, max=64, message="图片id长度必须介于 1 和 64 之间")
	public String getPhotoId() {
		return photoId;
	}

	public void setPhotoId(String photoId) {
		this.photoId = photoId;
	}
	
	@Length(min=1, max=64, message="用户id长度必须介于 1 和 64 之间")
	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}
	
	
}