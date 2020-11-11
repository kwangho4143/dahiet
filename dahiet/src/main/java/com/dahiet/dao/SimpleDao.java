package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dahiet.vo.RecruitVO;
import com.dahiet.vo.SearchVO;
import com.dahiet.vo.SimpleVO;


public class SimpleDao extends DAO {
	private PreparedStatement psmt;
	private ResultSet rs; // select 후 결과셋 받기

	private String SIMPLE_SEARCH = "SELECT R.RECRUIT_SEQ, C.IMG, C.NAME, R.TITLE, "
			+ "FINDCODENAME(R.EMP_TYPE) EMP_TYPE, "
			+ "FINDCODENAME(R.WORK) WORK, R.SALARY FROM RECRUIT R "
			+ "JOIN COMPANIES C ON C.NO = R.NO "; 

	
	public List<RecruitVO> SIMPLE_SEARCH(SearchVO vo) {
		List<RecruitVO> searchlist = new ArrayList<RecruitVO>();
		RecruitVO rvo;
		try {
			String where = "where 1 = 1";
			// 지역검색
			if (vo.getLoc() != null && vo.getLoc().length > 0)
			{ 
				where += " and r.loc in (" ;
				for(int i=0; i<vo.getLoc().length; i++) 
				{ 
					where += "'" + vo.getLoc()[i] + "'"; 
					if (i < vo.getLoc().length - 1)
						where += ",";
				};
				
				where += ")";
			}
			if (vo.getWork() != null && vo.getWork().length > 0)
			{ 
				where += " and r.work in (" ;
				for(int i=0; i<vo.getWork().length; i++) 
				{ 
					where += "'" + vo.getWork()[i] + "'"; 
					if (i < vo.getWork().length - 1)
						where += ",";
				};
				
				where += ")";
			}
			//업종 검색
			if (vo.getItem() != null && vo.getItem().length > 0)
			{ 
				where += " and c.item in (" ;
				for(int i=0; i<vo.getItem().length; i++) 
				{ 
					where += "'" + vo.getItem()[i] + "'"; 
					if (i < vo.getItem().length - 1)
						where += ",";
				};
				
				where += ")";
			}
			// 기업형태
			if (vo.getType() != null && vo.getType().length > 0)
			{ 
				where += " and c.type in (" ;
				for(int i=0; i<vo.getType().length; i++) 
				{ 
					where += "'" + vo.getType()[i] + "'"; 
					if (i < vo.getType().length - 1)
						where += ",";
				};
				
				where += ")";
			}
			// 근무형태
			if (vo.getEmp_type() != null && vo.getEmp_type().length > 0)
			{ 
				where += " and r.emp_type in (" ;
				for(int i=0; i<vo.getEmp_type().length; i++) 
					{ 
					where += "'" + vo.getEmp_type()[i] + "'"; 
					if (i < vo.getEmp_type().length - 1)
						where += ",";
					};
				
				where += ")";
			}
			
			if (vo.getSalary() != null && ! vo.getSalary().isEmpty())
			{ 
				where += " and r.salary >= " +vo.getSalary();
				};
				System.out.println(SIMPLE_SEARCH + where);
				
			psmt = conn.prepareStatement(SIMPLE_SEARCH + where);
			rs = psmt.executeQuery();
			while (rs.next()) {
				rvo = new RecruitVO();
				rvo.setRecruit_seq(rs.getString("recruit_seq"));
				rvo.setImg(rs.getString("img"));
				rvo.setName(rs.getString("name"));
				rvo.setTitle(rs.getString("title"));
				rvo.setEmp_type(rs.getString("emp_type"));
				rvo.setWork(rs.getString("work"));
				rvo.setSalary(rs.getString("salary"));
				
				
				searchlist.add(rvo);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return searchlist;
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
