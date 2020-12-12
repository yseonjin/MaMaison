package com.maison.biz.common;

import org.springframework.web.multipart.MultipartFile;

public class MaisonContentVO {
	private int seq;
	private String title;
	private String content;
	private String condition;
	private String dt;
	private String file_path;
	private String c_flag;
	private String baseDate;
	private String date1;
	private String date2;
	private String date3;
	private String date4;
	private String date5;
	private MultipartFile uploadFile;
	
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public String getDt() {
		return dt;
	}
	public void setDt(String dt) {
		this.dt = dt.substring(0, 10);
	}
	public String getFile_path() {
		return file_path;
	}
	public void setFile_path(String file_path) {
		this.file_path = file_path;
	}
	public String getC_flag() {
		return c_flag;
	}
	public void setC_flag(String c_flag) {
		this.c_flag = c_flag;
	}
	
	public String getDate1() {
		return date1;
	}
	public void setDate1(String date1) {
		this.date1 = date1;
	}
	public String getDate2() {
		return date2;
	}
	public void setDate2(String date2) {
		this.date2 = date2;
	}
	public String getDate3() {
		return date3;
	}
	public void setDate3(String date3) {
		this.date3 = date3;
	}
	public String getDate4() {
		return date4;
	}
	public void setDate4(String date4) {
		this.date4 = date4;
	}
	public String getDate5() {
		return date5;
	}
	public void setDate5(String date5) {
		this.date5 = date5;
	}
	public String getBaseDate() {
		return baseDate;
	}
	public void setBaseDate(String baseDate) {
		this.baseDate = baseDate;
	}
	
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	@Override
	public String toString() {
		return "MaisonContentVO [seq=" + seq + ", title=" + title + ", content=" + content + ", condition=" + condition
				+ ", dt=" + dt + ", file_path=" + file_path + ", c_flag=" + c_flag + "]";
	}
	
	
}
