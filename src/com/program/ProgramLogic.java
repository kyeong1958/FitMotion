package com.program;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
//주노꺼랑 이관완료
public class ProgramLogic {
	Logger logger = Logger.getLogger(ProgramLogic.class);
	ProgramDao programDao = null;
	public ProgramLogic () {
		programDao = new ProgramDao();
	}
	/*====================================[[주노 시작 ]]=================================*/
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
	/*====================================[[주노 끝 ]]=================================*/
	/*====================================[[민지시작 ]]=================================*/
	
	public Map<String, Object> taDTL(Map<String, Object> pMap) {
		 logger.info("회원등록상세보기로직");
	      Map<String, Object> rMap = new HashMap<>();
	      rMap = programDao.bhDET(pMap);
		return rMap;
	}
	public List<Map<String, Object>> proSEL() {
		List<Map<String, Object>> proList =null;
		proList = programDao.proSEL();
		logger.info("proList"+proList.size());
		return proList;
	}
	/*====================================[[민지끝 ]]=================================*/
}
