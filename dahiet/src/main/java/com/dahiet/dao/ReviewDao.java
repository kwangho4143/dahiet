package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dahiet.vo.ReviewVO;

public class ReviewDao extends DAO{
	private PreparedStatement psmt;
	private ResultSet rs;
	private ReviewVO vo;
	
	private final String RE_LI_SELECT = "SELECT NO, TITLE, ID, REDATE FROM REVIEW";

	public List<ReviewVO> RE_LI_SELECT(ReviewVO vo) {
		List<ReviewVO> relists = new ArrayList<ReviewVO>();
		try {
			psmt = conn.prepareStatement(RE_LI_SELECT);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new ReviewVO();
				vo.setNo(rs.getDouble("no"));
				vo.setTitle(rs.getString("title"));
				vo.setId(rs.getString("id"));
				vo.setRedate(rs.getDate("redate"));
				relists.add(vo);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return relists;
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

