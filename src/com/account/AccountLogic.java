package com.account;

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
	public int pfIns(Map<String, Object> pMap) {
		int result =0;
		logger.info("매출등록 입력 부분 Logic 호출 성공");
		 result = accountDao.pfIns(pMap);
		return result;
	}
	

	public Map<String, Object> prosel() {
		Map<String, Object> prosel = new HashMap<String, Object>();
		prosel = accountDao.prosel();
		return prosel;
	}
}
