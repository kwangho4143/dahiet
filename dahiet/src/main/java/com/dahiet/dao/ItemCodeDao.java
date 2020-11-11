package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dahiet.vo.CodeVO;
import com.dahiet.vo.ComVO;
import com.dahiet.vo.ItemCodeVO;

public class ItemCodeDao extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs; // select 후 결과셋 받기

	private final String ITEMCODESELECT = "SELECT ITEMNAME, ITEMID FROM ITEMCODE WHERE GROUPID = 1";
	private final String WITEMCODESELECT = "SELECT ITEMNAME, ITEMID FROM ITEMCODE WHERE GROUPID = 3";

	public List<ItemCodeVO> ITEMCODESELECT(ItemCodeVO vo) {
		List<ItemCodeVO> list = new ArrayList<ItemCodeVO>();
		try {
			psmt = conn.prepareStatement(ITEMCODESELECT);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new ItemCodeVO();
				vo.setItemname(rs.getString("itemname"));
				vo.setItemid(rs.getString("itemid"));
				list.add(vo);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return list;
	}
	public List<ItemCodeVO> WITEMCODESELECT(ItemCodeVO vo) {
		List<ItemCodeVO> wlist = new ArrayList<ItemCodeVO>();
		try {
			psmt = conn.prepareStatement(WITEMCODESELECT);
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new ItemCodeVO();
				vo.setItemname(rs.getString("itemname"));
				vo.setItemid(rs.getString("itemid"));
				wlist.add(vo);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return wlist;
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
