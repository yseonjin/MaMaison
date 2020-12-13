package com.maison.biz.service;

import java.util.List;

import com.maison.biz.common.MaisonContentVO;
import com.maison.biz.common.MaisonUserVO;

public interface MaisonService {
	void insertUser(MaisonUserVO vo);
	void insertUpload(MaisonContentVO vo);
	MaisonContentVO date_list(MaisonContentVO vo);
	List<MaisonContentVO> content_list(MaisonContentVO vo);
	MaisonUserVO login_ok(MaisonUserVO vo);
	MaisonUserVO user_master(MaisonUserVO vo);
	void user_delete(MaisonUserVO vo);
	void user_update(MaisonUserVO vo);
	
}
