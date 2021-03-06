package com.maison.biz.service;

import java.util.List;

import com.maison.biz.common.MaisonContentVO;
import com.maison.biz.common.MaisonPageVO;
import com.maison.biz.common.MaisonUserVO;

public interface MaisonService {
	void insertUser(MaisonUserVO vo);
	void insertUpload(MaisonContentVO vo);
	MaisonContentVO date_list(MaisonContentVO vo);
	MaisonPageVO page_list(MaisonPageVO vo);
	List<MaisonContentVO> content_list(MaisonPageVO vo);
	String login_ok(MaisonUserVO vo);
	MaisonUserVO user_master(MaisonUserVO vo);
	void user_delete(MaisonUserVO vo);
	void user_update(MaisonUserVO vo);
	MaisonContentVO diary_list(MaisonContentVO vo);
	MaisonContentVO diary_edit(MaisonContentVO vo);
	void diary_editOK(MaisonContentVO vo);
	void diary_delete(MaisonContentVO vo);
	void diary_insert(MaisonContentVO vo);
	MaisonContentVO list_content(MaisonContentVO vo);
	void list_edit(MaisonContentVO vo);
	void list_delete(MaisonContentVO vo);
	String delete_file(MaisonContentVO vo);
	String select_yn(MaisonUserVO vo);
	void change_yn(MaisonUserVO vo);
	int select_like();
}
