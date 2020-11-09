package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.dahiet.vo.RecruitVO;
import com.dahiet.vo.ResumeVO;

public class ResumeStatusDao extends DAO {
	private PreparedStatement psmt; // sql명령어 작성시에 사용
	private ResultSet rs; // select 후 결과셋 받기
	private RecruitVO vo;

	private String INSERTSTATUS = "INSERT INTO RESUME_STATUS(RESUME_SUPPLY_SEQ,RESUME_SEQ,RECRUIT_SEQ,APPLY_DATE) VALUES(RESUME_APPLY_VAL_SEQ.NEXTVAL,5,4,SYSDATE)";

	public int insert(RecruitVO vo1, ResumeVO vo2) {
		int n = 0;
		try {
			psmt = conn.prepareStatement(INSERTSTATUS);
			psmt.setString(1, vo1.getRecruit_seq());
			psmt.setString(2, vo2.getResume_seq());

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
