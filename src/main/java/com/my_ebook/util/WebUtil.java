package com.my_ebook.util;

import javax.servlet.http.HttpServletRequest;

public class WebUtil {
	//获取页面路径
	public static String getPath(HttpServletRequest request) {
		String requestURI = request.getRequestURI();
		String queryString = request.getQueryString();
		String URL = requestURI + "?" + queryString;
		if (URL.contains("&currentPage")) {
			URL = URL.substring(0, URL.indexOf("&currentPage"));
		}
		return URL;
	}
}