/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 标签Entity
 * @author caoxiaobing
 * @version 2015-05-28
 */
public class ApiTag extends DataEntity<ApiTag> {
	
	private static final long serialVersionUID = 1L;
	private String tagId;		// 标签id
	private String photoId;		// 图片id
	private String tagX;		// 标签x
	private String tagY;		// 标签y轴
	private String tagType;		// 标记类型
	private String tagTitle;		// 标签文本内容
	private String skuid;		// 国美商品sku
	private String productid;		// 国美商品productId
	private String status;		// 标签状态
	
	public ApiTag() {
		super();
	}

	public ApiTag(String id){
		super(id);
	}

	@Length(min=1, max=64, message="标签id长度必须介于 1 和 64 之间")
	public String getTagId() {
		return tagId;
	}

	public void setTagId(String tagId) {
		this.tagId = tagId;
	}
	
	@Length(min=1, max=64, message="图片id长度必须介于 1 和 64 之间")
	public String getPhotoId() {
		return photoId;
	}

	public void setPhotoId(String photoId) {
		this.photoId = photoId;
	}
	
	@Length(min=1, max=1, message="标签x长度必须介于 1 和 1 之间")
	public String getTagX() {
		return tagX;
	}

	public void setTagX(String tagX) {
		this.tagX = tagX;
	}
	
	@Length(min=1, max=1, message="标签y轴长度必须介于 1 和 1 之间")
	public String getTagY() {
		return tagY;
	}

	public void setTagY(String tagY) {
		this.tagY = tagY;
	}
	
	public String getTagType() {
		return tagType;
	}

	public void setTagType(String tagType) {
		this.tagType = tagType;
	}
	
	@Length(min=1, max=50, message="标签文本内容长度必须介于 1 和 50 之间")
	public String getTagTitle() {
		return tagTitle;
	}

	public void setTagTitle(String tagTitle) {
		this.tagTitle = tagTitle;
	}
	
	@Length(min=1, max=64, message="国美商品sku长度必须介于 1 和 64 之间")
	public String getSkuid() {
		return skuid;
	}

	public void setSkuid(String skuid) {
		this.skuid = skuid;
	}
	
	@Length(min=1, max=64, message="国美商品productId长度必须介于 1 和 64 之间")
	public String getProductid() {
		return productid;
	}

	public void setProductid(String productid) {
		this.productid = productid;
	}
	
	@Length(min=1, max=1, message="标签状态长度必须介于 1 和 1 之间")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}