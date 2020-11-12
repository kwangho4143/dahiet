package com.dahiet.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DAO {
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@ralaxa.tplinkdns.com:1885:xe";
	private String user = "dahiet";
	private String password = "1234";
	
	public Connection conn; //db연결 객체
	
	public DAO() {
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url,user,password);
			System.out.println("DB 연결 성공");
		}
		catch(ClassNotFoundException | SQLException e){
			e.printStackTrace();
		}
	}
	
}