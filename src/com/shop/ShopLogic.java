package com.shop;

package com.shop;

import java.util.ArrayList;
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



}
