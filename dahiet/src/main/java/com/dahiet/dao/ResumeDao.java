package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dahiet.vo.ResumeVO;

public class ResumeDao extends DAO {

	private PreparedStatement psmt; // sql명령어 작성시에 사용
	private ResultSet rs; // select 후 결과셋 받기
	private ResumeVO vo;

	// user 테이블의 값 불러오기
	private final String LOADINFO
		=   " SELECT NAME, IMAG, BIRTH, EMAIL, TEL, ADDR, UNIV, MAJOR, SCORE " + 
			" FROM USERS " + 
			" WHERE TEL = ?;";

	// 값 입력하기 (프로시저 사용?)
//	private final String ~
	
	
		
		// user 테이블의 값 이력서에 불러오기
		public ResumeVO loadInfo(ResumeVO vo) {
			try {
				psmt = conn.prepareStatement(LOADINFO);
				psmt.setString(1, vo.getTel());
				rs = psmt.executeQuery();
				if(rs.next()) {
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
				}
			} catch(SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			} return vo;
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
