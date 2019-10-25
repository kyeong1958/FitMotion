package com.member;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class MemberLogic {
   Logger logger = Logger.getLogger(MemberLogic.class);
   MemberDao memberDao = null;
   int total =0;
   public MemberLogic() {
      memberDao = new MemberDao();
   }
   public int bhIns(Map<String, Object> pMap) {
      logger.info("등록하기 로직");
      int result = 0;
      result = memberDao.bfIns(pMap);
      return result;
   }
   public List<Map<String, Object>> bhsel() {
      logger.info("멤버등록조회로직");
      List<Map<String,Object>> bhSelList =null;
      bhSelList = memberDao.bhSel();
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
   public int getTot(List<Map<String, Object>> pMap) {
      total = 0;
      total = memberDao.getTotal(pMap);
      return total;
   }
   public List<Map<String, Object>> bhGen() {
      
      return null;
   }
   public Map<String, Object> bhDET(Map<String, Object> pMap) {
      logger.info("회원등록상세보기로직");
      Map<String, Object> rMap = null;
      rMap = memberDao.bhDET(pMap);
      return rMap;
   }

}