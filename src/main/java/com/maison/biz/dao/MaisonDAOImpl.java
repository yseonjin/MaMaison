package com.maison.biz.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.maison.biz.common.MaisonContentVO;
import com.maison.biz.common.MaisonUserVO;
@Repository
public class MaisonDAOImpl implements MaisonDAO{
	@Autowired
	SqlSessionTemplate mybatis;
	// 회원가입 insert (6개)
	@Override
	public void insertUser(MaisonUserVO vo) {
		mybatis.insert("maisonMapper.userInsert", vo);
	}
	@Override
	public void insertUpload(MaisonContentVO vo) {
		mybatis.insert("maisonMapper.uploadInsert", vo);
		
	}
	@Override
	public MaisonContentVO date_list(MaisonContentVO vo) {
		return mybatis.selectOne("maisonMapper.date_list", vo);
	}
	@Override
	public List<MaisonContentVO> content_list(MaisonContentVO vo) {
		return mybatis.selectList("maisonMapper.list", vo);
	}

}
