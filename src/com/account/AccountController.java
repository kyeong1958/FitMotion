package com.account;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.gate.Controller;
import com.gate.ModelAndView;

public class AccountController implements Controller {
	Logger logger = Logger.getLogger(AccountController.class);
	String crud = null;
	AccountLogic accountLogic = null;

	public AccountController(String crud) {
		logger.info("AccountController 생성");
		this.crud = crud;
		accountLogic = new AccountLogic();
	}

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView mav = new ModelAndView();
		if ("example".equals(crud)) {
			logger.info("OwnerController 입장함");
			List<String> list = new ArrayList<>();
			mav.pageMove("redirect");
			mav.setViewName("test.fm");
			mav.addObject("test", "test");
		} else if ("test".equals(crud)) {
			mav.pageMove("forward");
			mav.setViewName("/both/example.jsp");
			mav.addObject("제발", "잘됨??");
		}
		/////////////////////////// 수근시작/////////////////////////////////
		// 전체매출 통계
		else if ("allsales".equals(crud)) {
			logger.info("OwnerController-allsales 호출성공");
			Map<String, List<Map<String, String>>> allsales = null;
			String date = "";
			String year = "";
			String month = "";
			
			if(req.getParameter("date") != null) { 
				date = req.getParameter("date");
				if(date.length() == 6) {
					year = date.substring(0,4); 
					month =	date.substring(4); 
				}else if(date.length() == 5) { 
					year = date.substring(0,4); 
					month = "0"+date.substring(4); 
				}
				date = year + month;

	        	logger.info("year = "+year);
	        	logger.info("month = "+month);
			}
			allsales = accountLogic.allsales(date);

			mav.pageMove("forward");

			mav.setViewName("/account/StatisticsSales.jsp");
			mav.addObject("allsales", allsales);
			/*
			 * mav.addObject("year", year); mav.addObject("month", month);
			 */
		}
		// 회원 통계
		else if ("memsales".equals(crud)) {
			logger.info("OwnerController-memsales 호출성공");
			Map<String, List<Map<String, String>>> memsales = null;
			String date = "";
			String year = "";
			String month = "";
			
			if(req.getParameter("date") != null) { 
				date = req.getParameter("date");
				if(date.length() == 6) {
					year = date.substring(0,4); 
					month =	date.substring(4); 
				}else if(date.length() == 5) { 
					year = date.substring(0,4); 
					month = "0"+date.substring(4); 
				}
				date = year + month;

	        	logger.info("year = "+year);
	        	logger.info("month = "+month);
			}
			memsales = accountLogic.memsales(date);

			mav.pageMove("forward");
			mav.setViewName("/account/StatisticsMember.jsp");
			mav.addObject("memsales", memsales);
		}
		// 개인레슨 통계
		// http://localhost:8000/account/privateProg.fm?startDate=20190701&endDate=20191001
		else if ("privateProg".equals(crud)) {
			logger.info("OwnerController-privateProg 호출성공");
			Map<String, List<Map<String, String>>> privateProg = null;
			String startDate = "";
			String endDate = "";
			String pageNumm = "";
			if(req.getParameter("startDate") != null) { 
				startDate = req.getParameter("startDate");
			}
			if(req.getParameter("endDate") != null) { 
				endDate = req.getParameter("endDate");
			}
			if(req.getParameter("pageNumm") != null) { 
				pageNumm = req.getParameter("pageNumm");
			}
			privateProg = accountLogic.privateProg(startDate, endDate, pageNumm);

			mav.pageMove("forward");
			mav.setViewName("/account/StatisticsPrivateProg.jsp");
			mav.addObject("privateProg", privateProg);
		}
		// 그룹수업 통계
		else if ("publicProg".equals(crud)) {
			logger.info("OwnerController-publicProg 호출성공");
			Map<String, List<Map<String, String>>> publicProg = null;
			
			String startDate = "";
			String endDate = "";
			String pageNumm = "";
			
			if(req.getParameter("startDate") != null) { 
				startDate = req.getParameter("startDate");
			}
			if(req.getParameter("endDate") != null) { 
				endDate = req.getParameter("endDate");
			}
			if(req.getParameter("pageNumm") != null) { 
				pageNumm = req.getParameter("pageNumm");
			}
			publicProg = accountLogic.publicProg(startDate, endDate, pageNumm);

			mav.pageMove("forward");
			mav.setViewName("/account/StatisticsPublicProg.jsp");
			mav.addObject("publicProg", publicProg);
		}
		/////////////////////////// 수근끝/////////////////////////////////
		return mav;
	}

	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		return null;
	}

}
