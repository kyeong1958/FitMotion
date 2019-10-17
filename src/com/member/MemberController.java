package com.member;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.gate.Controller;
import com.gate.ModelAndView;
import com.google.gson.Gson;


public class MemberController implements Controller {
	Logger logger = Logger.getLogger(MemberController.class);
	String crud = null;
	MemberLogic memberLogic = null;
	Gson gson = null;
	public MemberController(String crud) {
		this.crud = crud;
		memberLogic = new MemberLogic();
	}

	@Override
	public ModelAndView execute() throws Exception {
		ModelAndView mav = new ModelAndView();
		if("example".equals(crud)) {
			logger.info("OwnerController 입장함");
			List<String> list = new ArrayList<>();
			mav.pageMove("redirect");
			mav.setViewName("test.fm");
			mav.addObject("test", "test");
		}
		else if("test".equals(crud)) {
			mav.pageMove("forward");
			mav.setViewName("/owner/example");
			mav.addObject("제발", "잘됨??");
		}
		return mav;
	}

	@Override
	public String jsonexecute() throws Exception {
		String json = null;
		
		return json;
	}

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
