package com.maison.biz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maison.biz.common.MaisonContentVO;
import com.maison.biz.common.MaisonLikeVO;
import com.maison.biz.common.MaisonPageVO;
import com.maison.biz.common.MaisonUserVO;
import com.maison.biz.dao.MaisonDAO;
@Service
public class MaisonServiceImpl implements MaisonService{
	@Autowired
	MaisonDAO dao;
	//회원가입 
	@Override
	public void insertUser(MaisonUserVO vo) {
		dao.insertUser(vo);		
	}
	// 사진첩업로드
	@Override
	public void insertUpload(MaisonContentVO vo) {
		dao.insertUpload(vo);
	}
	// 다이어리 날짜출력
	@Override
	public MaisonContentVO date_list(MaisonContentVO vo) {
		return dao.date_list(vo);
	}
	// 사진첩 페이지나누기
	@Override
	public MaisonPageVO page_list(MaisonPageVO vo) {
		return dao.page_list(vo);
	}
	// 다이어리 사진첩목록보기
	@Override
	public List<MaisonContentVO> content_list(MaisonPageVO vo) {
		return dao.content_list(vo);
	}
	// 다이어리 로그인
	@Override
	public String login_ok(MaisonUserVO vo) {
		return dao.login_ok(vo);
	}
	// 회원정보수정
	@Override
	public MaisonUserVO user_master(MaisonUserVO vo) {
		return dao.user_master(vo);
	}
	// 회원탈퇴
	@Override
	public void user_delete(MaisonUserVO vo) {
		dao.user_delete(vo);
	}
	// 회원정보수정완료
	@Override
	public void user_update(MaisonUserVO vo) {
		dao.user_update(vo);
	}
	// 다이어리보기
	@Override
	public MaisonContentVO diary_list(MaisonContentVO vo) {
		return dao.diary_list(vo);
	}
	// 다이어리수정보기
	@Override
	public MaisonContentVO diary_edit(MaisonContentVO vo) {
		return dao.diary_edit(vo);
	}
	// 다이어리 수정하기
	@Override
	public void diary_editOK(MaisonContentVO vo) {
		dao.diary_editOK(vo);
	}
	// 다이어리 삭제하기
	@Override
	public void diary_delete(MaisonContentVO vo) {
		dao.diary_delete(vo);
	}
	// 다이어리 등록
	@Override
	public void diary_insert(MaisonContentVO vo) {
		dao.diary_insert(vo);		
	}
	// 게시판 상세보기
	@Override
	public MaisonContentVO list_content(MaisonContentVO vo) {
		return dao.list_content(vo);
	}
	// 게시판 수정하기
	@Override
	public void list_edit(MaisonContentVO vo) {
		dao.list_edit(vo);
	}
	// 게시판 삭제하기
	@Override
	public void list_delete(MaisonContentVO vo) {
		dao.list_delete(vo);
	}
	// 삭제할 파일이름 가져오기
	@Override
	public String delete_file(MaisonContentVO vo) {
		return dao.delete_file(vo);
	}
	// 좋아요 추가하기
	@Override
	public void update_like() {
		dao.update_like();
	}
	// 좋아요 수 구하기
	@Override
	public MaisonLikeVO select_like() {
		return dao.select_like();
	}
}
