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
<<<<<<< HEAD
	private final String SELECTINF1 = "SELECT * FROM USERS WHERE ID = ?";
	private final String SELECTINF2 = "SELECT * FROM RESUME WHERE TEL = ?";
=======
	private final String LOADINFO
		=   " SELECT NAME, IMAG, BIRTH, EMAIL, TEL, ADDR, UNIV, MAJOR, SCORE " + 
			" FROM USERS " + 
			" WHERE TEL = ?;";
>>>>>>> branch 'main' of https://github.com/kwangho4143/dahiet.git

	
	private final String LOADINFO
	=   " SELECT NAME, IMAG, BIRTH, EMAIL, TEL, ADDR, UNIV, MAJOR, SCORE " + 
		" FROM USERS " + 
		" WHERE TEL = ?;";
	
	// 값 입력하기 (프로시저 사용?)
//	private final String ~
	
	
<<<<<<< HEAD
	// user 테이블의 값 불러오기
	public ResumeVO selectedId(ResumeVO vo) {
		try {
			psmt = conn.prepareStatement(SELECTINF1);
			psmt.setString(1, vo.getId());
			rs = psmt.executeQuery();
			if(rs.next()) {
				vo.setId(rs.getString("id"));
				vo.setTel(rs.getString("tel"));
				vo.setPw(rs.getString("pw"));
				vo.setName(rs.getString("name"));
				vo.setBirth(rs.getDate("birth"));
				vo.setEmail(rs.getString("email"));
				vo.setAddr(rs.getString("addr"));
				vo.setUniv(rs.getString("univ"));
				vo.setMajor(rs.getString("major"));
				vo.setScore(rs.getString("score"));
				vo.setImag(rs.getString("imag"));		
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} 
		return vo;
	}
	
	public List<ResumeVO> selectedTel(ResumeVO vo) {
		List<ResumeVO> list= new ArrayList<ResumeVO>();
		
		try {
			vo = new ResumeVO();
			psmt = conn.prepareStatement(SELECTINF2);
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
=======
		
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
>>>>>>> branch 'main' of https://github.com/kwangho4143/dahiet.git

<<<<<<< HEAD
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
	
	
	
	
	
	
=======
		
>>>>>>> branch 'main' of https://github.com/kwangho4143/dahiet.git
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
