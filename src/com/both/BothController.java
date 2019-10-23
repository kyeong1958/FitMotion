package com.both;

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
import com.vo.EquipmentVO;

public class BothController implements Controller {
	Logger logger = Logger.getLogger(BothController.class);
	String crud = null;
	BothLogic bothLogic = null;
	public BothController(String crud) {
		logger.info("bothcontroller");
		this.crud = crud;
		bothLogic = new BothLogic();
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
			mav.setViewName("/both/example");
			mav.addObject("제발", "잘됨??");
		}
		else if("eqINS".equals(crud)) {
			logger.info("기구관리입력");
			int result = 0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			logger.info(pMap);
			logger.info("기구이름:"+pMap.get("se_name"));
			result = bothLogic.eqIns(pMap);
			logger.info(result);
			mav.pageMove("redirect");
			mav.setViewName("/both/eqSEL.fm");
		}
		
		else if("eqSEL".equals(crud)) {
			logger.info("기구관리조회");
			List<Map<String,Object>> eqSelList = null;
			
			/*
			 * int pageNumber = 0; int pageSize = 0; if(pMap.containsKey("pageNumber")) {
			 * pageNumber = Integer.parseInt(pMap.get("pageNumber").toString()); }
			 * if(pMap.containsKey("pageSize")) { pageSize =
			 * Integer.parseInt(pMap.get("pageSize").toString()); }
			 */
			eqSelList = bothLogic.eqSEL();
			mav.addObject("eqSelList", eqSelList);
			mav.pageMove("forward");
			mav.setViewName("/owner/eqbox");				
		}
		else if("eqUPD".equals(crud)) {
			logger.info("기구관리수정");
			int result =0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			result = bothLogic.eqUPD(pMap);
			logger.info(result);
			//mav.setViewName("/both/cccc");
			mav.pageMove("redirect");
			mav.setViewName("/both/eqSEL.fm");
		}
		else if("eqDEL".equals(crud)) {
			logger.info("기구관리 삭제 ");
			int result = 0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			result = bothLogic.eqDEL(pMap);
			mav.pageMove("redirect");
			mav.setViewName("/both/eqSEL.fm");
		}
		
		
		return mav;
	}


}
