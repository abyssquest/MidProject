package com.spring.biz.comment.vo;

import java.util.Date;

public class CommentVO {
	private int seq;
	private int imageKey;
	private String masterid;
	private String content;
	private Date uploadDate;

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public int getImageKey() {
		return imageKey;
	}

	public void setImageKey(int imageKey) {
		this.imageKey = imageKey;
	}

	public String getMasterid() {
		return masterid;
	}

	public void setMasterid(String masterid) {
		this.masterid = masterid;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(Date uploadDate) {
		this.uploadDate = uploadDate;
	}
}