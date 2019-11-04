package com.staff;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
//주노꺼랑 이관완료
public class StaffLogic {
   Logger logger = Logger.getLogger(StaffLogic.class);
   StaffDao staffDao = null;
   public StaffLogic() {
      staffDao = new StaffDao();
   }
///////////////////////////////////////////// [[ 경애시작 ]] ////////////////////////////////////////////////////////

	public Map<String, Object> staffSalaryDetail(Map<String, Object> pMap) {
		Map<String, Object> staffSalaryDetail = new HashMap<String, Object>();
		staffSalaryDetail = staffDao.staffSalaryDetail(pMap);
		return staffSalaryDetail;
	}

///////////////////////////////////////////// [[ 경애 끝 ]] ////////////////////////////////////////////////////////
   //===================================[[민지 Logic 시작 ]]=====================================
   public int sfIns(Map<String, Object> pMap) {
      logger.info("등록하기 로직");
      int result = 0;
      result = staffDao.sfIns(pMap);
      
      if(result==1) {
    	  logger.info("result==1인경우");
         result = staffDao.sfInsert(pMap);
      }
      return result;
   }
   public List<HashMap> sfsel(Map<String, String> pMap) {
	   logger.info("멤버등록조회로직");
	   List<HashMap> sfSelList  = staffDao.sfSel(pMap);
	
	   return sfSelList;
   }
 
   public int rkins(Map<String, Object> pMap) {
	  logger.info("rinkname logic 호출성공");
	  int result =0;
	  result = staffDao.rkIns(pMap);
	  return result;
   }
public List<Map<String, Object>> rkSel() {
	List<Map<String,Object>> rankList = null;
	rankList = staffDao.rkSel();
	return rankList;
}
public Map<String, Object> sfDtl(Map<String, Object> map) {
	staffDao.sfDtl(map);
	return map;
}
public int SFUPD(Map<String, Object> pMap) {
	  logger.info("수정하기 로직");
      int result = 0;
      result = staffDao.SFUPD(pMap);
      
      if(result==1) {
    	  logger.info("result==1인경우");
         result = staffDao.SFUPD(pMap);
      }
      return result;
}
///////////////////2019-10-30추가//////////////////////////////////////////
//오늘스케줄-프로모션
public List<Map<String, Object>> sftoday(Map<String, Object> pMap) {
List<Map<String, Object>> todayschedule = new ArrayList<>();
todayschedule = staffDao.sftoday(pMap);
return todayschedule;
}
//오늘스케줄 - 이용권
public List<Map<String, Object>> sftodaytick(Map<String, Object> pMap) {
List<Map<String, Object>> todayscheduletick = new ArrayList<>();
todayscheduletick = staffDao.sftodaytick(pMap);
return todayscheduletick;

}
//그룹 class --프로그램 
public List<Map<String, Object>> sfgroup(Map<String, Object> pMap) {
List<Map<String, Object>> Groupclass = new ArrayList<>();
Groupclass = staffDao.sfgroup(pMap);
return Groupclass;
}
//그룹 class - 프로모션 
public List<Map<String, Object>> sfprogroup(Map<String, Object> pMap) {
List<Map<String, Object>> Grouppoclass = new ArrayList<>();
Grouppoclass = staffDao.sfprogroup(pMap);
return Grouppoclass;
}
//개인 class -프로그램 
public List<Map<String, Object>> sfsolo(Map<String, Object> pMap) {
List<Map<String, Object>> soloclass = new ArrayList<>();
soloclass = staffDao.sfsolo(pMap);
return soloclass;
}
//개인 class -프로모션 
public List<Map<String, Object>> sfprosolo(Map<String, Object> pMap) {
List<Map<String, Object>> soloproclass = new ArrayList<>();
soloproclass = staffDao.sfprosolo(pMap);
return soloproclass;

}
//직급 조건 검색
public List<Map<String, Object>> rankdetSEL(Map<String, Object> pMap) {
logger.info("직급조건조회 Logic 호출 성공");
List<Map<String,Object>> rMap =new ArrayList<>();
rMap = staffDao.rankdetSEL(pMap);
logger.info(pMap.size());
logger.info(rMap);
return rMap;
}

   //===================================[[민지 Logic 끝]]=====================================





}