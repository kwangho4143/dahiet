package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dahiet.vo.ResumeAppliedVO;
import com.dahiet.vo.ResumeStatusVO;

public class ResumeStatusDao extends DAO {
	private PreparedStatement psmt; // sql명령어 작성시에 사용
	private ResultSet rs; // select 후 결과셋 받기
	

	private String INSERTSTATUS = "INSERT INTO RESUME_STATUS(RESUME_SUPPLY_SEQ,RESUME_SEQ,RECRUIT_SEQ,APPLY_DATE) VALUES(RESUME_APPLY_VAL_SEQ.NEXTVAL,?,?,SYSDATE)";
	private String SELECTWANT = "SELECT * FROM RESUME_STATUS WHERE RECRUIT_SEQ=?";
	private String SELECTAPP = "SELECT CP.NAME,RS.RESUME_NAME,RS.RESUME_SEQ,RC.TITLE,ST.APPLY_DATE"+ 
			" FROM RESUME RS,COMPANIES CP,RECRUIT RC,RESUME_STATUS ST"+ 
			" WHERE RS.RESUME_SEQ = ST.RESUME_SEQ AND RC.RECRUIT_SEQ = ST.RECRUIT_SEQ AND RC.NO = CP.NO"+ 
			" AND ST.RESUME_SEQ IN"+ 
			" (SELECT RESUME_SEQ" + 
			" FROM RESUME_STATUS" + 
			" WHERE RESUME_SEQ IN" + 
			" (SELECT RESUME_SEQ FROM RESUME WHERE TEL = ?))";
	//resume_supply_seq,resume_seq,recruit_seq,apply_date

	public List<ResumeAppliedVO> selectApplied(String tel) {
		List<ResumeAppliedVO> list = new ArrayList<ResumeAppliedVO>();

		try {
			psmt = conn.prepareStatement(SELECTAPP);
			psmt.setString(1, tel);

			rs = psmt.executeQuery();
			while (rs.next()) {
				ResumeAppliedVO vo = new ResumeAppliedVO();
				vo.setName(rs.getString("name"));
				vo.setRname(rs.getString("resume_name"));;
				vo.setSeq(rs.getString("resume_seq"));
				vo.setDate(rs.getDate("apply_date"));
				vo.setTitle(rs.getString("title"));
				list.add(vo);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;

	}

	public List<ResumeStatusVO> select(String recruit_seq) {
		List<ResumeStatusVO> list = new ArrayList<ResumeStatusVO>();

		try {
			psmt = conn.prepareStatement(SELECTWANT);
			psmt.setString(1, recruit_seq);

			rs = psmt.executeQuery();
			while (rs.next()) {
				ResumeStatusVO vo = new ResumeStatusVO();
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
