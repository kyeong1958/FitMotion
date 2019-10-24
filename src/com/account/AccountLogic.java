package com.account;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class AccountLogic {
	Logger logger = Logger.getLogger(AccountLogic.class);
	AccountDao accountDao = null;
	public AccountLogic () {
		accountDao = new AccountDao();
	}
//////////////////////////////////[[ 경애 시작 ]] ///////////////////////////////////////////////////////////////////
	public Map<String, Object> salesStatementList(Map<String, Object> date) {
		Map<String, Object> salesStatement = new HashMap<String, Object>();
		List<Map<String,Object>> ssTableList = new ArrayList<Map<String,Object>>();
		Map<String,Object> rMap = accountDao.salesStatementMap(date);
		salesStatement.put("up",rMap);
		//ssTableList = accountDao.ssTableList(month);
		//salesStatement.put("table",ssTableList);
		return salesStatement;
	}
	public Map<String, Object> expenseStatementList(Map<String, Object> date) {
		Map<String, Object> expenseStatement = new HashMap<String, Object>();
		List<Map<String,Object>> esTableList = new ArrayList<Map<String,Object>>();
		Map<String,Object> rMap = accountDao.expenseStatementMap(date);
		expenseStatement.put("up",rMap);
		//esTableList = accountDao.ssTableList(month);
		//salesStatement.put("table",esTableList);
		return expenseStatement;
	}
//////////////////////////////////[[ 경애 끝 ]] ///////////////////////////////////////////////////////////////////
/*
 * =========================[[민지 시작
 * ]]============================================
 */
	public int pfIns(Map<String, Object> pMap) {
		int result = 0;
		logger.info("매출등록 입력 부분 Logic 호출 성공");
		result = accountDao.pfIns(pMap);
		return result;
	}

	public Map<String, Object> prosel() {
		Map<String, Object> prosel = new HashMap<String, Object>();
		prosel = accountDao.prosel();
		return prosel;
	}

	public List<Map<String, Object>> probuySel() {
		List<Map<String, Object>> ProbuySel = new ArrayList<Map<String,Object>>();
		ProbuySel = accountDao.probuysel();
		
		return ProbuySel;
	}
/*
 * =========================[[민지 끝
 * ]]============================================
 */
////////////////수근시작/////////////////
	//전체매출 통계
	public  Map<String,List<Map<String, String>>> allsales(String date) {
	logger.info("AccountLogic-allsales 호출성공");
	Map<String,List<Map<String, String>>> allsales = null;
	allsales = accountDao.allsales(date);
	return allsales;
	}
	//회원 통계
	public  Map<String,List<Map<String, String>>> memsales(String date) {
	logger.info("AccountLogic 호출성공");
	Map<String,List<Map<String, String>>> memsales = null;
	memsales = accountDao.memsales(date);
	return memsales;
	}
	//개인레슨 통계
	public Map<String, List<Map<String, String>>> privateProg(String startDate, String endDate) {
	logger.info("AccountLogic-privateProg 호출성공");
	Map<String, List<Map<String, String>>> privateProg = null;
	privateProg = accountDao.privateProg(startDate, endDate);
	return privateProg;
	}
	//그룹 레슨 통계
	public Map<String, List<Map<String, String>>> publicProg(String startDate, String endDate) {
	logger.info("AccountLogic-publicProg 호출성공");
	Map<String, List<Map<String, String>>> publicProg = null;
	publicProg = accountDao.publicProg(startDate, endDate);
	return publicProg;
	}
////////////////수근끝/////////////////
	

}
