package com.owner;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.gate.Controller;
import com.gate.ModelAndView;


public class OwnerController implements Controller {
	Logger logger = Logger.getLogger(OwnerController.class);
	String crud = null;
	OwnerLogic ownerLogic = null;
	public OwnerController(String crud) {
		this.crud = crud;
		ownerLogic = new OwnerLogic();
	}

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView mav = new ModelAndView();
		if("example".equals(crud)) {
			logger.info("OwnerController 입장함");
			List<String> list = new ArrayList<>();
			mav.pageMove("redirect");
			mav.setViewName("test.fm");
			mav.addObject("test", "test");
		}
		else if("test".equals(crud)) {
			String result = ownerLogic.test();
			mav.pageMove("forward");
			mav.setViewName("/owner/example");
			mav.addObject("제발", "잘됨??");
		}
		return mav;
	}

	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
