package com.staff;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.gate.Controller;
import com.gate.ModelAndView;
import com.util.HashMapBinder;

public class StaffController implements Controller {
   Logger logger = Logger.getLogger(StaffController.class);
   String crud = null;
   StaffLogic staffLogic = null;
   public StaffController(String crud) {
      this.crud = crud;
      staffLogic = new StaffLogic();
   }

   @Override
   public ModelAndView execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
      ModelAndView mav = new ModelAndView();
      //===============================[[민지 시작 Controller]]=======================================
       if("SFINS".equals(crud)) {
         logger.info("회원등록 모달창 등록");
         int result=0;
         Map<String,Object> pMap = new HashMap<>();
         HashMapBinder hmb = new HashMapBinder(req);
         hmb.bindPost(pMap);
         result = staffLogic.sfIns(pMap);
         logger.info(result);
         mav.pageMove("redirect");
         mav.setViewName("/staff/SFSEL.fm");
      }
      else if("SFSEL".equals(crud)) {
         logger.info("회원조회 창 ");
        Map<String,Object> pMap = null;
         //Map<String,Object> rMap = null;
        pMap = staffLogic.sfsel();
         logger.info(pMap.size());
         mav.addObject("sfSelList", pMap);
         mav.pageMove("forward");
         mav.setViewName("/staff/staff_card.jsp");
      }
      else if("SFDTL".equals(crud)) {
    	  Map<String, Object> map = new HashMap<>();
          map.put("staff_id", req.getParameter("staff_id"));
    	  staffLogic.sfDtl(map);
    	  logger.info("=====================>"+map);
    	  logger.info(map.size());
    	  mav.addObject("sfDTList",map);
    	  mav.pageMove("forward");
    	  mav.setViewName("/staff/staffManagementDetail.jsp");
    	  
      }
      else if("RNNAMEINS".equals(crud)) {
    	  logger.info("rank_ins controller 호출성공");
    	  int result =0;
    	  Map<String,Object> pMap = new HashMap<>();
    	  HashMapBinder hmb = new HashMapBinder(req);
    	  hmb.bindPost(pMap);
    	  result = staffLogic.rkins(pMap);
    	  logger.info("result 결과 창 :"+result);
    	  logger.info("pMap:"+pMap);
    	  mav.pageMove("redirect");
    	  mav.setViewName("/staff/RankSEL.fm");
    	  
      }
      else if("RankSEL".equals(crud)) {
    	  List<Map<String,Object>> rankList = null;
    	  rankList = staffLogic.rkSel();    	   	  
    	  mav.addObject("rankList", rankList);
    	  mav.pageMove("forward");
    	  mav.setViewName("/staff/rankNameAdd.jsp");
      }
      else if("SFUPD".contentEquals(crud)) {
    	  logger.info("직원관리수정");
    	  int result = 0;
    	  Map<String,Object> pMap = new HashMap<>();
    	  HashMapBinder hmb = new HashMapBinder(req);
    	  hmb.bindPost(pMap);
    	  result = staffLogic.SFUPD(pMap);
    	  logger.info(result);
    	  mav.pageMove("redirect");
    	  mav.setViewName("/staff/staffManagementDetail.jsp");
    	  
      }

      
       //=============================[[민지 끝 ]]============================================
       return mav;
   }
   @Override
   public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
      return null;
   }
}