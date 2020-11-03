package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.dahiet.vo.ComVO;



public class ComDao extends DAO {
	private PreparedStatement psmt; //sql명령어 작성시에 사용
	private ResultSet rs; //select 후 결과셋 받기
	private ComVO vo;
	
	
	private final String COMPANYINSERT = "INSERT INTO COMPANIES(ID,PW,NO,TEL,NAME,ADDR,ITEM,IMG,EMPS,LINK,PROFIT,TYPE) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
	
	
	public int insert(ComVO vo) {
		int n=0;
		try {
			psmt = conn.prepareStatement(COMPANYINSERT);
			psmt.setString(1,vo.getId());
			psmt.setString(2,vo.getPw());
			psmt.setString(3,vo.getNo());
			psmt.setString(4,vo.getTel());
			psmt.setString(5,vo.getName());
			psmt.setString(6,vo.getAddr());
			psmt.setString(7,vo.getItem());
			psmt.setString(8,vo.getImg());
			psmt.setString(9,vo.getEmps());
			psmt.setString(10,vo.getLink());
			psmt.setString(11,vo.getProfit());
			psmt.setString(12,vo.getType());
			
			n= psmt.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}

		return n;
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
