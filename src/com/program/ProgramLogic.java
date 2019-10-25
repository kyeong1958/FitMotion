package com.program;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class ProgramLogic {
	Logger logger = Logger.getLogger(ProgramLogic.class);
	ProgramDao programDao = null;
	public ProgramLogic () {
		programDao = new ProgramDao();
	}
	public int taINS(Map<String, Object> pMap) {
		logger.info("이용권등록입력 Logic 호출 성공");
		int result = 0;
		result = programDao.taINS(pMap);
		return result;
	}
	public List<Map<String, Object>> taSEL() {
		logger.info("이용권등록조회 Logic 호출 성공");
		List<Map<String, Object>> taList =null;
		taList = programDao.taSEL();
		logger.info("taList"+taList.size());
		return taList;
	}
}
