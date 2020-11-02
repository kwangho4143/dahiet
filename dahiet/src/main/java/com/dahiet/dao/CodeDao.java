package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dahiet.vo.CodeVO;
import com.dahiet.vo.ComVO;

public class CodeDao extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs; // select 후 결과셋 받기
	private CodeVO vo;

	private final String CODESELECT = "SELECT SUBSTR(CODEVALUE, 0, 2) CODEVALUE, CODENAME FROM CODE WHERE CODENAME = GROUPCODE";

	public List<CodeVO> CODESELECT(CodeVO vo) {
		List<CodeVO> list = new ArrayList<CodeVO>();
		try {
			psmt = conn.prepareStatement(CODESELECT);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new CodeVO();
				vo.setCodename(rs.getString("codename"));
				vo.setCodevalue(rs.getString("codevalue"));
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
