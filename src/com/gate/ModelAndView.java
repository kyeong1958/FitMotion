package com.gate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ModelAndView {
//	HttpServletRequest req = null;
//	HttpServletResponse res = null;
	Object obj = null;
	String name = null;
	//응답이 나갈 페이지이름
	String viewName = null;
	String pageMove = null;
	public ModelAndView() {}
//	public ModelAndView(HttpServletRequest req, HttpServletResponse res) {
//		this.req = req;
//		this.res = res;
//	}
	public void pageMove(String pageMove) {//redirect, forward
		this.pageMove = pageMove;
	}
	public void setViewName(String viewName) {// 응답할 페이지명
		this.viewName = viewName;
	}
	public void addObject(String name, Object obj) {// select해온 값이나 넘겨야 할 값을 담음
		this.name = name;
		this.obj = obj;
	}
}
