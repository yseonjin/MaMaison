package com.maison.controller;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.maison.biz.common.MaisonContentVO;
import com.maison.biz.common.MaisonUserVO;
import com.maison.biz.service.MaisonService;

@Controller
public class MaisonController {
	@Autowired
	MaisonService s;
	
	// 회원가입 (insert)
	@RequestMapping(value = "/join_insert.do")
	public String join_insert(MaisonUserVO vo) {
		s.insertUser(vo);
		return "join_ok.jsp";
	}
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
	@RequestMapping(value = "/date_list.do")
	public String date_list(MaisonContentVO vo, Model m) {
		m.addAttribute("m", s.date_list(vo));
		return "diary_list.jsp";
	}
	@RequestMapping(value = "/list.do")
	public String content_list(MaisonContentVO vo, Model m) {
		m.addAttribute("flist", s.content_list(vo));
		return "list.jsp";
	}
	
	
}