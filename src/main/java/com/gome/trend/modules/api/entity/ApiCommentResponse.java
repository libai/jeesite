package com.gome.trend.modules.api.entity;

import com.gome.trend.modules.api.util.DateUtils;

public class ApiCommentResponse {
	
	public String commentId;		// 评论
	public String content;		// 内容
	public String photoId;		// 图片id
	public String isReply = "N";// 内容
	public String replyId;      // 回复id
	public String postUid;      // 发布者id
	public ApiUser postUser;    // 发布者
	public String timeCreate;   // 发布时间
	public String replyUid;    // 回复用户id
	public ApiUser replyUser;   // 回复用户
	
	
	public String getCommentId() {
		return commentId;
	}
	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}
	public String getPhotoId() {
		return photoId;
	}
	public void setPhotoId(String photoId) {
		this.photoId = photoId;
	}
	public String getIsReply() {
		return isReply;
	}
	public void setIsReply(String isReply) {
		this.isReply = isReply;
	}
	public String getReplyId() {
		return replyId;
	}
	public void setReplyId(String replyId) {
		this.replyId = replyId;
	}
	public String getPostUid() {
		return postUid;
	}
	public void setPostUid(String postUid) {
		this.postUid = postUid;
	}
	public ApiUser getPostUser() {
		return postUser;
	}
	public void setPostUser(ApiUser postUser) {
		this.postUser = postUser;
	}
	public String getTimeCreate() {
		return timeCreate;
	}
	public void setTimeCreate(String timeCreate) {
		this.timeCreate = timeCreate;
	}
	public String getReplyUid() {
		return replyUid;
	}
	public void setReplyUid(String replyUid) {
		this.replyUid = replyUid;
	}
	public ApiUser getReplyUser() {
		return replyUser;
	}
	public void setReplyUser(ApiUser replyUser) {
		this.replyUser = replyUser;
	}
	
	public void setBaseData(ApiComment apiComment) {
		this.commentId = apiComment.getCommentId();
		this.content = apiComment.getCommentContent();
		this.photoId = apiComment.getPhotoId();
		this.isReply = apiComment.getIsReply();
		this.replyId = apiComment.getReplyCommentId();
		this.postUid = apiComment.getPostUid();
		this.replyUid = apiComment.getReplyUid();
		this.timeCreate = DateUtils.friendly_time(apiComment.getCreateDate());
		//System.out.println(this.photoId );
		//return this;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
}
