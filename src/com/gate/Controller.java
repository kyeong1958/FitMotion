package com.gate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse res) throws Exception;
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception;
}
