package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dahiet.vo.ResumeVO;
import com.dahiet.vo.UserVO;

public class ResumeDao extends DAO {

	private PreparedStatement psmt; // sql명령어 작성시에 사용
	private ResultSet rs; // select 후 결과셋 받기
	private ResumeVO vo;

	// user 테이블의 값 불러오기
	private final String LOADINFO = "SELECT * FROM USERS WHERE ID = ?";

	// 값 입력하기 (프로시저 사용?)
//	private final String ~
	
	
	// user 테이블의 값 불러오기
	public ResumeVO loadInfo(ResumeVO vo) {
		try {
			psmt = conn.prepareStatement(LOADINFO);
			psmt.setString(1, vo.getId());
			rs = psmt.executeQuery();
			if(rs.next()) {
				vo.setTel(rs.getString("id"));
				vo.setTel(rs.getString("tel"));
				vo.setTel(rs.getString("pw"));
				vo.setTel(rs.getString("name"));
				vo.setTel(rs.getString("birth"));
				vo.setTel(rs.getString("email"));
				vo.setTel(rs.getString("addr"));
				vo.setTel(rs.getString("tel"));
				vo.setTel(rs.getString("tel"));
				vo.setTel(rs.getString("tel"));
				
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} return vo;
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
