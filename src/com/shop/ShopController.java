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
import com.google.gson.Gson;
import com.util.HashMapBinder;

public class ShopController implements Controller {
	Logger logger = Logger.getLogger(ShopController.class);
	String crud = null;
	ShopLogic shopLogic = null;
	Gson gson = null;
	public ShopController(String crud) {
		this.crud = crud;
		shopLogic = new ShopLogic();
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
////////////////////////////////// [[ 경애시작 ]] /////////////////////////////////////////////	
		else if("LockerList".equals(crud)) {
			logger.info("LockerList controller");
			List<Map<String,Object>> lockerList = null;
			lockerList = shopLogic.lockerList();
			mav.pageMove("forward");
			mav.setViewName("/shop/LockerList.jsp");
			mav.addObject("lockerList", lockerList);
		}
		else if("lockUPD".equals(crud)) {
			Map<String,Object> pMap = new HashMap<String, Object>();
			int result = 0;
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			result = shopLogic.lockUPD(pMap);
			if(result == 1) {
				mav.pageMove("redirect");
				mav.setViewName("/shop/LockerList.fm");
			}else if(result == 0) {
				mav.pageMove("forward");
				mav.setViewName("/shop/LockerList.jsp");
				mav.addObject("result", result);
			}
		}
		else if("lockStatusUPD".equals(crud)) {
			logger.info("lockStatusUPD");
			Map<String,Object> pMap = new HashMap<String, Object>();
			int result = 0;
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bind(pMap);
			result = shopLogic.lockStatusUPD(pMap);
			logger.info(result);
			if(result == 1) {
				mav.pageMove("redirect");
				mav.setViewName("/shop/LockerList.fm");
			}
		}
		else if("lockINS".equals(crud)) {
			Map<String,Object> pMap = new HashMap<String, Object>();
			int result = 0;
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			result = shopLogic.lockINS(pMap);
			if(result == 1) {
				mav.pageMove("redirect");
				mav.setViewName("/shop/LockerList.fm");
			}
		}
		else if("lockChange".equals(crud)) {
			String lockNum = req.getParameter("lockNum");
			int result = 0;
			result = shopLogic.lockChange(lockNum);
			if(result == 1) {
				mav.pageMove("redirect");
				mav.setViewName("/shop/LockerList.fm");
			}
		}
////////////////////////////////// [[ 경애끝 ]] /////////////////////////////////////////////	
		return mav;
	}

	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		return null;
	}


}
