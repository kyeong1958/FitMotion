package com.account;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
}
