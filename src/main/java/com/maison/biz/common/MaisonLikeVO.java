package com.maison.biz.common;

public class MaisonLikeVO {
	private int likeNo;
	private int like_check;
	public int getLikeNo() {
		return likeNo;
	}
	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
	}
	public int getLike_check() {
		return like_check;
	}
	public void setLike_check(int like_check) {
		this.like_check = like_check;
	}
	@Override
	public String toString() {
		return "MaisonLikeVO [likeNo=" + likeNo + ", like_check=" + like_check + "]";
	}
	
	
}
