package com.staff;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.gate.Controller;
import com.gate.ModelAndView;
import com.google.gson.Gson;
import com.util.HashMapBinder;


import com.util.HashMapBinder;
import org.apache.log4j.Logger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StaffController implements Controller {
	Logger logger = Logger.getLogger(StaffController.class);
	String crud = null;
	StaffLogic staffLogic = null;
	Gson gson = null;
	public StaffController(String crud) {
		this.crud = crud;
		staffLogic = new StaffLogic();
	}


	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView mav = new ModelAndView();
/////////////////////////////////////////// [[ 경애 시작 ]] /////////////////////////////////////////////////
		if("staffSalaryDetail".equals(crud)) {
			logger.info("staffSalaryDetail 호출 성공");
			Map<String,Object> staffSalaryDetail = new HashMap<String, Object>();
			Map<String,Object> rMap = new HashMap<String, Object>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bind(staffSalaryDetail);
			logger.info("CON"+staffSalaryDetail);
			rMap =  staffLogic.staffSalaryDetail(staffSalaryDetail);
			logger.info("===="+staffSalaryDetail);
			if(staffSalaryDetail != null) {
				mav.pageMove("forward");
				mav.setViewName("/account/ssdAjax.jsp");
				mav.addObject("staffSalaryDetail", rMap);
			}
		}

/////////////////////////////////////////// [[ 경애 시작 ]] /////////////////////////////////////////////////
		//===============================[[민지 시작 Controller]]=======================================
		else if("SFINS".equals(crud)) {
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
	         String keyword = req.getParameter("keyword");
	        Map<String,String> pMap = new HashMap<String, String>();
	        pMap.put("keyword", keyword);
	        List<HashMap> sfSelList = staffLogic.sfsel(pMap); 
	        logger.info(keyword);
	         mav.addObject("sfSelList", sfSelList);
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
	      else if("SFUPD".equals(crud)) {
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
	       ///////////////////////2019-10-30추가///////////////////////////
	     ///오늘스케줄 -프로모션
	      else if("Todayschedule".equals(crud)) {
	          List<Map<String,Object>> todayschedule = null;
	          Map<String,Object> pMap = new HashMap<>();
	          pMap.put("staff_id", req.getParameter("staff_id"));
	          todayschedule = staffLogic.sftoday(pMap);
	          mav.addObject("todayschedule", todayschedule);
	          mav.pageMove("forward");
	          mav.setViewName("Today.jsp");
	       }
	       
	      else if("TodayTick".equals(crud)) {
	       List<Map<String,Object>> todayscheduletick = null;
	       Map<String,Object> pMap = new HashMap<>();
	       pMap.put("staff_id", req.getParameter("staff_id"));
	       todayscheduletick = staffLogic.sftodaytick(pMap);
	       mav.addObject("todayscheduletick", todayscheduletick);
	       mav.pageMove("forward");
	       mav.setViewName("Today.jsp");
	      }
		
		///그룹class - 프로그램 
		else if("Groupclass".equals(crud)) {
		         List<Map<String,Object>> Groupclass = null;
		         Map<String,Object> pMap = new HashMap<>();
		         pMap.put("staff_id", req.getParameter("staff_id"));
		         Groupclass = staffLogic.sfgroup(pMap);
		         mav.addObject("Groupclass", Groupclass);
		         mav.pageMove("forward");
		         mav.setViewName("Group.jsp");
		      }
	       
	       ///그룹class - 프로모션
		else if("Groupproclass".equals(crud)) {
			List<Map<String,Object>> Grouppoclass = null;
			Map<String,Object> pMap = new HashMap<>();
			pMap.put("staff_id", req.getParameter("staff_id"));
			Grouppoclass = staffLogic.sfprogroup(pMap);
			mav.addObject("Grouppoclass", Grouppoclass);
			mav.pageMove("forward");
			mav.setViewName("Group.jsp");
		}

		//개인 class - 프로그램 
		   else if("soloclass".equals(crud)) {
		         List<Map<String,Object>> soloclass = null;
		         Map<String,Object> pMap = new HashMap<>();
		         pMap.put("staff_id", req.getParameter("staff_id"));
		         soloclass = staffLogic.sfsolo(pMap);
		         mav.addObject("soloclass", soloclass);
		         mav.pageMove("forward");
		         mav.setViewName("Solo.jsp");
		         
		      }
		
	       //개인 class - 프로모션
		   else if("soloproclass".equals(crud)) {
			   List<Map<String,Object>> soloproclass = null;
			   Map<String,Object> pMap = new HashMap<>();
			   pMap.put("staff_id", req.getParameter("staff_id"));
			   soloproclass = staffLogic.sfprosolo(pMap);
			   mav.addObject("soloproclass", soloproclass);
			   mav.pageMove("forward");
			   mav.setViewName("Solo.jsp");
		   }
	       
	       //직급 조건 검색 
           else if("rankdetSEL".equals(crud)) {
               logger.info("직급조건조회 Controller 호출 성공");
               List<Map<String,Object>> rMap = null;
               Map<String,Object> pMap = new HashMap<>();
               pMap.put("rank_name",req.getParameter("rank_name"));
               rMap = staffLogic.rankdetSEL(pMap);
               logger.info(rMap);
               logger.info("controller"+pMap);
               mav.addObject("sfSelList", rMap);
               mav.pageMove("forward");
               mav.setViewName("/staff/staff_card.jsp");
            }
             
	       
	       
	       //=============================[[민지 끝 ]]============================================
	       return mav;
	}
	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String json = null;
		return json;
	}
}

