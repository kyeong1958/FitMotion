package com.account;

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

public class AccountController implements Controller {
	Logger logger = Logger.getLogger(AccountController.class);
	String crud = null;
	AccountLogic accountLogic = null;
	public AccountController(String crud) {
		this.crud = crud;
		accountLogic = new AccountLogic();
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
	/*=============================[[민지 시작 ]]==============================================================*/	
		else if("pfINS".equals(crud)) {
			logger.info("매출등록 controller");
			int result = 0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			logger.info(pMap);
			logger.info(result);
			result = accountLogic.pfIns(pMap);
			//mav.pageMove("redirect");
			//mav.setViewName("/account/profit.jsp");
		}else if("PROSEL".equals(crud)) {
			logger.info("프로모션 선택시 뿌려주는것컨트롤");
			Map<String,Object> proSel = new HashMap<String, Object>();
			proSel = accountLogic.prosel();
			mav.addObject("proSel", proSel);
			logger.info(proSel);
			mav.pageMove("forward");
			mav.setViewName("/account/selectpro.jsp");
			
		}
		else if("PROSEL2".equals(crud)) {
			logger.info("프로모션 선택시 뿌려주는것컨트롤");
			Map<String,Object> proSel = new HashMap<String, Object>();
			proSel = accountLogic.prosel();
			mav.addObject("proSel", proSel);
			logger.info(proSel);
			mav.pageMove("forward");
			mav.setViewName("/account/selectstaff.jsp");
			
		}
		
		
		
		/*=============================[[민지 끝  ]]==============================================================*/	
		
		return mav;
	}

	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		return null;
	}


}
