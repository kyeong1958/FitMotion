package com.member;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
			mav.pageMove("forward");
			mav.setViewName("/owner/example");
			mav.addObject("제발", "잘됨??");
		}
	/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
		//예약관리의 회원검색모달창
		else if("memInfoList".equals(crud)) {
			logger.info("memberSearch 호출성공");
			String mem_name = req.getParameter("mem_name");
			logger.info(mem_name);
			List<Map<String,Object>> memInfoList = null;
			memInfoList = memberLogic.memInfoList(mem_name);
			mav.pageMove("forward");
			mav.setViewName("/schedule/memberSearchTable.jsp");
			mav.addObject("memInfoList", memInfoList);
		}
	/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
		return mav;
	}

	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String json = null;
		
		return json;
	}

}
