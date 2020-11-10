package com.dahiet.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.dahiet.vo.RecruitVO;

public class RecruitDao extends DAO {
	private PreparedStatement psmt; // sql명령어 작성시에 사용
	private ResultSet rs; // select 후 결과셋 받기
	private RecruitVO vo;
	
	private final String SELECTID = "SELECT * FROM COMPANIES C JOIN RECRUIT R ON C.NO = R.NO WHERE RECRUIT_SEQ = ?";
	private final String RECRUITINSERT = "INSERT INTO RECRUIT(RECRUIT_SEQ,NO,TITLE,POSITION,EMP_TYPE,WORK,LOC,QUALIFY,SALARY,NEWBI) "
			+ "VALUES(RECRUIT_VALUE_SEQ.NEXTVAL,?,?,?,?,?,?,?,?,?)";
	private final String RECRUITSELECT = "SELECT * FROM RECRUIT WHERE NO = ?";
	private final String WANT = "SELECT * FROM RECRUIT WHERE RECRUIT_SEQ = ?";
	private final String RECURUITUPDATE = "UPDATE RECRUIT SET TITLE=?, POSITION=?, EMP_TYPE=?, LOC=?, WORK=?, QUALIFY=?, SALARY=?, NEWBI=? WHERE RECRUIT_SEQ=?";
	private final String RECURUITDELETE = "DELETE FROM RECRUIT WHERE RECRUIT_SEQ=?";
	private final String RECURUITDETAILSELECT = "SELECT C.IMG, C.NAME, C.ITEM, C.EMPS, C.TYPE, C.PROFIT, C.LINK"
					+ " ,R.QUALIFY, R.TITLE, R.EMP_TYPE, R.LOC, R.POSITION, R.WORK, "
					+ "C.ID FROM COMPANIES C, RECRUIT R WHERE C.NO = R.NO AND R.RECRUIT_SEQ = ?";
	/* C.회사로고, , C.회사이름, C.업종, C.사원수, C.기업형태, C.매출액, C.회사홈페이지, 
	R.지원자격, R.공고제목, R.근무형태, R.회사위치, R.모집부문, R.담당업무 */
	
	private final String RECURUITRESUMESELECT = "SELECT R.RESUME_NAME, R.RESUME_SEQ FROM RESUME R WHERE R.TEL = ?";
	
