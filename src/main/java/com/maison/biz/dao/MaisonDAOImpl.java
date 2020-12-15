package com.maison.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.maison.biz.common.MaisonContentVO;
import com.maison.biz.common.MaisonPageVO;
import com.maison.biz.common.MaisonUserVO;
@Repository
public class MaisonDAOImpl implements MaisonDAO{
	@Autowired
	SqlSessionTemplate mybatis;
	// 회원가입
	@Override
	public void insertUser(MaisonUserVO vo) {
		mybatis.insert("maisonMapper.userInsert", vo);
	}
	// 사진업로드
	@Override
	public void insertUpload(MaisonContentVO vo) {
		mybatis.insert("maisonMapper.uploadInsert", vo);
	}
	// 다이어리날짜목록
	@Override
	public MaisonContentVO date_list(MaisonContentVO vo) {
		return mybatis.selectOne("maisonMapper.date_list", vo);
	}
	// 사진첩페이지나누기
	@Override
	public MaisonPageVO page_list(MaisonPageVO vo) {
		return mybatis.selectOne("maisonMapper.page_div", vo);
	}
	// 사진첩목록보기
	@Override
	public List<MaisonContentVO> content_list(MaisonPageVO vo) {
		return mybatis.selectList("maisonMapper.list", vo);
	}
	// 로그인
	@Override
	public MaisonUserVO login_ok(MaisonUserVO vo) {
		return mybatis.selectOne("maisonMapper.login", vo);
	}
	// 회원정보수정보기
	@Override
	public MaisonUserVO user_master(MaisonUserVO vo) {
		return mybatis.selectOne("maisonMapper.user_master", vo);
	}
	// 회원탈퇴
	@Override
	public void user_delete(MaisonUserVO vo) {
		mybatis.delete("maisonMapper.user_delete", vo);
	}
	// 회원정보수정완료
	@Override
	public void user_update(MaisonUserVO vo) {
		mybatis.update("maisonMapper.user_edit", vo);
	}
	// 다이어리보기
	@Override
	public MaisonContentVO diary_list(MaisonContentVO vo) {
		return mybatis.selectOne("maisonMapper.dairy_list", vo);
	}
	// 다이어리 수정보기
	@Override
	public MaisonContentVO diary_edit(MaisonContentVO vo) {
		return mybatis.selectOne("maisonMapper.dairy_edit", vo);
	}

}
