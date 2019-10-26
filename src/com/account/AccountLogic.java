package com.account;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class AccountLogic {
	Logger logger = Logger.getLogger(AccountLogic.class);
	AccountDao accountDao = null;
	public AccountLogic () {
		accountDao = new AccountDao();
	}
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
	public Map<String, List<Map<String, String>>> privateProg(String startDate, String endDate, String pageNumm) {
		logger.info("AccountLogic-privateProg 호출성공");
		Map<String, List<Map<String, String>>> privateProg = null;
		privateProg = accountDao.privateProg(startDate, endDate, pageNumm);
		return privateProg;
	}
	//그룹 레슨 통계
	public Map<String, List<Map<String, String>>> publicProg(String startDate, String endDate, String pageNumm) {
		logger.info("AccountLogic-publicProg 호출성공");
		Map<String, List<Map<String, String>>> publicProg = null;
		publicProg = accountDao.publicProg(startDate, endDate, pageNumm);
		return publicProg;
	}
	////////////////수근끝/////////////////

}
