/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.gome.trend.modules.api.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 评论Entity
 * @author caoxiaobing
 * @version 2015-05-28
 */
public class ApiComment extends DataEntity<ApiComment> {
	
	private static final long serialVersionUID = 1L;
	private String commentId;		// comment_id
	private String commentContent;		// 评论内容
	private String status;		// 状态
	private String isReply;		// 是否回复
	private String replyCommentId;		// 回复评论的id
	private String replyUid;		// 回复的用户id
	private String postUid;		// 发布用户
	private String photoId;		// 图片id
	private String delBy;		// 删除用户

	
	public ApiComment() {
		super();
	}

	public ApiComment(String id){
		super(id);
	}

	@Length(min=1, max=64, message="comment_id长度必须介于 1 和 64 之间")
	public String getCommentId() {
		return commentId;
	}

	public void setCommentId(String commentId) {
		this.commentId = commentId;
	}
	
	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	
	@Length(min=1, max=1, message="状态长度必须介于 1 和 1 之间")
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	@Length(min=1, max=1, message="是否回复长度必须介于 1 和 1 之间")
	public String getIsReply() {
		return isReply;
	}

	public void setIsReply(String isReply) {
		this.isReply = isReply;
	}
	
	@Length(min=1, max=11, message="回复评论的id长度必须介于 1 和 11 之间")
	public String getReplyCommentId() {
		return replyCommentId;
	}

	public void setReplyCommentId(String replyCommentId) {
		this.replyCommentId = replyCommentId;
	}
	
	@Length(min=1, max=11, message="回复的用户id长度必须介于 1 和 11 之间")
	public String getReplyUid() {
		return replyUid;
	}

	public void setReplyUid(String replyUid) {
		this.replyUid = replyUid;
	}
	
	@Length(min=1, max=64, message="发布用户长度必须介于 1 和 64 之间")
	public String getPostUid() {
		return postUid;
	}

	public void setPostUid(String postUid) {
		this.postUid = postUid;
	}
	
	@Length(min=1, max=64, message="图片id长度必须介于 1 和 64 之间")
	public String getPhotoId() {
		return photoId;
	}

	public void setPhotoId(String photoId) {
		this.photoId = photoId;
	}
	
	@Length(min=1, max=64, message="删除用户长度必须介于 1 和 64 之间")
	public String getDelBy() {
		return delBy;
	}

	public void setDelBy(String delBy) {
		this.delBy = delBy;
	}
	
	public ApiComment getObject(){
		ApiComment comment = new ApiComment();
		comment.setCommentId(this.commentId);
		//comment.setCommentId(this.commentId);
		return comment;
	}
	
}