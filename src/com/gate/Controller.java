package com.gate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
<<<<<<< HEAD
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse res) throws Exception;

	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception;
=======
	public ModelAndView execute() throws Exception;
	public String jsonexecute() throws Exception;
>>>>>>> branch 'master' of https://github.com/kyeong1958/FitMotion
}
