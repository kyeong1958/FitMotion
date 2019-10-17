package com.shop;

import java.util.List;
import java.util.Map;

import com.sun.media.jfxmedia.logging.Logger;

public class ShopLogic {
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
	
	
//////////////////////////////////[[ 경애끝 ]] /////////////////////////////////////////////	
}
