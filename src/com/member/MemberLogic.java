package com.member;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
//주노꺼랑 이관완료
public class MemberLogic {
	Logger logger = Logger.getLogger(MemberLogic.class);
	MemberDao memberDao = null;
	public MemberLogic() {
		memberDao = new MemberDao();
	}
	/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
	//회원검색창에서 회원정보찾는 메소드
	public List<Map<String, Object>> memInfoList(String mem_name) {
		logger.info("memInfoList Logic");
		List<Map<String, Object>> memInfoList = null;
		memInfoList = memberDao.memInfoList(mem_name);
		return memInfoList;
	}
	  public List<Map<String, Object>> bhmSel(String mem_name) {
		   logger.info("멤버등록조회로직");
		   List<Map<String,Object>> bhSelList =null;
		   bhSelList = memberDao.bhmSel(mem_name);
		   return bhSelList;
	   }
	/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
	/*============================[[민지 시작 ]]====================================================*/
	public int bhIns(Map<String, Object> pMap) {
		logger.info("등록하기 로직");
		int result = 0;
		result = memberDao.bfIns(pMap);
		return result;
	}
	public List<HashMap> bhsel(Map<String, String> pMap) {
		logger.info("멤버등록조회로직");
		List<HashMap> bhSelList  = memberDao.bhsel(pMap);
		return bhSelList;
	}
	public int bhUPD(Map<String, Object> pMap) {
	      logger.info(" 업데이트 Logic호출성공");
	      int result = 0;
	      result = memberDao.bhUPD(pMap);
	      return result;
	   }

	   public int bhDEL(Map<String, Object> pMap) {
	      logger.info("bhDEL Logic 호출성공");
	      int result = 0;
	      result = memberDao.bhDEL(pMap);
	      return result;
	   }

	   public List<Map<String, Object>> bhsel2() {
			logger.info("멤버등록조회로직");
			List<Map<String,Object>> bhSelList =null;
			bhSelList = memberDao.bhSel2();
			return bhSelList;
		}
	 
		  ///////////////////////////2019-10-30 추가//////////////////////////////////
	   //이용권관리 
	   public List<Map<String, Object>> probil(Map<String, Object> pMap) {
		   List<Map<String, Object>> probilList = new ArrayList<>();
		   probilList = memberDao.probil(pMap);
			return probilList;
		}
	   
	   //이용권관리 
		public List<Map<String, Object>> ticketbil(Map<String, Object> pMap) {
			 List<Map<String, Object>> ticbilList = new ArrayList<>();
			 ticbilList = memberDao.ticketbil(pMap);
			 logger.info(pMap);
			return ticbilList;
		}
		//성별 검색조건
		public List<Map<String, Object>> Memgender(Map<String, Object> pMap) {
			List<Map<String, Object>> genderList = new ArrayList<>();
			genderList = memberDao.Memgender(pMap);
			 logger.info(pMap);
			return genderList;
		}
		//이용권입장관리 
	    public List<Map<String, Object>> memAttSEL(Map<String, Object> pMap) {
	        logger.info("회원출결목록로직");
	          List<Map<String,Object>> mAttSELList =new ArrayList<Map<String,Object>>();
	          mAttSELList = memberDao.memAttSEL(pMap);
	          return mAttSELList;
	     }
	     
	/*============================[[민지 끝 ]]====================================================*/
	/*==================================[[주노 시작 ]]=================================================*/
	 public Map<String, Object> bhDET(Map<String, Object> pMap) {
	      logger.info("회원등록상세보기로직");
	      Map<String, Object> rMap = new HashMap<>();
	      rMap = memberDao.bhDET(pMap);
	      return rMap;
	   }
	 /*==================================[[주노끝 ]]=================================================*/
}
