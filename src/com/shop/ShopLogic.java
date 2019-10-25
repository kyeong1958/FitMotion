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
//////////////////////////////////[[ 정은 시작  ]] /////////////////////////////////////////////	
	public String slogin(SupervisorVO sVO) {
		logger.info("login 호출 성공");
		String sv_id = null;
		sv_id = shopDao.sisId(sVO);
		if("아이디가 존재합니다.".equals(sv_id)) {// 아이디가 존재할 때
			sv_id = shopDao.slogin(sVO);
		}
		else {
			sv_id="아이디가 존재하지 않습니다.";
		}
		return sv_id;
	}
	public SupervisorVO proc_login(SupervisorVO sVO) {
		logger.info("proc_login 호출 성공");
		shopDao.proc_login(sVO);
		return sVO;
	}
	public int sINS(Map<String, Object> pMap) {
		int result =0;
		logger.info("회원관리 Logic 호출 성공");
		result = shopDao.sINS(pMap);
		return result;
	
	}
	public List<Map<String, Object>> sSEL() {
		logger.info("회원관리 조회부분 Logic 호출성공");
		List<Map<String, Object>> joinList =null;		
		joinList = shopDao.sSEL();
		return joinList;
	}
	public String sisId(SupervisorVO sVO) {
		logger.info("아이디 검사 호출 성공");
		String sv_id = null;
		sv_id = shopDao.sisId(sVO);
		if("아이디가 존재합니다.".equals(sv_id)) {// 아이디가 존재할 때
			sv_id = shopDao.slogin(sVO);
			
		}
		else {
			sv_id="아이디가 존재하지 않습니다.";
		}
		return sv_id;
	}
	public int slINS(Map<String, Object> pMap) {
		int result =0;
		logger.info("회원관리 Logic 호출 성공");
		result = shopDao.slINS(pMap);
		return result;
	
	}
//////////////////////////////////[[ 정은 끝  ]] /////////////////////////////////////////////	
	
	/*<!--==========================[[민지 시작 ]]=======================================================================  -->*/

	public List<Map<String,Object>> officegdSEL(Map<String, Object> pMap) {
		logger.info("사무용품조회 Logic 호출 성공");
		List<Map<String,Object>> rMap =new ArrayList<>();
		rMap = shopDao.officegdSEL(pMap);
		logger.info(pMap.size());
		logger.info(rMap);
		return rMap;
	}
	/*<!--==========================[[민지 끝 ]]=======================================================================  -->*/



}
