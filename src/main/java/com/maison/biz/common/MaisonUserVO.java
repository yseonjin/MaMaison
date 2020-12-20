package com.maison.biz.common;

public class MaisonUserVO {
	private int seq;
	private String id;
	private String pwd;
	private String p_sha256;
	private String p_bcrypt;
	private String name;
	private String phone;
	private String address;
	private String email;
	private String joindate;
	private String like_yn;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getJoindate() {
		return joindate;
	}
	public void setJoindate(String joindate) {
		this.joindate = joindate.substring(0, 10);
	}
	public String getP_sha256() {
		return p_sha256;
	}
	public void setP_sha256(String p_sha256) {
		this.p_sha256 = p_sha256;
	}
	public String getP_bcrypt() {
		return p_bcrypt;
	}
	public void setP_bcrypt(String p_bcrypt) {
		this.p_bcrypt = p_bcrypt;
	}
	
	public String getLike_yn() {
		return like_yn;
	}
	public void setLike_yn(String like_yn) {
		this.like_yn = like_yn;
	}
	@Override
	public String toString() {
		return "MaisonUserVO [seq=" + seq + ", id=" + id + ", pwd=" + pwd + ", p_sha256=" + p_sha256 + ", p_bcrypt="
				+ p_bcrypt + ", name=" + name + ", phone=" + phone + ", address=" + address + ", email=" + email
				+ ", joindate=" + joindate + ", like_yn=" + like_yn + "]";
	}
	
	
	
}
