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

	// user 테이블의 값 불러오기
	private final String SELECTINF = "SELECT * FROM RESUME WHERE TEL = ?";
	private final String LOADINFO ="SELECT * FROM USERS WHERE TEL = ?";

	
	// 값 입력하기 (프로시저 사용?)
//	private final String ~
	

	public List<ResumeVO> selectedTel(ResumeVO vo) {
		List<ResumeVO> list= new ArrayList<ResumeVO>();
		
		try {
			
			psmt = conn.prepareStatement(SELECTINF);
			psmt.setString(1, vo.getTel());
			rs = psmt.executeQuery();
			while(rs.next()) {
				vo.setSeq(rs.getString("seq"));
				vo.setResume_name(rs.getString("resume_name"));
				vo.setRedgt(rs.getDate("regdt"));
				vo.setTel(rs.getString("tel"));
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
	public int insertResume(ResumeVO vo2) {
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

}
