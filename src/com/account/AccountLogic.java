package com.account;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.google.gson.Gson;

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
		ssTableList = accountDao.ssTableList(date);
		Gson gson = new Gson();
		String ssTableListjson = gson.toJson(ssTableList);
		logger.info("매출테이블"+ssTableListjson);
		salesStatement.put("table",ssTableListjson);
		return salesStatement;
	}
	public Map<String, Object> expenseStatementList(Map<String, Object> date) {
		Map<String, Object> expenseStatement = new HashMap<String, Object>();
		List<Map<String,Object>> geTableList = new ArrayList<Map<String,Object>>();
		Map<String,Object> rMap = accountDao.expenseStatementMap(date);
		expenseStatement.put("up",rMap);
		geTableList = accountDao.geTableList(date);
		Gson gson = new Gson();
		String geTableListjson = gson.toJson(geTableList);
		logger.info("지출테이블"+geTableListjson);
		expenseStatement.put("table",geTableListjson);
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
	/*직원 ,이용권 콤보박스 */
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

	public int progive(Map<String, Object> pMap) {
	int result  = 0;
	result = accountDao.progive(pMap);
	logger.info(pMap);
	logger.info(result);
	return result;
}
	public int proback(Map<String, Object> pMap) {
		int result  = 0;
		result = accountDao.proback(pMap);
		logger.info(pMap);
		logger.info(result);
		return result;
	}
	/*지출 분류 콤보박스*/
	public List<Map<String,Object>> spendingcombo(Map<String, Object> spendingcombo) {
		List<Map<String,Object>> rMap = new ArrayList<Map<String,Object>>();
		rMap = accountDao.spendingcombo(spendingcombo);
		logger.info(rMap);
		return rMap;
	}
	/*지출 insert*/
	public int spendingInsert(Map<String, Object> pMap) {
		int result = 0;
		logger.info("지출등록 입력 부분 Logic 호출 성공");
		logger.info(pMap);
		result = accountDao.spendingInsert(pMap);
		return result;
	}
/*
 * =========================[[민지 끝]]============================================
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
		public Map<String, List<Map<String, String>>> privateProg(Map<String, Object> data) {
		logger.info("AccountLogic-privateProg 호출성공");
		Map<String, List<Map<String, String>>> privateProg = null;
		privateProg = accountDao.privateProg(data);
		return privateProg;
		}
		//그룹 레슨 통계
		public Map<String, List<Map<String, String>>> publicProg(Map<String, Object> data) {
		logger.info("AccountLogic-publicProg 호출성공");
		Map<String, List<Map<String, String>>> publicProg = null;
		publicProg = accountDao.publicProg(data);
		return publicProg;
		}
////////////////수근끝/////////////////
<<<<<<< HEAD
	
////////////////준호 시작/////////////////
	public int expendINS(Map<String, Object> pMap) {
		int result = 0;
		logger.info("pMap");
		logger.info(result);
		result = accountDao.expendINS(pMap);
		return result;
	}
	
	
	
	
////////////////준호 끝/////////////////
	
=======
>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion

}
