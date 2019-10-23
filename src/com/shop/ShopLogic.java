package com.shop;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ShopLogic {
	ShopDao programDao = null;
	public ShopLogic () {
		programDao = new ShopDao();
	}
	public int GoodIns(Map<String, Object> pMap) {
		int result = 0;
		result = programDao.GoodIns(pMap);
		return result;
	}
	public List<Map<String, Object>> GoodSEL() {
		List<Map<String,Object>> gdSelList = new ArrayList<Map<String,Object>>();
		gdSelList = programDao.GoodSEL();
		return gdSelList;
	}
	public int GoodUPD(Map<String, Object> pMap) {
		int result = 0;
		result = programDao.GoodUPD(pMap);
		return result;
	}
	public int GoodDEL(Map<String, Object> pMap) {
		int result = 0;
		result = programDao.GoodDEL(pMap);
		return result;
	}
}
