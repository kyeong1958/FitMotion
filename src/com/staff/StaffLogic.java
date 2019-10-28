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

	public Map<String, Object> staffSalaryDetail(String login_id, String todate) {
		Map<String, Object> staffSalaryDetail = new HashMap<String, Object>();
		staffSalaryDetail = staffDao.staffSalaryDetail(login_id,todate);
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

   //===================================[[민지 Logic 끝]]=====================================





}