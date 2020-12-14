package com.maison.biz.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.maison.biz.common.MaisonContentVO;
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
	// 다이어리 사진첩목록보기
	@Override
	public List<MaisonContentVO> content_list(MaisonContentVO vo) {
		return dao.content_list(vo);
	}
	// 다이어리 로그인
	@Override
	public MaisonUserVO login_ok(MaisonUserVO vo) {
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
}
