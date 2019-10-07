package com.gate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
	public ModelAndView execute() throws Exception;
	public String jsonexecute() throws Exception;
}
