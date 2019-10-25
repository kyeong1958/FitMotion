package com.shop;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.gate.Controller;
import com.gate.ModelAndView;
import com.util.HashMapBinder;

public class ShopController implements Controller {
   Logger logger = Logger.getLogger(ShopController.class);
   String crud = null;
   ShopLogic programLogic = null;
   public ShopController(String crud) {
      this.crud = crud;
      programLogic = new ShopLogic();
   }
   
   @Override
   public ModelAndView execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
      ModelAndView mav = new ModelAndView();
      if("example".equals(crud)) {
         logger.info("OwnerController 입장함");
         List<String> list = new ArrayList<>();
         mav.pageMove("redirect");
         mav.setViewName("test.fm");
         mav.addObject("test", "test");
      }
      else if("test".equals(crud)) {
         mav.pageMove("forward");
         mav.setViewName("/both/example.jsp");
         mav.addObject("제발", "잘됨??");
      }
     //================================== [[준호시작]] ===============================================//
      else if("eqINS".equals(crud)) {
         logger.info("기구관리입력");
         int result = 0;
         Map<String,Object> pMap = new HashMap<>();
         HashMapBinder hmb = new HashMapBinder(req);
         hmb.bindPost(pMap);
         logger.info(pMap);
         logger.info("기구이름:"+pMap.get("se_name"));
         result = programLogic.eqINS(pMap);
         logger.info(result);
         mav.pageMove("redirect");
         mav.setViewName("/shop/eqSEL.fm");
      }
      
      else if("eqSEL".equals(crud)) {
         logger.info("기구관리조회");
         List<Map<String,Object>> eqSelList = null;
         eqSelList = programLogic.eqSEL();
         mav.addObject("eqSelList", eqSelList);
         mav.pageMove("forward");
         mav.setViewName("/Equipment/EqCard.jsp");            
      }
      else if("eqUPD".equals(crud)) {
         logger.info("기구관리수정");
         int result =0;
         Map<String,Object> pMap = new HashMap<>();
         HashMapBinder hmb = new HashMapBinder(req);
         hmb.bindPost(pMap);
         result = programLogic.eqUPD(pMap);
         logger.info(result);
         //mav.setViewName("/both/cccc");
         mav.pageMove("redirect");
         mav.setViewName("/shop/eqSEL.fm");
      }
      else if("eqDEL".equals(crud)) {
         logger.info("비품관리 삭제 ");
         int result = 0;
         Map<String,Object> pMap = new HashMap<>();
         HashMapBinder hmb = new HashMapBinder(req);
         hmb.bindPost(pMap);
         result = programLogic.eqDEL(pMap);
         mav.pageMove("redirect");
         mav.setViewName("/shop/eqSEL.fm");
      }
      
      return mav;
   }

   @Override
   public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
      return null;
   }


}