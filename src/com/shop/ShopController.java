package com.shop;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.gate.Controller;
import com.gate.ModelAndView;
import com.google.gson.Gson;
import com.util.HashMapBinder;
import com.vo.SupervisorVO;

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
/*================================[[민지 시작 ]]======================================================*/
		else if("GoodINS".equals(crud)) {
			logger.info("비품관리입력");
			int result = 0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			logger.info(pMap);
			result = shopLogic.GoodIns(pMap);
			logger.info(result);
			mav.pageMove("redirect");
			mav.setViewName("/shop/GoodSEL.fm");
		}
		
		else if("GoodSEL".equals(crud)) {
			logger.info("비품관리조회");
			List<Map<String,Object>> gdSelList = new ArrayList<Map<String,Object>>();
			gdSelList = shopLogic.GoodSEL();
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
			result = shopLogic.GoodUPD(pMap);
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
			result = shopLogic.GoodDEL(pMap);
			mav.pageMove("redirect");
			mav.setViewName("/shop/GoodSEL.fm");
		}
/*================================[[민지 끝]]======================================================*/
/*================================[[정은 시작]]======================================================*/
		else if("sINS".equals(crud)) {
			logger.info("회원입력 : "+req.getParameter("sv_name"));
			int result = 0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			logger.info(pMap);
			logger.info("이름:"+pMap.get("sv_name"));
			result = shopLogic.sINS(pMap);
			logger.info(result);
			mav.pageMove("redirect");
//			mav.setViewName("/both/a.jsp");
			mav.setViewName("/shop/join.fm");
		}
		else if("sSEL".equals(crud)) {
			logger.info("회원관리조회");
			List<Map<String,Object>> joinList = null;	
			joinList = shopLogic.sSEL();
			mav.addObject("joinList", joinList);
			mav.pageMove("forward");
			mav.setViewName("/shop/login");
		}
		else if("slogin".equals(crud)) {
			logger.info("로그인호출 성공");
			List<String> svlist = new ArrayList<>();
			String sv_id = null;
			SupervisorVO sVO = new SupervisorVO();			
			sVO.setSv_id(req.getParameter("sv_id"));
			sVO.setSv_pw(req.getParameter("sv_pw"));
			sv_id = shopLogic.slogin(sVO);
			SupervisorVO svVO = shopLogic.proc_login(sVO);
			HttpSession session = req.getSession();
			logger.info("이름 :"+svVO.getSv_id());
			session.setAttribute("svVO", svVO);
			mav.pageMove("redirect");
			mav.setViewName("/shop/slogin.fm");
		}
		else if("sisId".equals(crud)) {
		logger.info("로그인중복검사호출 성공");
		List<String> svlist = new ArrayList<>();
		Map<String,Object> pMap = new HashMap<>();
		HashMapBinder hmb = new HashMapBinder(req);
		hmb.bindPost(pMap);
		String sv_id = null;
		SupervisorVO sVO = new SupervisorVO();			
		sVO.setSv_id(req.getParameter("sv_id"));
		sv_id = shopLogic.sisId(sVO);
		HttpSession session = req.getSession();
		session.setAttribute("sVO", sVO);
		mav.pageMove("redirect");
		mav.setViewName("/shop/sINS.fm");
	}
		else if("slINS".equals(crud)) {
			logger.info("회원입력 : "+req.getParameter("staff_name"));
			int result = 0;
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bindPost(pMap);
			logger.info(pMap);
			logger.info("이름:"+pMap.get("staff_name"));
			result = shopLogic.slINS(pMap);
			logger.info(result);
			mav.pageMove("redirect");
			mav.setViewName("/shop/join.fm");
		}

		
/*================================[[정은 끝]]======================================================*/
/*<!--==========================[[민지 시작 ]]=======================================================================  -->*/
		else if("officegdSEL".equals(crud)) {
			logger.info("사무용품조회 Controller 호출 성공");
			List<Map<String,Object>> rMap = null;
			Map<String,Object> pMap = new HashMap<>();
			pMap.put("go_type",req.getParameter("go_type"));
			rMap = shopLogic.officegdSEL(pMap);
			logger.info(rMap);
			logger.info("controller"+pMap);
			mav.addObject("gdSelList", rMap);
			mav.pageMove("forward");
			mav.setViewName("/shop/GoodAjax.jsp");
		}
		else if("eqINS".equals(crud)) {
	         logger.info("기구관리입력");
	         int result = 0;
	         Map<String,Object> pMap = new HashMap<>();
	         HashMapBinder hmb = new HashMapBinder(req);
	         hmb.bindPost(pMap);
	         logger.info(pMap);
	         logger.info("기구이름:"+pMap.get("se_name"));
	         result = shopLogic.eqINS(pMap);
	         logger.info(result);
	         mav.pageMove("redirect");
	         mav.setViewName("/shop/eqSEL.fm");
	      }
	      
	      else if("eqSEL".equals(crud)) {
	         logger.info("기구관리조회");
	         List<Map<String,Object>> eqSelList = null;
	         eqSelList = shopLogic.eqSEL();
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
	         result = shopLogic.eqUPD(pMap);
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
	         result = shopLogic.eqDEL(pMap);
	         mav.pageMove("redirect");
	         mav.setViewName("/shop/eqSEL.fm");
	      }
/*<!--==========================[[민지 끝 ]]=======================================================================  -->*/

		return mav;
	}

	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		return null;
	}


}

