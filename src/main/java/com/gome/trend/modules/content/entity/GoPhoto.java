/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.content.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 图片管理Entity
 * @author caoxiaobing
 * @version 2015-05-28
 */
public class GoPhoto extends DataEntity<GoPhoto> {
	
	private static final long serialVersionUID = 1L;
	private String photoId;		// 图片id
	private String intro;		// 图片描述
	private String width;		// 图片宽度
	private String height;		// 图片高度
	private String photoPath;		// 图片地址
	private String uid;		// 发布用户id
	private String color;		// 图片颜色值
	private String status;		// 图片状态，1，正常，0异常
	
	public GoPhoto() {
		super();
	}

	public GoPhoto(String id){
		super(id);
	}

	@Length(min=1, max=64, message="图片id长度必须介于 1 和 64 之间")
	public String getPhotoId() {
		return photoId;
	}

	public void setPhotoId(String photoId) {
		this.photoId = photoId;
	}
	
	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}
	
	@Length(min=1, max=6, message="图片宽度长度必须介于 1 和 6 之间")
	public String getWidth() {
		return width;
	}

	public void setWidth(String width) {
		this.width = width;
	}
	
	@Length(min=1, max=6, message="图片高度长度必须介于 1 和 6 之间")
	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}
	
	@Length(min=1, max=255, message="图片地址长度必须介于 1 和 255 之间")
	public String getPhotoPath() {
		return photoPath;
	}

	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}
	
	@Length(min=1, max=64, message="发布用户id长度必须介于 1 和 64 之间")
	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}
	
	@Length(min=1, max=6, message="图片颜色值长度必须介于 1 和 6 之间")
	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
	
	@Length(min=1, max=1, message="图片状态，1，正常，0异常长度必须介于 1 和 1 之间")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}