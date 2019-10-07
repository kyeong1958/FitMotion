package com.owner;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.gate.Controller;
import com.gate.ModelAndView;


public class OwnerController implements Controller {
	Logger logger = Logger.getLogger(OwnerController.class);
	String crud = null;
	OwnerLogic ownerLogic = null;
	String key [] = null;
	String key3 [] = null;
	String value [] = null;
	
	public OwnerController(String crud) {
		logger.info("OwnerController 생성자 입장함");
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
			mav.addObject("test1", "test1");
		}
		else if("test".equals(crud)) {
			mav.pageMove("forward");
			mav.setViewName("/owner/example");
			mav.addObject("제발", "잘됨??");
			
		}else if("allsales".equals(crud)) {
			logger.info("OwnerController 호출성공");
			List<Map<String,String>> allsales = null;
			allsales = ownerLogic.allsales();
			
			mav.pageMove("forward");
			mav.setViewName("/owner/Sales");
			mav.addObject("allsales", allsales);
		}
		
		return mav;
	}
	
	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
}
