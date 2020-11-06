package com.dahiet.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dahiet.command.LogoutAction;
import com.dahiet.command.RecruitCheck;
import com.dahiet.command.RecruitDelete;
import com.dahiet.command.RecruitUp;
import com.dahiet.command.RecruitUpdate;
import com.dahiet.command.ResumeList;
import com.dahiet.command.ReviewAction;
import com.dahiet.command.ReviewCheck;
import com.dahiet.command.ReviewDelete;
import com.dahiet.command.ReviewDetail;
import com.dahiet.command.ReviewDetailUp;
import com.dahiet.command.ReviewInsert;
import com.dahiet.command.ReviewUpdate;
import com.dahiet.command.SearchAction;
import com.dahiet.command.ShowRecruitList;
import com.dahiet.command.comInsert;
import com.dahiet.command.companyLoginAction;
import com.dahiet.command.insertRecruit;
import com.dahiet.command.userInsert;
import com.dahiet.command.userLoginAction;
import com.dahiet.common.Action;



//쿠키는 request객체가 아니라 response객체에 담는다.
//session에는 특정 유지해야하는 것들 로그인 등등 을 담는다.
@MultipartConfig(maxFileSize = 1024 * 1024 * 2 // size of any uploaded file
, maxRequestSize = 1024 * 1024 * 10 // overall size of all uploaded files
, fileSizeThreshold = 1024)

@WebServlet("*.do")
public class FrontController extends HttpServlet {
   private static final long serialVersionUID = 1L;
   private HashMap<String,Action> map = new HashMap<String,Action>();
   
    public FrontController() {
        super();
    }

   public void init(ServletConfig config) throws ServletException {
      //요청들을 정의함
      map.put("/userInsert.do",new userInsert()); //userInsert.do 가 들어오면 MainAction()를 실행하는것   index.jsp가 들어오면 사용하는 것 처음페이지 처리시 사용
      map.put("/comInsert.do",new comInsert()); //기업 회원가입 기능
      map.put("/insertRecruit.do",new insertRecruit()); //기업 공고 올리기 
      
      map.put("/SearchAction.do",new SearchAction()); //상세 검색
      //map.put("/RecruitAction.do",new RecruitAction()); //공고 등록 체크박스 값가져오기
      map.put("/ReviewAction.do",new ReviewAction()); //리뷰 리스트 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출

      //광호
      map.put("/recruitCheck.do",new RecruitCheck()); //공고의 체크박스
      map.put("/showRecruitList.do",new ShowRecruitList()); //회사 공고 리스트 조회
      map.put("/Recruitupdate.do",new RecruitUpdate()); //공고리스트에서 상세로 넘어가서 수정
      map.put("/RecruitUp.do",new RecruitUp()); //로그인 폼 호출
      map.put("/RecruitDelete.do",new RecruitDelete()); //공고 리스트 삭제 기능
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
      //다희
      map.put("/ResumeList.do",new ResumeList()); //이력서 현황 호출
//      map.put("/InsertResume.do",new InsertResume()); //이력서 등록 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
      //정은
      map.put("/companyLogin.do",new companyLoginAction()); //로그인 폼 호출
      map.put("/logOut.do",new LogoutAction()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
      //평강
      map.put("/ReviewInsert.do",new ReviewInsert()); //취업 토크 값 인서트 호출
      map.put("/ReviewCheck.do",new ReviewCheck()); //취업 토크 인서트 폼 호출
      map.put("/ReviewDetail.do",new ReviewDetail()); //로그인 폼 호출
      map.put("/ReviewDetailUp.do",new ReviewDetailUp()); //로그인 폼 호출
      map.put("/ReviewUpdate.do",new ReviewUpdate()); //로그인 폼 호출
      map.put("/ReviewDelete.do",new ReviewDelete()); //로그인 폼 호출

//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출

      map.put("/userLogin.do",new userLoginAction()); //로그인 폼 호출

   
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출
//      map.put("/loginForm.do",new LoginForm()); //로그인 폼 호출

   }
   //doget,dopost를 사용해도 되지만 간단히 하기 위해서
   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //수행할 명령을 처리
      request.setCharacterEncoding("utf-8");
      String uri = request.getRequestURI();
      String contextPath = request.getContextPath();
      String path = uri.substring(contextPath.length()); //실제 들어오는 요청 페이지를 찾음
      //uri = "/BBS/main.do"    contextPath = "/BBS"    => path = "/main.do"
      
      
      Action command = map.get(path);//키를 /main.do로 하고 MainAction()을 가져오는것
      String viewPage = command.exec(request,response); //명령어 수행되고 나서 보여줄 페이지 선택  //view페이지를 찾는다

      if (viewPage != null) { // redirect때문에 제약조건 설정
         if (viewPage.startsWith("redirect")) {
            response.sendRedirect(viewPage.substring(9));
         } else {
            RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); // 선택한 페이지로 가는 것
            dispatcher.forward(request, response);
         }

      }
      
   }

}