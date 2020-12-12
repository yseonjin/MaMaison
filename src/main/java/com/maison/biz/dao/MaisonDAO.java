package com.maison.biz.dao;

import java.util.List;

import com.maison.biz.common.MaisonContentVO;
import com.maison.biz.common.MaisonUserVO;

public interface MaisonDAO {
	void insertUser(MaisonUserVO vo);
	void insertUpload(MaisonContentVO vo);
	MaisonContentVO date_list(MaisonContentVO vo);
	List<MaisonContentVO> content_list(MaisonContentVO vo);

}
