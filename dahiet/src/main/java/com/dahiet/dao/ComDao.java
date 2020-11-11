package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dahiet.vo.ComVO;
import com.dahiet.vo.UserVO;




public class ComDao extends DAO {
	private PreparedStatement psmt; //sql명령어 작성시에 사용
	private ResultSet rs; //select 후 결과셋 받기
	private ComVO vo;
	
	
	private final String COMPANYINSERT = "INSERT INTO COMPANIES(ID,PW,NO,TEL,NAME,ADDR,ITEM,IMG,EMPS,LINK,PROFIT,TYPE) VALUES(?,?,?,?,?,?,?,?,?,?,?,?)";
	private final String COMSELECTLOGIN = "SELECT * FROM COMPANIES WHERE ID = ? ";
	private final String COMUPDATE = 
			"UPDATE COMPANIES SET  PW = ?, NAME= ?, TEL=?, ADDR = ?, LINK= ?, TYPE=?, EMPS=?, PROFIT=?, ITEM=?, IMG=?, WHERE ID = ?";
	
	public int ComUpdate(ComVO vo) {  //수정하기
		int n = 0;
		try {
			psmt = conn.prepareStatement(COMUPDATE);
			psmt.setString(1,vo.getPw());
			psmt.setString(2, vo.getName());
			psmt.setString(3, vo.getTel());
			psmt.setString(4, vo.getAddr());
			psmt.setString(5, vo.getLink());
			psmt.setString(6, vo.getType());
			psmt.setString(7, vo.getEmps());
			psmt.setString(8, vo.getProfit());
			psmt.setString(9, vo.getItem());
			psmt.setString(10, vo.getImg());
			psmt.setString(11, vo.getId());
			
			n = psmt.executeUpdate();
			
		}catch(SQLException e ) {
			e.printStackTrace();
		}finally {
			close();
		}
		return n;
	}
	
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
	
	public ComVO selectLogIn(ComVO vo) {  //한행을 검색할때
		try {
			psmt = conn.prepareStatement(COMSELECTLOGIN);
			psmt.setString(1, vo.getId());

			rs = psmt.executeQuery();
			if(rs.next()) {
				vo.setId(rs.getString("id"));
				vo.setPw(rs.getString("pw"));
				vo.setNo(rs.getString("no"));
				vo.setName(rs.getString("name"));
				vo.setTel(rs.getString("tel"));
				vo.setAddr(rs.getString("addr"));
				vo.setImg(rs.getString("img"));
				vo.setLink(rs.getString("link"));
				vo.setType(rs.getString("type"));
				vo.setEmps(rs.getString("emps"));
				vo.setProfit(rs.getString("profit"));
				vo.setItem(rs.getString("item"));		
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
	}
	

	
	
	
	
}
