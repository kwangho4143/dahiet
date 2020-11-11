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
	//private ResumeVO vo;

	// 테이블의 값 불러오기
	private final String SELECTINF = "SELECT * FROM RESUME WHERE TEL = ?";
	private final String LOADINFO ="SELECT * FROM USERS WHERE TEL = ?";
	private final String SELECTID = "SELECT * FROM USERS U JOIN RESUME R ON U.TEL = R.TEL WHERE RESUME_SEQ=?"	;
	private final String INSERTRESUME = "INSERT INTO RESUME VALUES (?, ?, SYSDATE, ?)";
	private final String SELECTSEQ = "SELECT RESUME_VAL_SEQ.NEXTVAL AS SEQ FROM DUAL";

	// 이력서 등록
	public int insertResume(ResumeVO vo) {
		int n = 0;

		try {
			psmt = conn.prepareStatement(SELECTSEQ);
			rs = psmt.executeQuery();
			if(rs.next()) {
				vo.setResume_seq(rs.getString("SEQ"));
			}
					
			psmt = conn.prepareStatement(INSERTRESUME);
			psmt.setString(1, vo.getResume_seq());	
			psmt.setString(2, vo.getResume_name());
			psmt.setString(3, vo.getTel());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} return n;
	}
	
	
	
	
	
	
	
	public List<ResumeVO> selectedTel(String tel) {
	
		List<ResumeVO> list= new ArrayList<ResumeVO>();
		ResumeVO vo = new ResumeVO();
		try {
			psmt = conn.prepareStatement(SELECTINF);
			psmt.setString(1, tel);
			rs = psmt.executeQuery();
			while(rs.next()) {
				vo = new ResumeVO();
				vo.setResume_seq(rs.getString("resume_seq"));
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
				return vo;
			}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}
	return null;
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
