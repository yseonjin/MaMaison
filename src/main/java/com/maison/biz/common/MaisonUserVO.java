package com.maison.biz.common;

public class MaisonUserVO {
	private int seq;
	private String id;
	private String pwd;
	private String name;
	private String phone;
	private String address;
	private String email;
	private String joindate;
	
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
	@Override
	public String toString() {
		return "MaisonUserVO [seq=" + seq + ", id=" + id + ", pwd=" + pwd + ", name=" + name + ", phone=" + phone
				+ ", address=" + address + ", email=" + email + ", joindate=" + joindate + "]";
	}
}
