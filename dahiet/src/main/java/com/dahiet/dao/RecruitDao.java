package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dahiet.vo.RecruitVO;

public class RecruitDao extends DAO {
	private PreparedStatement psmt; // sql명령어 작성시에 사용
	private ResultSet rs; // select 후 결과셋 받기
	private RecruitVO vo;

	private final String RECRUITINSERT = "INSERT INTO RECRUIT(RECRUIT_SEQ,NO,TITLE,POSITION,EMP_TYPE,WORK,LOC,QUALIFY,SALARY) " 
			+"VALUES(RECRUIT_VALUE_SEQ.NEXTVAL,?,?,?,?,?,?,?,?)";

	public int insert(RecruitVO vo) {
		int n = 0;
		try {
			psmt = conn.prepareStatement(RECRUITINSERT);
			psmt.setString(1, vo.getNo());
			psmt.setString(2, vo.getTitle());
			psmt.setString(3, vo.getPosition());
			psmt.setString(4, vo.getEmp_type());
			psmt.setString(5, vo.getWork());
			psmt.setString(6, vo.getLoc());
			psmt.setString(7, vo.getQualify());
			psmt.setString(8, vo.getSalary());
		
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return n;
	}

	private void close() {
		try {
			if (rs != null) {
				rs.close();
				System.out.println("rs 종료");
			}
			if (psmt != null) {
				psmt.close();
				System.out.println("psmt 종료");
			}
			if (conn != null) {
				conn.close();
				System.out.println("conn 종료");
				System.out.println("--------------");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
