package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dahiet.vo.UserVO;






public class UserDao extends DAO {
	private PreparedStatement psmt; //sql명령어 작성시에 사용
	private ResultSet rs; //select 후 결과셋 받기
	private UserVO vo;
	
	private final String CH = "SELECT ID FROM USERS";
	private final String USERINSERT = "INSERT INTO USERS(ID,PW,NAME,IMAG,BIRTH,TEL,EMAIL,ADDR,UNIV,MAJOR,SCORE) VALUES(?,?,?,?,?,?,?,?,?,?,?)";
	private final String SELECTLOGIN = "SELECT * FROM USERS WHERE ID = ? ";
	private final String USERUPDATE = 
			"UPDATE USERS SET  PW = ?,EMAIL= ?, ADDR = ?, UNIV= ?, MAJOR=?, SCORE=?,IMAG=? WHERE ID = ?";
	
	public int UserUpdate(UserVO vo) {  //수정하기
		int n = 0;
		try {
			psmt = conn.prepareStatement(USERUPDATE);
			psmt.setString(1,vo.getPw());
			psmt.setString(2, vo.getEmail());
			psmt.setString(3, vo.getAddr());
			psmt.setString(4, vo.getUniv());
			psmt.setString(5, vo.getMajor());
			psmt.setString(6, vo.getScore());
			psmt.setString(7, vo.getImage());
			psmt.setString(8, vo.getId());
			
			n = psmt.executeUpdate();
			
		}catch(SQLException e ) {
			e.printStackTrace();
		}finally {
			close();
		}
		return n;
	}
	
	public List<UserVO> check() {  //중복체크
		List<UserVO> list = new ArrayList<>();
		try {
			psmt = conn.prepareStatement(CH);
			rs = psmt.executeQuery();
			if(rs.next()) {
				vo = new UserVO();
				vo.setId(rs.getString("id"));
				list.add(vo);
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}
	
	
	
	
	

	
	public int insert(UserVO vo) {
		int n=0;
		try {
			psmt = conn.prepareStatement(USERINSERT);
			psmt.setString(1,vo.getId());
			psmt.setString(2,vo.getPw());
			psmt.setString(3,vo.getName());
			psmt.setString(4,vo.getImage());
			psmt.setDate(5,vo.getBirth());    
			psmt.setString(6,vo.getTel());  
			psmt.setString(7,vo.getEmail());
			psmt.setString(8,vo.getAddr());
			psmt.setString(9,vo.getUniv());
			psmt.setString(10,vo.getMajor());
			psmt.setString(11,vo.getScore());
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
	public UserVO selectLogIn(UserVO vo) {  //한행을 검색할때
		
		try {
			psmt = conn.prepareStatement(SELECTLOGIN);
			psmt.setString(1, vo.getId());

			rs = psmt.executeQuery();
			if(rs.next()) {
				//vo = new UserVO();
				vo.setPw(rs.getString("pw"));
				vo.setTel(rs.getString("tel"));
				vo.setName(rs.getString("name"));
				vo.setBirth(rs.getDate("birth"));
				vo.setEmail(rs.getString("email"));
				vo.setAddr(rs.getString("addr"));
				vo.setUniv(rs.getString("univ"));
				vo.setMajor(rs.getString("major"));
				vo.setScore(rs.getString("score"));
				vo.setImage(rs.getString("imag"));
				vo.setId(rs.getString("id"));
				
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return vo;
	}
	
	
}
