package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dahiet.vo.ResumeVO;

public class ResumeDetailDao extends DAO{
	
	private PreparedStatement psmt; // sql명령어 작성시에 사용
	private ResultSet rs; // select 후 결과셋 받기
	private ResumeVO vo;
		
	private final String LOADINFO = "SELECT * FROM USERS WHERE TEL = ?";
	
	private final String INSERTCAREER = "INSERT INTO CAREER VALUES(RESUME_SUB_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?, ?)";
	
	private final String INSERTLICENSE = "INSERT INTO LICENSE VALUES (RESUME_SUB_SEQ.NEXTVAL, ?, ?, ?, ?, ?)";
	private final String INSERTACTIVITY = "INSERT INTO ACTIVITY VALUES (RESUME_SUB_SEQ.NEXTVAL, ?, ?, ?, ?, ?, ?)";
	
	private final String INSERTAWARD = "INSERT INTO AWARD VALUES (RESUME_SUB_SEQ.NEXTVAL, ?, ?, ?, ?, ?)";
	private final String INSERTLANGUAGE = "INSERT INTO LANGUAGE VALUES (RESUME_SUB_SEQ.NEXTVAL, ?, ?, ?, ?, ?)";
	
	//상세 값넣기
	public void insertLa(ResumeVO vo) {
		try {
			psmt = conn.prepareStatement(INSERTLANGUAGE);
			
			psmt.setString(1, vo.getResume_seq());
			psmt.setString(2, vo.getLag_name());
			psmt.setString(3, vo.getLag_place());
			psmt.setString(4, vo.getLag_score());
			psmt.setDate(5, vo.getLag_date());
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}	
	}

	public void insertAw(ResumeVO vo) {
		try {
			psmt = conn.prepareStatement(INSERTAWARD);
			psmt.setString(1, vo.getResume_seq());
			psmt.setString(2, vo.getAwd_name());
			psmt.setString(3, vo.getAwd_place());
			psmt.setDate(4, vo.getAwd_date());
			psmt.setString(5, vo.getAwd_content());
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}	
	}
	public void insertAc(ResumeVO vo) {
		try {
			psmt = conn.prepareStatement(INSERTACTIVITY);
			psmt.setString(1, vo.getResume_seq());
			psmt.setString(2, vo.getAct_type());
			psmt.setString(3, vo.getAct_name());
			psmt.setString(6, vo.getAct_publish());
			psmt.setDate(4, vo.getAct_startdate());
			psmt.setDate(5, vo.getAct_enddate());
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}	
	}

	public void insertLi(ResumeVO vo) {
		try {
			psmt = conn.prepareStatement(INSERTLICENSE);
			psmt.setString(1, vo.getResume_seq());
			psmt.setString(2, vo.getLic_no());
			psmt.setString(3, vo.getLic_name());
			psmt.setString(4, vo.getLic_place());
			psmt.setDate(5, vo.getLic_getdate());
			
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}	
	}

	public void insertCa(ResumeVO vo) {
		try {
			psmt = conn.prepareStatement(INSERTCAREER);
			psmt.setString(1, vo.getResume_seq());
			psmt.setString(2, vo.getCo_name());
			psmt.setString(3, vo.getDept_name());
			psmt.setString(4, vo.getCa_salary());
			psmt.setDate(5, vo.getCa_hiredate());
			psmt.setDate(6, vo.getCa_retiredate());
			psmt.setString(7, vo.getCa_worked());
			
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}	
	}

	
	// user 테이블의 값 이력서에 불러오기
	public List<ResumeVO> loadInfo(ResumeVO vo) {
		List<ResumeVO> list = new ArrayList<>();
		try {
			psmt = conn.prepareStatement(LOADINFO);
			psmt.setString(1, vo.getTel());
			rs = psmt.executeQuery();
			while(rs.next()) {
				ResumeVO vo1=new ResumeVO();
				vo1.setId(rs.getString("id"));
				vo1.setName(rs.getString("name"));
				vo1.setImag(rs.getString("imag"));
				vo1.setBirth(rs.getDate("birth"));
				vo1.setEmail(rs.getString("email"));
				vo1.setTel(rs.getString("tel"));
				vo1.setAddr(rs.getString("addr"));
				vo1.setUniv(rs.getString("univ"));
				vo1.setMajor(rs.getString("major"));
				vo1.setScore(rs.getString("score"));
				list.add(vo1);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		} return list;
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
