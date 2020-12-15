package com.maison.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.maison.biz.common.MaisonContentVO;
import com.maison.biz.common.MaisonPageVO;
import com.maison.biz.common.MaisonUserVO;
import com.maison.biz.service.MaisonService;

@Controller
public class MaisonController {
	@Autowired
	MaisonService s;
	
	// 회원가입 
	@RequestMapping(value = "/join_insert.do", method = RequestMethod.POST)
	public String join_insert(MaisonUserVO vo) {
		s.insertUser(vo);
		return "join_ok.jsp";
	}
	// 사진업로드
	@RequestMapping(value = "/upload_insert.do", method = RequestMethod.POST)
	public String upload_insert(MaisonContentVO vo, HttpServletRequest request) {
		  		
		String realPath = request.getSession().getServletContext().getRealPath("/file/");
		System.out.println(realPath);
		MultipartFile uploadFile = vo.getUploadFile();
				if(!uploadFile.isEmpty()) {
					String originalFileName = uploadFile.getOriginalFilename();
					File file = new File(realPath+originalFileName);
					String fileName = originalFileName.substring(0, originalFileName.lastIndexOf("."));
					String extension = FilenameUtils.getExtension(originalFileName);
					String saveFileName = fileName + "." + extension;
						if(file.isFile()) {
							String ranId = UUID.randomUUID().toString();
							saveFileName = fileName + ranId.substring(0,3) + "." + extension;
						}
							try {
								vo.setFile_path(saveFileName);;
								uploadFile.transferTo(new File(realPath+saveFileName));
							} catch (IllegalStateException | IOException e) {
								e.printStackTrace();
							}
						
				}else {
					vo.setFile_path("empty.jpg");
				}
		
		s.insertUpload(vo);
		return "list.do";
	}
	// 다이어리 출력
	@RequestMapping(value = "/date_list.do")
	public String date_list(MaisonContentVO vo, Model m) {
		// 다이어리 날짜출력
		if(vo.getBaseDate().equals("today")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
			Calendar c1 = Calendar.getInstance();
			vo.setBaseDate(sdf.format(c1.getTime()));
		}
		m.addAttribute("m", s.date_list(vo));
		// 다이어리 내용출력
		m.addAttribute("c", s.diary_list(vo));
		return "diary_list.jsp";
	}
	// 다이어리 수정페이지 출력
	@RequestMapping(value = "/diary_edit.do")
	public String diary_edit(MaisonContentVO vo, Model m) {
		m.addAttribute("c", s.diary_edit(vo));
		return "diary_edit.jsp";
	}
	// 다이어리 수정
	@RequestMapping(value = "/diary_edit_ok.do" , method = RequestMethod.POST)
	public String diary_editOK(MaisonContentVO vo) {
		s.diary_editOK(vo);
		return "date_list.do?baseDate="+vo.getDt();
	}
	// 다이어리 삭제
	@RequestMapping(value = "/diary_delete.do")
	public String diary_delete(MaisonContentVO vo) {
		s.diary_delete(vo);
		return "date_list.do?baseDate="+vo.getDt();
	}
	// 다이어리 쓰기
	@RequestMapping(value = "/diary_insert.do")
	public String diary_insert(MaisonContentVO vo) {
		s.diary_insert(vo);
		return "date_list.do?baseDate=today";
	}
	// 사진첩 자료실목록보기
	@RequestMapping(value = "/list.do")
	public String content_list(MaisonPageVO vo, Model m) {
		int now_page = vo.getNow_page();
		if(now_page == 0) {
			vo.setNow_page(1);
		}else {
			vo.setNow_page(vo.getNow_page());
		}
		m.addAttribute("page", s.page_list(vo));
		MaisonPageVO page = s.page_list(vo);
		vo.setEnd_content(page.getEnd_content());
		vo.setStart_content(page.getStart_content());
		m.addAttribute("flist", s.content_list(vo));
		return "list.jsp";
	}
	// 회원정보수정 첫화면
	@RequestMapping(value = "/user_master1.do")
	public String user_master1(MaisonUserVO vo, Model m, HttpSession session) {
		vo.setId((String)session.getAttribute("id"));
		m.addAttribute("user", s.user_master(vo));
		return "user_master.jsp";
	}
	// 회원정보수정 상세화면
	@RequestMapping(value = "/user_master2.do")
	public String user_master2(MaisonUserVO vo, Model m, HttpSession session) {
		vo.setId((String)session.getAttribute("id"));
		m.addAttribute("user", s.user_master(vo));
		return "user_master2.jsp";
	}
	// 회원정보수정 완료
	@RequestMapping(value = "user_edit.do", method = RequestMethod.POST)
	public String user_edit(MaisonUserVO vo) {
		s.user_update(vo);
		return "user_edit_ok.jsp";
	}
	
	// 회원탈퇴
	@RequestMapping(value = "/user_delete.do")
	public String user_delete(MaisonUserVO vo, HttpSession session) {
		s.user_delete(vo);
		session.invalidate();
		return "user_delete_ok.jsp";
	}
	// 로그인확인
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login_ok(MaisonUserVO vo, HttpSession session) {
		if(s.login_ok(vo) != null) {
			session.setAttribute("id", vo.getId());
		}
		return "home.jsp";
	}
	// 로그아웃
	@RequestMapping(value = "/logout.do")
	public String logout_ok(MaisonUserVO vo, HttpSession session) {
		session.invalidate();
		return "home.jsp";
	}
	
}