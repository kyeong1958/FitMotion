package com.shop;

import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

public class ShopLogic {
   Logger logger = Logger.getLogger(ShopLogic.class);
   ShopDao programDao = null;
   public ShopLogic () {
      programDao = new ShopDao();
   }
   public int eqINS(Map<String, Object> pMap) {
      int result = 0;
      result = programDao.eqINS(pMap);
      return result;
   }
   public List<Map<String, Object>> eqSEL() {
      List<Map<String,Object>> eqSelList = null;
      eqSelList = programDao.eqSEL();
      return eqSelList;
   }
   public int eqUPD(Map<String, Object> pMap) {
      int result = 0;
      result = programDao.eqUPD(pMap);
      return result;
   }
   public int eqDEL(Map<String, Object> pMap) {
	  logger.info("eqDEL Logic 호출성공");
      int result = 0;
      result = programDao.eqDEL(pMap);
      return result;
   }
}