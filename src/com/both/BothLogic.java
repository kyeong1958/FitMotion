package com.both;


import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import com.vo.EquipmentVO;


public class BothLogic {
	Logger logger = Logger.getLogger(BothLogic.class);
	BothDao bothDao = null;
	public BothLogic() {
		bothDao = new BothDao();
	}

	public int eqIns(Map<String, Object> pMap) {
		int result =0;
		logger.info("기구관리 입력부분 Logic 호출 성공");
		 result = bothDao.eqIns(pMap);
		return result;
	}

	public List<Map<String, Object>> eqSEL() {
		logger.info("기구관리 조회부분 Logic 호출성공");
		List<Map<String, Object>> eqSelList =null;
		/*
		 * int pageNumber = 0; int pageSize = 0; int start = 0; int end = 0;
		 */
		
		eqSelList = bothDao.eqSel();
		return eqSelList;
	}



	public int eqUPD(Map<String, Object> pMap) {
		logger.info("기구관리 업데이트 Logic호출성공");
		int result = 0;
		result = bothDao.eqUPD(pMap);
		return result;
	}

	public int eqDEL(Map<String, Object> pMap) {
		logger.info("eqDEL Logic 호출성공");
		int result = 0;
		result = bothDao.eqDEL(pMap);
		return result;
	}

	

	

}
