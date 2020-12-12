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
}
