package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dahiet.vo.SimpleVO;


public class SimpleDao extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs; // select 후 결과셋 받기

	private final String SIMPLESELECT = "SELECT R.RECRUIT_SEQ, C.IMG, C.NAME, R.TITLE, R.EMP_TYPE, R.WORK, R.SALARY FROM COMPANIES C, RECRUIT R WHERE C.NO = R.NO";

	public List<SimpleVO> SIMPLESELECT(SimpleVO vo) {
		List<SimpleVO> list = new ArrayList<SimpleVO>();
		try {
			psmt = conn.prepareStatement(SIMPLESELECT);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new SimpleVO();
				vo.setRecruit_seq(rs.getString("recruit_seq"));
				vo.setImg(rs.getString("img"));
				vo.setName(rs.getString("name"));
				vo.setTitle(rs.getString("title"));
				vo.setEmp_type(rs.getString("emp_type"));
				vo.setWork(rs.getString("work"));
				vo.setSalary(rs.getString("salary"));
				
				
				list.add(vo);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
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
