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
		// 패스워드 암호화저장
		try {
			SHA256 sha = SHA256.getInsatnce();
			String shaPass;
			shaPass = sha.getSha256(vo.getPwd().getBytes());
			String bcPass = BCrypt.hashpw(shaPass, BCrypt.gensalt());
			vo.setP_sha256(shaPass);
			vo.setP_bcrypt(bcPass);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    // 쿼리문 실행 
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
	public String login_ok(MaisonUserVO vo) {
		// 암호화된 비밀번호 확인
		String log = "";
        try {
        	SHA256   sha = SHA256.getInsatnce();
        	String      orgPass = vo.getPwd();
			String      shaPass = sha.getSha256(orgPass.getBytes());
			MaisonUserVO temp = mybatis.selectOne("maisonMapper.login", vo);
			if(temp.getP_bcrypt()!= null ) {
	            if(BCrypt.checkpw(shaPass,temp.getP_bcrypt())) {
	            //  오리지날 암호와  pwd2 를 비교해준다. !!	
	               log = "ssuccess";  
	               System.out.println("성공");
	             } else {
	               log = "fail";   
	               System.out.println("암호 실패");
	             }
	          }			
			
		} catch (Exception e) {
			log = "fail"; 
			System.out.println("실패");
		}
		return log;
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
		// 수정된 비밀번호 암호화
	    try {
	    	SHA256 sha = SHA256.getInsatnce();
	    	String shaPass = sha.getSha256(vo.getPwd().getBytes());
	    	String bcPass = BCrypt.hashpw(shaPass, BCrypt.gensalt());
	    	vo.setP_sha256(shaPass);
	    	vo.setP_bcrypt(bcPass);		
		} catch (Exception e) {
			e.printStackTrace();
		}
	    // 회원정보 수정쿼리
		mybatis.update("maisonMapper.user_edit", vo);
	}
	// 다이어리보기
	@Override
	public MaisonContentVO diary_list(MaisonContentVO vo) {
		return mybatis.selectOne("maisonMapper.diary_list", vo);
	}
	// 다이어리 수정보기
	@Override
	public MaisonContentVO diary_edit(MaisonContentVO vo) {
		return mybatis.selectOne("maisonMapper.diary_edit", vo);
	}
	// 다이어리 수정하기
	@Override
	public void diary_editOK(MaisonContentVO vo) {
		mybatis.update("maisonMapper.diary_editOK", vo);
	}
	// 다이어리 삭제하기
	@Override
	public void diary_delete(MaisonContentVO vo) {
		mybatis.delete("maisonMapper.diary_delete", vo);
	}
	// 다이어리 글쓰기
	@Override
	public void diary_insert(MaisonContentVO vo) {
		mybatis.insert("maisonMapper.diary_insert", vo);
	}
	// 게시판 상세보기
	@Override
	public MaisonContentVO list_content(MaisonContentVO vo) {
		return mybatis.selectOne("maisonMapper.list_content", vo);
	}
	// 게시판 수정하기
	@Override
	public void list_edit(MaisonContentVO vo) {
		mybatis.update("maisonMapper.list_content_ok", vo);
	}
	// 게시판 삭제하기
	@Override
	public void list_delete(MaisonContentVO vo) {
		mybatis.delete("maisonMapper.list_delete", vo);
	}
	// 삭제할 파일이름 가져오기
	@Override
	public String delete_file(MaisonContentVO vo) {
		return mybatis.selectOne("maisonMapper.delete_file", vo);
	}

}
