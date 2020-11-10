package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dahiet.vo.ResumeVO;

public class ResumeDao extends DAO {

	private PreparedStatement psmt; // sql명령어 작성시에 사용
	private ResultSet rs; // select 후 결과셋 받기
	private ResumeVO vo;

	// 테이블의 값 불러오기
	private final String SELECTINF = "SELECT * FROM RESUME WHERE TEL = ?";
	private final String LOADINFO ="SELECT * FROM USERS WHERE TEL = ?";
	private final String SELECTID = "SELECT * FROM USERS U JOIN RESUME R ON U.TEL = R.TEL WHERE RESUME_SEQ=?"	;
	
	// 값 입력하기
//	private final String insertResume = 

/*	insertResume 프로시저
	declare
	resume_seq number=?; // 이력서와 경력 자격증 등 다른 테이블들을 이어주는 시퀀스 
	resume_sub_seq number // 서브 시퀀스
	career_count:=들어와야됨; // 경력 카운트 몇 개 입력됐는지(몇 건인지 확인)
	license_count:=;// 자격증 카운트
	activity_count:=; // 대외활동 카운트
	award_count:=; // 수상내역 카운트
	language_count:=; // 어학능력 카운트
	store_seq number; // resume_seq 값을 담아줄 store_seq 선언
	begin
	store_seq:=resume_seq.nextval;
	insert into resume values(store_seq,컬럼명1,컬럼명2);
	if career_count>1 then
	  while(career_count>0)
	loop
	  insert into 경력(store_seq,경력컬럼1,경력컬럼2,경력컬럼3,v2_seq.nextval)
	  values(aa,aa,aa);
	  v_count=v_count=-1;
	loop end;
	 if license_count>1 then
	  while(license_count>0)
	loop
	  insert into 자격증(store_seq,aa,bb,cc,v2_seq.nextval)
	  values(aa,aa,aa);
	  v_count=v_count=-1;
	loop end;
	end;
	/
*/

	public List<ResumeVO> selectedTel(String tel) {
		List<ResumeVO> list= new ArrayList<ResumeVO>();
		
		try {
			
			psmt = conn.prepareStatement(SELECTINF);
			psmt.setString(1, tel);
			rs = psmt.executeQuery();
			while(rs.next()) {
				vo = new ResumeVO();
				vo.setResume_seq(rs.getString("resume_seq"));
				vo.setResume_name(rs.getString("resume_name"));
				vo.setRedgt(rs.getDate("regdt"));
				//vo.setTel(rs.getString("tel"));
				list.add(vo);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} 
		
		return list;
	}
	
	
	// user 테이블의 값 이력서에 불러오기
	public List<ResumeVO> loadInfo(ResumeVO vo) {
		List<ResumeVO> list=new ArrayList<>();
		try {
			psmt = conn.prepareStatement(LOADINFO);
			psmt.setString(1, vo.getTel());
			rs = psmt.executeQuery();
			while(rs.next()) {
				ResumeVO vo1=new ResumeVO();
				vo1.setId(rs.getString("id"));
				vo1.setName(rs.getString("name"));
				vo1.setImag(rs.getString("imag"));
				vo1.setBirth(rs.getDate("birth"));
				vo1.setEmail(rs.getString("email"));
				vo1.setTel(rs.getString("tel"));
				vo1.setAddr(rs.getString("addr"));
				vo1.setUniv(rs.getString("univ"));
				vo1.setMajor(rs.getString("major"));
				vo1.setScore(rs.getString("score"));
				list.add(vo1);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} return list;
	}

	
	// 이력서 등록
	public int insertResume(ResumeVO vo) {
		int n = 0;
		//
		//
		// -- 내 용 입 력 --
		//
		//
		return n;
	}
	
	
	
	
	
	
	private void close() {
		try {
			if(rs != null) {
				rs.close();
				System.out.println("rs 종료");
			}
			if(psmt != null) {
				psmt.close();
				System.out.println("psmt 종료");
			}
			if(conn != null) {
				conn.close();
				System.out.println("conn 종료");
				System.out.println("--------------");
			}
		}
		catch(SQLException e){
			e.printStackTrace();
		}
	}
	
	
	
	public ResumeVO selectinf(String resume_seq) {
		try {
			psmt = conn.prepareStatement(SELECTID);
			psmt.setString(1, resume_seq);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				ResumeVO vo = new ResumeVO();
				vo.setId(rs.getString("id"));
				vo.setName(rs.getString("name"));
				vo.setImag(rs.getString("imag"));
				vo.setBirth(rs.getDate("birth"));
				vo.setEmail(rs.getString("email"));
				vo.setTel(rs.getString("tel"));
				vo.setAddr(rs.getString("addr"));
				vo.setUniv(rs.getString("univ"));
				vo.setMajor(rs.getString("major"));
				vo.setScore(rs.getString("score"));
				vo.setResume_name(rs.getString("resume_name"));
				vo.setResume_seq(rs.getString("resume_seq"));
				vo.setRedgt(rs.getDate("redgt"));
			
			}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}
	return vo;
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
