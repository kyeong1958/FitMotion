package com.account;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class AccountLogic {
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
	

}
