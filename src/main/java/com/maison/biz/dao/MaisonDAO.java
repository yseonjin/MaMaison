package com.maison.biz.dao;

import java.util.List;

import com.maison.biz.common.MaisonContentVO;
import com.maison.biz.common.MaisonPageVO;
import com.maison.biz.common.MaisonUserVO;

public interface MaisonDAO {
	void insertUser(MaisonUserVO vo);
	void insertUpload(MaisonContentVO vo);
	MaisonContentVO date_list(MaisonContentVO vo);
	MaisonPageVO page_list(MaisonPageVO vo);
	List<MaisonContentVO> content_list(MaisonPageVO vo);
	MaisonUserVO login_ok(MaisonUserVO vo);
	MaisonUserVO user_master(MaisonUserVO vo);
	void user_delete(MaisonUserVO vo);
	void user_update(MaisonUserVO vo);
	MaisonContentVO diary_list(MaisonContentVO vo);
	MaisonContentVO diary_edit(MaisonContentVO vo);

}
