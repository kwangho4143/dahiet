package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.dahiet.vo.CodeVO;
import com.dahiet.vo.ComVO;

public class CodeDao extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs; //select 후 결과셋 받기
	private CodeVO vo; 
	
	private final String CodeSelect = "SELECT SUBSTR(CODEVALUE, 0, 2) CODEVALUE, CODENAME FROM CODE WHERE CODENAME = GROUPCODE;";
	

}
