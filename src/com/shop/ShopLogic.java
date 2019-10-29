package com.shop;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.vo.SupervisorVO;


public class ShopLogic {
	Logger logger = Logger.getLogger(ShopLogic.class);
	ShopDao shopDao = null;
	public ShopLogic () {
		shopDao = new ShopDao();
	}
//////////////////////////////////[[ 경애시작 ]] /////////////////////////////////////////////	
	public List<Map<String, Object>> lockerList() {
		List<Map<String, Object>> lockerList = null;
		lockerList = shopDao.lockerList();
		return lockerList;
	}
	public int lockUPD(Map<String, Object> pMap) {
		int result = 0;
		result = shopDao.lockUPD(pMap);
		return result;
	}
	public int lockStatusUPD(Map<String, Object> pMap) {
		int result = 0;
		result = shopDao.lockStatusUPD(pMap);
		return result;
	}
	public int lockINS(Map<String, Object> pMap) {
		int result = 0;
		result = shopDao.lockINS(pMap);
		return result;
	}
	public int lockChange(String lockNum) {
		int result = 0;
		result = shopDao.lockChange(lockNum);
		return result;
	}
	public String idFind(Map<String, Object> pMap) {
		String id = null;
		id = shopDao.idFind(pMap);
		return id;
	}
//////////////////////////////////[[ 경애끝 ]] /////////////////////////////////////////////	
//////////////////////////////////[[ 민지시작 ]] /////////////////////////////////////////////
	public int GoodIns(Map<String, Object> pMap) {
		int result = 0;
		result = shopDao.GoodIns(pMap);
		return result;
	}
	public List<Map<String, Object>> GoodSEL() {
		List<Map<String,Object>> gdSelList = new ArrayList<Map<String,Object>>();
		gdSelList = shopDao.GoodSEL();
		return gdSelList;
	}
	public int GoodUPD(Map<String, Object> pMap) {
		int result = 0;
		result = shopDao.GoodUPD(pMap);
		return result;
	}
	public int GoodDEL(Map<String, Object> pMap) {
		int result = 0;
		result = shopDao.GoodDEL(pMap);
		return result;
	}
	
//////////////////////////////////[[ 민지 끝  ]] /////////////////////////////////////////////	
//////////////////////////////////[[ 정은 시작 -> 경애 시작 ]] /////////////////////////////////////////////	
	public Map<String,Object> slogin(Map<String, Object> pMap) {
		Map<String,Object> rMap = new HashMap<String, Object>();
		rMap = shopDao.slogin(pMap);
		return rMap;
	}
	public String idCheck(String joinid) {
		String result = null;
		result = shopDao.idCheck(joinid);
		return result;
	}
	public int join(Map<String, Object> pMap) {
		int result = 0;
		result = shopDao.join(pMap);
		return result;
	}

	

//////////////////////////////////[[ 정은 끝 -> 경애 끝  ]] /////////////////////////////////////////////	



}
