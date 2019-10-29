package com.account;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.gate.Controller;
import com.gate.ModelAndView;
import com.google.gson.Gson;
import com.util.HashMapBinder;

public class AccountController implements Controller {
	Logger logger = Logger.getLogger(AccountController.class);
	String crud = null;
	Gson gson = null;
	AccountLogic accountLogic = null;
	public AccountController(String crud) {
		this.crud = crud;
		accountLogic = new AccountLogic();
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
			mav.setViewName("/both/example.jsp");
			mav.addObject("제발", "잘됨??");
		}
////////////////////////////////// [[ 경애 시작 ]] ///////////////////////////////////////////////////////////////////
		else if("salesStatement".equals(crud)) {
			Map<String,Object> salesStatement = new HashMap<String, Object>();
			Map<String,Object> date = new HashMap<String, Object>();
			String month = null;
			int year = 0;
			int quarter = 0;
			String startDay = null;
			String endDay = null;
			if(req.getParameter("month")!= null) {
				month = req.getParameter("month").toString();
				date.put("month", month);
				salesStatement = accountLogic.salesStatementList(date);
			}
			if(req.getParameter("year") != null) {
				year = Integer.parseInt(req.getParameter("year").toString());
				date.put("year", year);
				salesStatement = accountLogic.salesStatementList(date);
				logger.info(year);
			}
			if(req.getParameter("quarter") != null) {
				quarter = Integer.parseInt(req.getParameter("quarter").toString());
				date.put("quarter", quarter);
				salesStatement = accountLogic.salesStatementList(date);
				logger.info(quarter);
			}
			if(req.getParameter("startDay") != null || req.getParameter("endDay")  != null) {
				if(req.getParameter("startDay") != null) {
					startDay = req.getParameter("startDay").toString();
					date.put("startDay", startDay);
					logger.info(startDay);
				}
				if(req.getParameter("endDay") != null) {
					endDay = req.getParameter("endDay").toString();
					date.put("endDay", endDay);
					logger.info(endDay);
				}
				logger.info(date);
				salesStatement = accountLogic.salesStatementList(date);
				
			}
			logger.info(date);
			mav.pageMove("forward");
			mav.setViewName("/account/salesajax.jsp");
			mav.addObject("salesStatement", salesStatement);
		}
		else if("expenseStatement".equals(crud)) {
			Map<String,Object> expenseStatement = new HashMap<String, Object>();
			Map<String,Object> date = new HashMap<String, Object>();
			String month = null;
			int year = 0;
			int quarter = 0;
			String startDay = null;
			String endDay = null;
			if(req.getParameter("month")!= null) {
				month = req.getParameter("month").toString();
				date.put("month", month);
				expenseStatement = accountLogic.expenseStatementList(date);
			}
			if(req.getParameter("year") != null) {
				year = Integer.parseInt(req.getParameter("year").toString());
				date.put("year", year);
				expenseStatement = accountLogic.expenseStatementList(date);
				logger.info(year);
			}
			if(req.getParameter("quarter") != null) {
				quarter = Integer.parseInt(req.getParameter("quarter").toString());
				date.put("quarter", quarter);
				expenseStatement = accountLogic.expenseStatementList(date);
				logger.info(quarter);
			}
			if(req.getParameter("startDay") != null || req.getParameter("endDay")  != null) {
				if(req.getParameter("startDay") != null) {
					startDay = req.getParameter("startDay").toString();
					date.put("startDay", startDay);
					logger.info(startDay);
				}
				if(req.getParameter("endDay") != null) {
					endDay = req.getParameter("endDay").toString();
					date.put("endDay", endDay);
					logger.info(endDay);
				}
				logger.info(date);
				expenseStatement = accountLogic.expenseStatementList(date);
				
			}
			logger.info(date);
			mav.pageMove("forward");
			mav.setViewName("/account/expenseState.jsp");
			mav.addObject("expenseStatement", expenseStatement);
		}
////////////////////////////////// [[ 경애 끝 ]] ///////////////////////////////////////////////////////////////////
/*
 * =============================[[민지 시작 ]]==============================================================
 */
		else if ("pfINS".equals(crud)) {
			logger.info("매출등록 controller");
			int result = 0;
			Map<String, Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			logger.info(pMap);
			logger.info(result);
			result = accountLogic.pfIns(pMap);
			mav.pageMove("redirect");
			mav.setViewName("/account/profit.jsp");
		} else if ("PROSEL".equals(crud)) {
			logger.info("프로모션 선택시 뿌려주는것컨트롤");
			Map<String, Object> proSel = new HashMap<String, Object>();
			proSel = accountLogic.prosel();
			mav.addObject("proSel", proSel);
			logger.info(proSel);
			mav.pageMove("forward");
			mav.setViewName("/account/selectpro.jsp");

		} 
		/* 직원 콤보 */
		else if ("PROSEL2".equals(crud)) {
			logger.info("프로모션 선택시 뿌려주는것컨트롤");
			Map<String, Object> proSel = new HashMap<String, Object>();
			proSel = accountLogic.prosel();
			mav.addObject("proSel", proSel);
			//logger.info(proSel);
			mav.pageMove("forward");
			mav.setViewName("/account/selectstaff.jsp");

		} 
		/*회원 결제 내역*/
		else if("probuySel".equals(crud)) {
			List<Map<String,Object>> ProbuySel = new ArrayList<Map<String,Object>>();
			ProbuySel = accountLogic.probuySel();
			mav.addObject("ProbuySel", ProbuySel);
			//logger.info(ProbuySel);
			mav.pageMove("forward");
			mav.setViewName("/account/BillingHistoryList_card.jsp");
		}
		/*양도하는 업데이트 */
		else if("progive".equals(crud)) {
		Map<String,Object> pMap = new HashMap<String, Object>();
		pMap.put("tcip_num", req.getParameter("tcip_num"));
		pMap.put("mem_num", req.getParameter("mem_num"));
		int result = 0;
		result = accountLogic.progive(pMap);
		mav.pageMove("redirect");
		mav.setViewName("/account/probuySel.fm");
		}
		
