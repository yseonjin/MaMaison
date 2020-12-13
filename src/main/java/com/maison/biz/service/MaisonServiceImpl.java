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
	//회원가입 insert
	@Override
	public void insertUser(MaisonUserVO vo) {
		dao.insertUser(vo);		
	}
	@Override
	public void insertUpload(MaisonContentVO vo) {
		dao.insertUpload(vo);
	}
	@Override
	public MaisonContentVO date_list(MaisonContentVO vo) {
		return dao.date_list(vo);
	}
	@Override
	public List<MaisonContentVO> content_list(MaisonContentVO vo) {
		return dao.content_list(vo);
	}
	@Override
	public MaisonUserVO login_ok(MaisonUserVO vo) {
		return dao.login_ok(vo);
	}
	@Override
	public MaisonUserVO user_master(MaisonUserVO vo) {
		return dao.user_master(vo);
	}
	@Override
	public void user_delete(MaisonUserVO vo) {
		dao.user_delete(vo);
	}
	@Override
	public void user_update(MaisonUserVO vo) {
		dao.user_update(vo);
	}
}