		// 이력서 select 목록 가져오기
	public List<RecruitVO> RECURUITRESUMESELECT(RecruitVO vo) {
		List<RecruitVO> rrlists = new ArrayList<RecruitVO>();
		try {
			psmt = conn.prepareStatement(RECURUITRESUMESELECT);
			psmt.setString(1,vo.getTel());
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new RecruitVO();
				vo.setResume_seq(rs.getString("resume_seq"));
				vo.setResume_name(rs.getString("resume_name"));
				rrlists.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return rrlists;
	}
	
	
	public RecruitVO RECURUITDETAILSELECT(RecruitVO vo) {
			try {
				psmt = conn.prepareStatement(RECURUITDETAILSELECT);
				psmt.setString(1, vo.getRecruit_seq());
				rs = psmt.executeQuery();
				
				if(rs.next()) {
					//C. 영역
					vo.setImg(rs.getString("img"));
					vo.setName(rs.getString("name"));
					vo.setItem(rs.getString("item"));
					vo.setEmps(rs.getString("emps"));
					vo.setType(rs.getString("type"));
					vo.setProfit(rs.getString("profit"));
					vo.setLink(rs.getString("link"));
					//R. 영역
					vo.setQualify(rs.getString("qualify"));
					vo.setTitle(rs.getString("title"));
					vo.setEmp_type(rs.getString("emp_type"));
					vo.setLoc(rs.getString("loc"));
					vo.setPosition(rs.getString("position"));
					vo.setWork(rs.getString("work"));
					vo.setId(rs.getString("id"));
//					vo.setNewbi(rs.getString("newbi"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return vo;
	}

	
	
	
	public int RECURUITDELETE(RecruitVO vo) {
		int n = 0;
		try {
			psmt = conn.prepareStatement(RECURUITDELETE);
			psmt.setString(1, vo.getRecruit_seq());
			psmt.executeUpdate();
		
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}
	
	public int RECURUITUPDATE(RecruitVO vo) {
		int n = 0;
		try {
			psmt = conn.prepareStatement(RECURUITUPDATE);
			psmt.setString(9, vo.getRecruit_seq());
			psmt.setString(1, vo.getTitle());
			psmt.setString(2, vo.getPosition());
			
			psmt.setString(3, vo.getEmp_type());
			psmt.setString(4, vo.getLoc());
			psmt.setString(5, vo.getWork());
			
			psmt.setString(6, vo.getQualify());
			psmt.setString(7, vo.getSalary());
			psmt.setString(8, vo.getNewbi());
			
			psmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return n;
	}
	
	public RecruitVO wantselect(RecruitVO vo) {
		
		try {
			psmt = conn.prepareStatement(WANT);
			psmt.setString(1, vo.getRecruit_seq());
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				vo.setNo(rs.getString("no"));
				vo.setTitle(rs.getString("title"));
				vo.setPosition(rs.getString("position"));
				vo.setEmp_type(rs.getString("emp_type"));
				vo.setLoc(rs.getString("loc"));
				vo.setWork(rs.getString("work"));
				vo.setQualify(rs.getString("qualify"));
				vo.setSalary(rs.getString("salary"));
				vo.setNewbi(rs.getString("newbi"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return vo;
	}
	
	
	
	
	
	
	
	public List<RecruitVO> select(RecruitVO vo) {
		List<RecruitVO> rlists = new ArrayList<RecruitVO>();
		try {
			psmt = conn.prepareStatement(RECRUITSELECT);
			psmt.setString(1,vo.getNo());
			rs = psmt.executeQuery();
			while (rs.next()) {
				vo = new RecruitVO();
				vo.setRecruit_seq(rs.getString("recruit_seq"));
				vo.setNo(rs.getString("no"));
				vo.setTitle(rs.getString("title"));
				vo.setPosition(rs.getString("position"));
				vo.setEmp_type(rs.getString("emp_type"));
				vo.setLoc(rs.getString("loc"));
				vo.setWork(rs.getString("work"));
				vo.setQualify(rs.getString("qualify"));
				vo.setSalary(rs.getString("salary"));
				vo.setNewbi(rs.getString("newbi"));
				rlists.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return rlists;
	}
	
	
	
	
	
	public int insert(RecruitVO vo) {
		int n = 0;
		try {
			psmt = conn.prepareStatement(RECRUITINSERT);
			psmt.setString(1, vo.getNo());
			psmt.setString(2, vo.getTitle());
			psmt.setString(3, vo.getPosition());
			psmt.setString(4, vo.getEmp_type());
			psmt.setString(5, vo.getWork());
			psmt.setString(6, vo.getLoc());
			psmt.setString(7, vo.getQualify());
			psmt.setString(8, vo.getSalary());
			psmt.setString(9, vo.getNewbi());
			n = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return n;
	}
	
	public RecruitVO selectinf(String recruit_seq) {
		try {
			psmt = conn.prepareStatement(SELECTID);
			psmt.setString(1, recruit_seq);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				RecruitVO vo = new RecruitVO();
				
				vo.setRecruit_seq(rs.getString("recruit_seq"));
				vo.setNo(rs.getString("no"));
				vo.setTitle(rs.getString("title"));
				vo.setPosition(rs.getString("position"));
				vo.setEmp_type(rs.getString("emp_type"));
				vo.setLoc(rs.getString("loc"));
				vo.setWork(rs.getString("work"));
				vo.setQualify(rs.getString("qualify"));
				vo.setSalary(rs.getString("salary"));
				vo.setNewbi(rs.getString("newbi"));
				
				//
				vo.setImg(rs.getString("img"));
				vo.setName(rs.getString("name"));
				vo.setItem(rs.getString("item"));
				vo.setEmps(rs.getString("emps"));
				vo.setType(rs.getString("type"));
				vo.setProfit(rs.getString("profit"));
				vo.setLink(rs.getString("link"));
				vo.setId(rs.getString("id"));
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close();
	}
	return vo;
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
