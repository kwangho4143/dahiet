package com.dahiet.common;

import javax.servlet.http.Part;

public class FileUtil {
	public static String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1); // 파일 이름만 넘겨준다
			}
		}
		return "";
	}
}