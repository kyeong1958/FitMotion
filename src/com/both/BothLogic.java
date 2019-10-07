package com.both;


import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class BothLogic {
	Logger logger = Logger.getLogger(BothLogic.class);
	BothDao bothDao = null;
	public BothLogic() {
		bothDao = new BothDao();
	}
	
	public int goINS(Map<String, Object> pMap) {
		logger.info("비품입력 Logic 호출 성공");
		int result = 0;
		result = bothDao.goINS(pMap);
		return result;
	}

	public List<Map<String, Object>> goSEL() {
		logger.info("비품조회 Logic 호출 성공");
		List<Map<String, Object>> goList =null;
		goList = bothDao.goSEL();
		logger.info("goList"+goList.size());
		return goList;
	}


	public int goUPD(Map<String, Object> pMap) {
		logger.info("비품수정 Logic 호출 성공");
		int result = 0;
		result = bothDao.goUPD(pMap);
		return result;
	
	}

	public int goDEL(Map<String, Object> pMap) {
		logger.info("비품삭제 Logic 호출 성공");
		int result = 0;
		result = bothDao.goDEL(pMap);
		return result;
	}

}
