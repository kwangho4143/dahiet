package com.dahiet.command;

import java.io.File;
import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.dahiet.common.Action;
import com.dahiet.common.FileRenamePolicy;
import com.dahiet.common.FileUtil;
import com.dahiet.dao.UserDao;
import com.dahiet.vo.UserVO;


public class userInsert implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		UserDao dao = new UserDao();
		UserVO vo = new UserVO();

		vo.setId(request.getParameter("id"));
		vo.setPw(request.getParameter("pw"));
		vo.setName(request.getParameter("name"));
		vo.setImage(request.getParameter("image"));
		vo.setBirth(Date.valueOf(request.getParameter("birth")));
		vo.setTel(request.getParameter("tel"));
		vo.setEmail(request.getParameter("email"));
		vo.setAddr(request.getParameter("addr"));
		vo.setUniv(request.getParameter("univ"));
		vo.setMajor(request.getParameter("major"));
		vo.setScore(request.getParameter("score"));
		
		
		
		//
		
		String appPath = request.getServletContext().getRealPath("/images");
		System.out.println(appPath);
		// 여러건
		try {
			for (Part part : request.getParts()) { //파일 읽을 때
				String fileName = FileUtil.extractFileName(part);
				if (!fileName.equals("")) {
					// 파일 명 중복 체크
					String uploadFile = appPath + File.separator + fileName;
					File renameFile = FileRenamePolicy.rename(new File(uploadFile));
					part.write(renameFile.getAbsolutePath());
					vo.setImage(renameFile.getName());
				}
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		//
		
		int n = dao.insert(vo);
		vo.setId(request.getParameter("id"));
		UserDao dao1 = new UserDao();
		UserVO vo1 = new UserVO();
		
		vo1 = dao1.selectLogIn(vo);
		String page;

		if (n != 0) {
			page = "jsp/user/insertSucess.jsp";
		} else {
			page = "jsp/user/insertFail.jsp";
		}
		request.setAttribute("vo", vo1);
		return page;
	}

}
