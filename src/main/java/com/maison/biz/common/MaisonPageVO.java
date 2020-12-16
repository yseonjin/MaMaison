package com.maison.biz.common;

public class MaisonPageVO {
	// 총 데이터수
	private int total_content;
	// 현재 페이지
	private int now_page;
	// 시작 페이지
	private int start_page;
	//끝 페이지
	private int end_page;
	//이전 페이지
	private int pre_page;
	//다음 페이지
	private int next_page;
	//페이지 묶음수
	private int group_page;
	//페이지 데이터수
	private int content_cnt;
	//시작데이터
	private int start_content;
	//끝데이터
	private int end_content;
	//게시판 출력구분을 위한 아이디
	private String id;
	
	public int getTotal_content() {
		return total_content;
	}
	public void setTotal_content(int total_content) {
		this.total_content = total_content;
	}
	public int getNow_page() {
		return now_page;
	}
	public void setNow_page(int now_page) {
		this.now_page = now_page;
	}
	public int getStart_page() {
		return start_page;
	}
	public void setStart_page(int start_page) {
		this.start_page = start_page;
	}
	public int getEnd_page() {
		return end_page;
	}
	public void setEnd_page(int end_page) {
		this.end_page = end_page;
	}
	public int getPre_page() {
		return pre_page;
	}
	public void setPre_page(int pre_page) {
		this.pre_page = pre_page;
	}
	public int getNext_page() {
		return next_page;
	}
	public void setNext_page(int next_page) {
		this.next_page = next_page;
	}
	public int getGroup_page() {
		return group_page;
	}
	public void setGroup_page(int group_page) {
		this.group_page = group_page;
	}
	public int getContent_cnt() {
		return content_cnt;
	}
	public void setContent_cnt(int content_cnt) {
		this.content_cnt = content_cnt;
	}
	public int getStart_content() {
		return start_content;
	}
	public void setStart_content(int start_content) {
		this.start_content = start_content;
	}
	public int getEnd_content() {
		return end_content;
	}
	public void setEnd_content(int end_content) {
		this.end_content = end_content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "MaisonPageVO [total_content=" + total_content + ", now_page=" + now_page + ", start_page=" + start_page
				+ ", end_page=" + end_page + ", pre_page=" + pre_page + ", next_page=" + next_page + ", group_page="
				+ group_page + ", content_cnt=" + content_cnt + ", start_content=" + start_content + ", end_content="
				+ end_content + ", id=" + id + "]";
	}
	
	
}
