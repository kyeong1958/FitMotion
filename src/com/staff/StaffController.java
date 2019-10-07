package com.staff;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gate.Controller;
import com.gate.ModelAndView;

public class StaffController implements Controller {
	String crud = null;
	StaffLogic staffLogic = null;
	public StaffController(String crud) {
		this.crud = crud;
		staffLogic = new StaffLogic();
	}

	@Override
	public ModelAndView execute() throws Exception {
		ModelAndView mav = new ModelAndView();
		return mav;
	}
<<<<<<< HEAD

	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
=======
	@Override
	public String jsonexecute() throws Exception {
>>>>>>> branch 'master' of https://github.com/kyeong1958/FitMotion
		return null;
	}
}
