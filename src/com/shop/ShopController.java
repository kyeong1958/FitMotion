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
		/*================================[[민지 시작 ]]======================================================*/
		else if("GoodINS".equals(crud)) {
			logger.info("비품관리입력");
			int result = 0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			logger.info(pMap);
			result = programLogic.GoodIns(pMap);
			logger.info(result);
			mav.pageMove("redirect");
			mav.setViewName("/shop/GoodSEL.fm");
		}
		
		else if("GoodSEL".equals(crud)) {
			logger.info("비품관리조회");
			List<Map<String,Object>> gdSelList = new ArrayList<Map<String,Object>>();
			gdSelList = programLogic.GoodSEL();
			mav.addObject("gdSelList", gdSelList);
			mav.pageMove("forward");
			mav.setViewName("/shop/GoodAjax.jsp");				
		}
		else if("GoodUPD".equals(crud)) {
			logger.info("비품관리수정");
			int result =0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			result = programLogic.GoodUPD(pMap);
			logger.info(result);
			mav.pageMove("redirect");
			mav.setViewName("/shop/GoodSEL.fm");
		}
		else if("GoodDEL".equals(crud)) {
			logger.info("비품관리 삭제 ");
			int result = 0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			result = programLogic.GoodDEL(pMap);
			mav.pageMove("redirect");
			mav.setViewName("/shop/GoodSEL.fm");
		}
		/*================================[[민지 끝]]======================================================*/
		
		return mav;
	}

	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		return null;
	}


}
