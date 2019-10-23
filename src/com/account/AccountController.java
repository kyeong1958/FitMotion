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

		} else if ("PROSEL2".equals(crud)) {
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

		/*
		 * =============================[[민지 끝]]==============================================================
		 */
		return mav;
	}

	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String json = null;
		return json;
	}


}
