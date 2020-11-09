package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dahiet.vo.ResumeStatusVO;

public class ResumeStatusDao extends DAO {
	private PreparedStatement psmt; // sql명령어 작성시에 사용
	private ResultSet rs; // select 후 결과셋 받기
	private ResumeStatusVO vo;

	private String INSERTSTATUS = "INSERT INTO RESUME_STATUS(RESUME_SUPPLY_SEQ,RESUME_SEQ,RECRUIT_SEQ,APPLY_DATE) VALUES(RESUME_APPLY_VAL_SEQ.NEXTVAL,?,?,SYSDATE)";
	private String SELECTWANT = "SELECT * FROM RESUME_STATUS WHERE RECRUIT_SEQ=?";
	
	public List<ResumeStatusVO> select(String recruit_seq) {
		List<ResumeStatusVO> list = new ArrayList<ResumeStatusVO>();
		
		try {
			psmt = conn.prepareStatement(SELECTWANT);
			psmt.setString(1,recruit_seq);

			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new ResumeStatusVO();
				vo.setResume_supply_seq(rs.getString("resume_supply_seq"));
				vo.setResume_seq(rs.getString("resume_seq"));
				vo.setRecruit_seq(rs.getString("recruit_seq"));
				vo.setApply_date(rs.getDate("apply_date"));
				list.add(vo);
			}
			

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	
	}

	public int insert(String vo1, String vo2) {

		int n = 0;
		try {
			psmt = conn.prepareStatement(INSERTSTATUS);
			psmt.setString(1, vo1);
			psmt.setString(2, vo2);

			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}
//	public int insert(RecruitVO vo1, ResumeVO vo2) {
//		int n = 0;
//		try {
//			psmt = conn.prepareStatement(INSERTSTATUS);
//			psmt.setString(1, vo1.getRecruit_seq());
//			psmt.setString(2, vo2.getResume_seq());
//
//			n = psmt.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//
//		return n;
//	
//	}

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
