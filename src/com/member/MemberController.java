package com.member;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.gate.Controller;
import com.gate.ModelAndView;
import com.google.gson.Gson;
import com.util.HashMapBinder;

//주노꺼랑 이관완료
public class MemberController implements Controller {
	Logger logger = Logger.getLogger(MemberController.class);
	String crud = null;
	MemberLogic memberLogic = null;
	Gson gson = null;
	public MemberController(String crud) {
		this.crud = crud;
		memberLogic = new MemberLogic();
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
			mav.setViewName("/owner/example");
			mav.addObject("제발", "잘됨??");
		}
	/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
		//예약관리의 회원검색모달창
		else if("memInfoList".equals(crud)) {
			logger.info("memberSearch 호출성공");
			String mem_name = req.getParameter("mem_name");
			logger.info(mem_name);
			List<Map<String,Object>> memInfoList = null;
			memInfoList = memberLogic.memInfoList(mem_name);
			mav.pageMove("forward");
			mav.setViewName("/schedule/memberSearchTable.jsp");
			mav.addObject("memInfoList", memInfoList);
		}
		//락커관리의 락커배정모달창
		else if("lockmemSearch".equals(crud)) {
			logger.info("lockmemSearch 호출성공");
			String mem_name = req.getParameter("mem_name");
			logger.info(mem_name);
			List<Map<String,Object>> memInfoList = null;
			memInfoList = memberLogic.memInfoList(mem_name);
			mav.pageMove("forward");
			mav.setViewName("/shop/lockMemSearchTable.jsp");
			mav.addObject("memInfoList", memInfoList);
		}
	/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
		/*================================[[민지 Mcontroller 시작 ]]=======================================*/
		else if("BHINS".equals(crud)) {
			logger.info("회원등록 모달창 등록");
			int result=0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			logger.info(result);
			result = memberLogic.bhIns(pMap);
			mav.pageMove("redirect");
			mav.setViewName("/member/BHSEL.fm");
		}
		else if("BHSEL".equals(crud)) {
			logger.info("회원조회 창 ");
			String keyword = req.getParameter("keyword");
			Map<String,String> pMap = new HashMap<String, String>();
			pMap.put("keyword", keyword);
	        List<HashMap> bhSelList = memberLogic.bhsel(pMap); 
			mav.addObject("bhSelList", bhSelList);
			mav.pageMove("forward");
			mav.setViewName("/member/in_005fcard.jsp");
			
		}else if("bhUPD".equals(crud)) {
	         int result =0;
	         Map<String,Object> pMap = new HashMap<>();
	         HashMapBinder hmb = new HashMapBinder(req);
	         hmb.bindPost(pMap);
	         pMap.put("mem_num",req.getParameter("mem_num"));
	         result = memberLogic.bhUPD(pMap);
	         logger.info(result);
	         mav.pageMove("forward");
	         mav.setViewName("/member/memberManagementDetail.jsp");
	      }
	      else if("bhDEL".equals(crud)) {
	         logger.info("회원관리 삭제 ");
	         int result = 0;
	         Map<String,Object> pMap = new HashMap<>();
	         HashMapBinder hmb = new HashMapBinder(req);
	         hmb.bindPost(pMap);
	         result = memberLogic.bhDEL(pMap);
	         mav.pageMove("redirect");
	         mav.setViewName("/member/BHSEL.fm");
	      }
		//매출등록 회원검색
	      else if("BHMSEL".equals(crud)) {
				logger.info("회원조회 창 ");
				List<Map<String,Object>> bhSelList = null;
				bhSelList = memberLogic.bhsel2();
				mav.addObject("bhSelList", bhSelList);
				mav.pageMove("forward");
				mav.setViewName("/account/profitMemSearch.jsp");
	      }
		//billing 회원 검색
	      else if("BIMSEL".equals(crud)) {
	    	  logger.info("회원조회 창 ");
	    	  List<Map<String,Object>> bhSelList = null;
	    	  bhSelList = memberLogic.bhsel2();
	    	  mav.addObject("bhSelList", bhSelList);
	    	  mav.pageMove("forward");
	    	  mav.setViewName("/account/BillingHistoryMemberSearch.jsp");
	      }
	     
		/*================================[[민지 Mcontroller 끝 ]]=======================================*/
	      /*=====================================[[주노 시작 ]]====================================*/
	         else if("bhDET".equals(crud)) {
	            logger.info("회원목록상세보기");
	            Map<String, Object> pMap = new HashMap<>();
	            pMap.put("mem_num",req.getParameter("mem_num"));
	            Map<String, Object> rMap = null;
	            rMap = memberLogic.bhDET(pMap);
	            mav.addObject("bhDetList", rMap);
	            logger.info(pMap);
	            logger.info(pMap.size());
	            mav.pageMove("forward");
	            mav.setViewName("/member/memberManagementDetail.jsp");
	         }
	      
	      /*=====================================[[주노 끝 ]]====================================*/

		return mav;
	}

	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String json = null;
		
		return json;
	}

}
