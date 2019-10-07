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
	@Override
	public String jsonexecute() throws Exception {
		return null;
	}
}
