package com.program;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.gate.Controller;
import com.gate.ModelAndView;
import com.google.gson.Gson;

public class ProgramController implements Controller {
	Logger logger = Logger.getLogger(ProgramController.class);
	String crud = null;
	ProgramLogic programLogic = null;
	Gson gson = null;
	public ProgramController(String crud) {
		this.crud = crud;
		programLogic = new ProgramLogic();
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
			mav.setViewName("/program/example.jsp");
			mav.addObject("제발", "잘됨??");
		}
		return mav;
	}

	@Override
	public String jsonexecute() throws Exception {
		String json = null;
		List<String> list = new ArrayList<String>();
		list.add("test1");
		list.add("test2");
		list.add("test3");
		list.add("test4");
		if("jsontest".equals(crud)) {
			gson = new Gson();
			json = gson.toJson(list);
		}
		return json;
	}


}
