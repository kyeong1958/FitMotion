package com.schedule;

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

public class ScheduleController implements Controller {
	Logger logger = Logger.getLogger(ScheduleController.class);
	String crud = null;
	ScheduleLogic scheduleLogic = null;
	Gson gson = null;
	public ScheduleController(String crud) {
		this.crud = crud;
		scheduleLogic = new ScheduleLogic();
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
	/////////////////////////////// [[ 경애시작  ]] /////////////////////////////////////
		//예약관리에서  콤보박스에 해당하는 값 가져오기
		else if("scheduleModal".equals(crud)) {
			Map<String,Object> scheduleModal = new HashMap<String, Object>();
			String mem_name = "회원명";
			if(req.getParameter("sm_memname") != null) {
				mem_name = req.getParameter("sm_memname");
			}
			scheduleModal.put("mem_name",mem_name);
			scheduleModal = scheduleLogic.scheduleModal(scheduleModal);
			logger.info(scheduleModal.keySet().toArray().length);
			mav.pageMove("forward");
			mav.setViewName("/schedule/modalcombobox.jsp");
			mav.addObject("scheduleModal", scheduleModal);
		}
			
		//수업 예약했을 시 insert
		else if("scheduleReservation".equals(crud)) {
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bind(pMap);
			String result = scheduleLogic.reservationINS(pMap);
			logger.info(result);
			if("예약불가".equals(result)) {
				mav.pageMove("forward");
				mav.addObject("result", result);
				mav.setViewName("/schedule/schedule_week.jsp");
			}
			else if("예약가능".equals(result)) {
				mav.pageMove("redirect");
				mav.setViewName("/schedule/scheduleList.fm");
			}
		}
		//예약변경 시 UPDATE
		else if("scheduleReservationUPD".equals(crud)) {
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bind(pMap);
			String result = scheduleLogic.reservationUPD(pMap);
			logger.info(result);
			if("예약불가".equals(result)) {
				mav.pageMove("forward");
				mav.addObject("result", result);
				mav.setViewName("/schedule/schedule_week.jsp");
			}
			else if("예약가능".equals(result)) {
				mav.pageMove("redirect");
				mav.setViewName("/schedule/scheduleList.fm");
			}
		}
		//예약목록가져오기
		else if("scheduleList".equals(crud)) {
			List<Map<String,Object>> scheduleList = new ArrayList<Map<String,Object>>();
			Map<String,Object> pMap = new HashMap<String, Object>();
			scheduleList = scheduleLogic.scheduleList();
			if(req.getParameter("year") != null) {
				logger.info(req.getParameter("year"));
				logger.info(req.getParameter("month"));
				logger.info(req.getParameter("week"));
				HashMapBinder hmb = new HashMapBinder(req);
				hmb.bind(pMap);
				scheduleList.add(pMap);
				logger.info(pMap);
			}
			logger.info(scheduleList);
			mav.pageMove("forward");
			mav.setViewName("/schedule/schedule_week.jsp");
			mav.addObject("scheduleList", scheduleList);
		}
		//수업출결사항변경
		else if("caUPD".equals(crud)) {
			int result = 0;
			int appli_num = 0;
			int att_num = 0;
			Map<String,Object> attendMap = new HashMap<String, Object>();
			if(req.getParameter("appli_num") != null && req.getParameter("att_num") != null) {
				appli_num = Integer.parseInt(req.getParameter("appli_num").toString());
				att_num = Integer.parseInt(req.getParameter("att_num").toString());
				attendMap.put("appli_num",appli_num);
				attendMap.put("att_num",att_num);
			}
			result = scheduleLogic.caUPD(attendMap);
			if(result == 1) {
				mav.pageMove("redirect");
				mav.setViewName("/schedule/scheduleList.fm");
			}
		}
/////////////////////////////// [[ 경애 끝 ]] /////////////////////////////////////
		return mav;
	}

	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String json = null;

		return json;
	}


}
