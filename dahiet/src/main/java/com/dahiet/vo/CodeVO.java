package com.dahiet.vo;

public class CodeVO {
	private String codename; //상세 지역 코드
	private String groupcode; //지역 코드
	private String codevalue; // 지역 한글 이름
	public String getCodename() {
		return codename;
	}
	public void setCodename(String codename) {
		this.codename = codename;
	}
	public String getGroupcode() {
		return groupcode;
	}
	public void setGroupcode(String groupcode) {
		this.groupcode = groupcode;
	}
	public String getCodevalue() {
		return codevalue;
	}
	public void setCodevalue(String codevalue) {
		this.codevalue = codevalue;
	}

}