		/*환불 */
		else if("proback".equals(crud)) {
			Map<String,Object> pMap = new HashMap<String, Object>();
			pMap.put("tcip_num", req.getParameter("tcip_num"));
			int result = 0;
			result = accountLogic.proback(pMap);
			mav.pageMove("redirect");
			mav.setViewName("/account/probuySel.fm");
		}
		/*지출분류 콤보박스*/
		else if("spendingcombo".equals(crud)) {
			logger.info("프로모션 선택시 뿌려주는것컨트롤");
			Map<String, Object> spendingcombo = new HashMap<String, Object>();
			List<Map<String,Object>> rMap = new ArrayList<Map<String,Object>>();
			rMap = accountLogic.spendingcombo(spendingcombo);
			mav.addObject("spendingcombo", rMap);
			logger.info(spendingcombo);
			//logger.info(proSel);
			mav.pageMove("forward");
			mav.setViewName("/account/spending_breakdown.jsp");
		}
		/*지출 insert*/
		else if("spendingInsert".equals(crud)) {
			int result = 0;
			Map<String, Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			logger.info(pMap);
			logger.info(result);
			result = accountLogic.spendingInsert(pMap);
			mav.pageMove("redirect");
			mav.setViewName("/account/spending.jsp");
			
		}
/*
 * =============================[[민지 끝]]==============================================================
 */
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
		
		/*
		* if(date.length() == 6) { year = date.substring(0,4); month =
		* date.substring(4); }else if(date.length() == 5) { year = date.substring(0,4);
		* month = "0"+date.substring(4); } date = year + month;
		* logger.info("year = "+year); logger.info("month = "+month);
		*/
		String startDate = "";
		String endDate = "";
		
		if(req.getParameter("startDate") != null) { 
		startDate = req.getParameter("startDate");
		}
		if(req.getParameter("endDate") != null) { 
		endDate = req.getParameter("endDate");
		}
		privateProg = accountLogic.privateProg(startDate, endDate);
		
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
		
		if(req.getParameter("startDate") != null) { 
		startDate = req.getParameter("startDate");
		}
		if(req.getParameter("endDate") != null) { 
		endDate = req.getParameter("endDate");
		}
		publicProg = accountLogic.publicProg(startDate, endDate);
		
		mav.pageMove("forward");
		mav.setViewName("/account/StatisticsPublicProg.jsp");
		mav.addObject("publicProg", publicProg);
		}
/////////////////////////// 수근끝/////////////////////////////////
		return mav;
	}

	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String json = null;
		return json;
	}


}
