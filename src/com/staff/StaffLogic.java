package com.staff;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class StaffLogic {
   Logger logger = Logger.getLogger(StaffLogic.class);
   StaffDao staffDao = null;
   public StaffLogic() {
      staffDao = new StaffDao();
   }
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
   public Map<String, Object> sfsel() {
      logger.info("멤버등록조회로직");
      Map<String,Object> pMap =null;
      pMap = staffDao.sfSel();
      return pMap;
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
   Map<String,Object> rMap = new HashMap<String, Object>();
   rMap = staffDao.sfDtl(map);
   return rMap;
}
public int SFUPD(Map<String, Object> pMap) {
     logger.info("수정하기 로직");
      int result = 0;
      result = staffDao.SFUPD(pMap);
      
      if(result==1) {
         logger.info("result==1인경우");
         result = staffDao.SFUPDATE(pMap);
      }
      return result;
}

   
   //===================================[[민지 Logic 끝]]=====================================
}