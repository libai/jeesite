package com.gome.trend.modules.api.entity;

import java.util.List;

import com.gome.trend.modules.api.util.DateUtils;

public class ApiPhotoResponse {
	
	public String tagCount;
	public List<ApiTag> tags;
	
	
	public String likeCount;
	public List<ApiUser> likeUser;

	public ApiUser postUser;
	
	public String photoId;		// 图片id
	public String intro;		// 图片描述
	public String width;		// 图片宽度
	public String height;		// 图片高度
	public String photoUrl;		// 图片地址

	public String color;		// 图片颜色值
	
	public String timeCreate;		// 图片颜色值
	
	public String commentCount;	// 评论数
	public String comments;		// 评论
	public void setBaseData(ApiPhoto apiPhoto) {
		this.photoId = apiPhoto.getPhotoId();
		
		this.color = apiPhoto.getColor();
		this.intro = apiPhoto.getIntro();
		this.width = apiPhoto.getWidth();
		this.height = apiPhoto.getHeight();
		this.timeCreate = DateUtils.friendly_time(apiPhoto.getCreateDate());
		//System.out.println(this.photoId );
	
		//return this;
	}
	public void setPostUser(String uid, String uname, String avater){
		this.postUser = new ApiUser(uid, uname, avater);
	}

}
