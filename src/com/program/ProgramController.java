package com.program;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.gate.Controller;
import com.gate.ModelAndView;
import com.google.gson.Gson;
import com.util.HashMapBinder;
//주노꺼랑 이관완료
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
			mav.setViewName("/program/example.jsp");
			mav.addObject("제발", "잘됨??");
		}

/*=======================================[[민지 시작 ]]==============================================*/
		else if("taDTL".equals(crud)) {
			Map<String,Object> pMap = new HashMap<>();
			    pMap.put("ticket_num",req.getParameter("ticket_num"));
	            Map<String, Object> rMap = new HashMap<>();
	            rMap = programLogic.taDTL(pMap);
	            logger.info(rMap);
	            mav.addObject("tadtlList", rMap);
	            logger.info(pMap);
	            logger.info(pMap);
	            logger.info(pMap.size());
	            mav.pageMove("forward");
	            mav.setViewName("/program/PromotionAdd.jsp");
		} 
		else if("proSEL".equals(crud)) {
			logger.info("이용권등록조회 Controller 호출 성공");
			List<Map<String,Object>> proList = null;
			proList = programLogic.proSEL();
			mav.addObject("proList", proList);
			mav.pageMove("forward");
			mav.setViewName("/program/prosel.jsp");
		}
		else if("proIns".equals(crud)) {
			int result = 0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			logger.info(pMap);
			result = programLogic.proIns(pMap);
			logger.info(pMap);
			mav.pageMove("redirect");
			mav.setViewName("/program/TicketMain.jsp");
		}
		else if("taSEL2".equals(crud)) {
			logger.info("이용권등록조회 Controller 호출 성공");
			List<Map<String,Object>> taList = null;
			taList = programLogic.taSEL();
			mav.addObject("taList", taList);
			mav.pageMove("forward");
			mav.setViewName("/program/TicketMain.jsp");
		}
		else if("prornk".equals(crud)) {
			logger.info("이용권등록조회 Controller 호출 성공");
			List<Map<String,Object>> taList = null;
			taList = programLogic.taSEL();
			mav.addObject("taList", taList);
			mav.pageMove("forward");
			mav.setViewName("/program/pro_rank.jsp");
		}
		
		else if("tabuyDTL".equals(crud)) {
			Map<String,Object> pMap = new HashMap<>();
			    pMap.put("ticket_num",req.getParameter("ticket_num"));
	            Map<String, Object> rMap = new HashMap<>();
	            rMap = programLogic.taDTL(pMap);
	            logger.info(rMap);
	            mav.addObject("tadtlList", rMap);
	            logger.info(pMap);
	            logger.info(pMap);
	            logger.info(pMap.size());
	            mav.pageMove("forward");
	            mav.setViewName("/program/taprofit.jsp");
		} 
		

		else if("probuyDTL".equals(crud)) {
				Map<String,Object> pMap = new HashMap<>();
			    pMap.put("prom_num",req.getParameter("prom_num"));
	            Map<String, Object> rMap = new HashMap<>();
	            rMap = programLogic.probuyDTL(pMap);
	            logger.info(rMap);
	            mav.addObject("probuylist", rMap);
	            logger.info(pMap);
	            logger.info(pMap);
	            logger.info(pMap.size());
	            mav.pageMove("forward");
	            mav.setViewName("/program/proprofit.jsp");
		} 
		else if("prodelete".equals(crud)) {
			Map<String,Object> pMap = new HashMap<>();
		    pMap.put("prom_num",req.getParameter("prom_num"));
            programLogic.prodelete(pMap);
            logger.info(pMap);
            logger.info(pMap.size());
            mav.pageMove("redirect");
            mav.setViewName("/program/TicketMain.jsp");
		}
		/*이용권관리에서 티켓구매*/
		else if("probuy".equals(crud)) {
			int result =0;
			logger.info("Controller");
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			logger.info("start"+pMap);
		    result =  programLogic.probuy(pMap);
			logger.info(pMap);
			logger.info(result);
			mav.pageMove("redirect");
			mav.setViewName("/program/TicketMain.jsp");
		}
		/*매출등록창에서 티켓구매*/
		else if("profitIns".equals(crud)) {
			int result =0;
			logger.info("Controller");
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			logger.info("start"+pMap);
			result =  programLogic.probuy(pMap);
			logger.info(pMap);
			logger.info(result);
			mav.pageMove("redirect");
			mav.setViewName("/account/profit.jsp");
		}
		
/*=======================================[[민지 끝 ]]==============================================*/
//--------------------------------------- 준호 시작 -----------------------------------------------//
		else if("taINS".equals(crud)) {
			logger.info("이용권등록입력 Controller 호출 성공");
			int result = 0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			logger.info(pMap);
			logger.info("이용권이름:"+pMap.get("ticket_name"));
			result = programLogic.taINS(pMap);
			mav.pageMove("redirect");
			mav.setViewName("/program/TicketMain.jsp");
		}
		else if("taSEL".equals(crud)) {
			logger.info("이용권등록조회 Controller 호출 성공");
			List<Map<String,Object>> taList = null;
			taList = programLogic.taSEL();
			mav.addObject("taList", taList);
			mav.pageMove("forward");
			mav.setViewName("/program/tasel.jsp");
		}
		
	
//--------------------------------------- 준호 끝 -----------------------------------------------//
		return mav;
	}

	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
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
/*=======================================[[경애 시작 ]]==============================================*/
		else if("ticketList".equals(crud)) {
			logger.info("ticketList=============================");
			List<Map<String,Object>> ticketList = new ArrayList<>();
			ticketList = programLogic.ticketList();
			gson = new Gson();
			json = gson.toJson(ticketList);
			logger.info(json);
		}
/*=======================================[[경애 끝 ]]==============================================*/
		return json;
	}


}
