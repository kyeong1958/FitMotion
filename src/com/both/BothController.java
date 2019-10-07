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

public class BothController implements Controller {
	Logger logger = Logger.getLogger(BothController.class);
	String crud = null;
	BothLogic bothLogic = null;
	public BothController(String crud) {
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
		else if("goINS".equals(crud)) {
			logger.info("비품입력 Controller 호출 성공");
			int result = 0;
			Map<String,Object> pMap = new HashMap<>();
			logger.info("너타냐");
			HashMapBinder hmb = new HashMapBinder(req);
			logger.info("너타냐12313");
			hmb.bindPost(pMap);
			logger.info("비품이름:"+pMap.get("GO_NAME"));
			result = bothLogic.goINS(pMap);
			logger.info(result);
			mav.pageMove("redirect");
			mav.setViewName("/both/goSEL.fm");
		}
		else if("goSEL".equals(crud)) {
			logger.info("비품조회 Controller 호출 성공");
			List<Map<String,Object>> goList = null;
			goList = bothLogic.goSEL();
			mav.addObject("goList", goList);
			mav.pageMove("forward");
			mav.setViewName("/owner/gosel");
			logger.info("goList"+goList.size());
		}
		else if("goUPD".equals(crud)) {
			logger.info("비품수정 Controller 호출 성공");
			int result =0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			result = bothLogic.goUPD(pMap);
			logger.info(result);
			mav.pageMove("redirect");
			mav.setViewName("/both/goSEL.fm");
		}
		else if("goDEL".equals(crud)) {
			logger.info("비품삭제 Controller 호출 성공 ");
			int result = 0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			result = bothLogic.goDEL(pMap);
			mav.pageMove("redirect");
			mav.setViewName("/both/eqSEL.fm");
		}
			
		return mav;
	}


}
