package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dahiet.vo.ResumeVO;

public class ResumeDetailDao extends DAO{
	
	private PreparedStatement psmt; // sql명령어 작성시에 사용
	private ResultSet rs; // select 후 결과셋 받기
	private ResumeVO vo;
		
	private final String LOADINFO = "SELECT * FROM USERS WHERE TEL = ?";
	private final String loadresume = "";
	private final String insertCareer = "insert into career values (RESUME_SUB_SEQ.nextval, a, ?, ?, ?, ?, ?, ?)";
	private final String insertLicense = "insert into license values (RESUME_SUB_SEQ.nextval, a, ?, ?, ?, ?);";
	private final String insertActivity = "insert into ACTIVITY values (RESUME_SUB_SEQ.nextval, a, ?, ?, ?, ?, ?);";
	private final String insertAward = "insert into award values (RESUME_SUB_SEQ.nextval, a, ?, ?, ?, ?);";
	private final String insertLanguage = "insert into language values (RESUME_SUB_SEQ.nextval, a, ?, ?, ?, ?);";
	
	// user 테이블의 값 이력서에 불러오기
	public List<ResumeVO> loadInfo(ResumeVO vo) {
		List<ResumeVO> list = new ArrayList<>();
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

	public List<ResumeVO> insertCareer(String resume_seq) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ResumeVO> insertLicense(String resume_seq) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ResumeVO> insertActivity(String resume_seq) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ResumeVO> insertAward(String resume_seq) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ResumeVO> insertLanguage(String resume_seq) {
		// TODO Auto-generated method stub
		return null;
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
