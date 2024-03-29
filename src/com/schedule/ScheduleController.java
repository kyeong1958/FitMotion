package com.schedule;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.gate.Controller;
import com.gate.ModelAndView;
import com.google.gson.Gson;
import com.util.HangulConversion;
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
			Map<String,Object> rMap = new HashMap<String, Object>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bind(scheduleModal);
			rMap = scheduleLogic.scheduleModal(scheduleModal);
			logger.info(scheduleModal.keySet().toArray().length);
			mav.pageMove("forward");
			mav.setViewName("/schedule/modalcombobox.jsp");
			mav.addObject("scheduleModal", rMap);
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
			String login_id = null;
			if(req.getParameter("login_id") != null) {
				login_id = req.getParameter("login_id");
			}else {
				HttpSession session = req.getSession();
				login_id = session.getAttribute("login_id").toString();
			}
			
			logger.info(login_id);
			scheduleList = scheduleLogic.scheduleList(login_id);
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
			}
			attendMap.put("appli_num",appli_num);
			attendMap.put("att_num",att_num);
			result = scheduleLogic.caUPD(attendMap);
			if(result == 1) {
				mav.pageMove("redirect");
				mav.setViewName("/schedule/scheduleList.fm");
			}
		}
		else if("staffList".equals(crud)) {
			List<Map<String,Object>> staffList = new ArrayList<Map<String,Object>>();
			staffList = scheduleLogic.staffList();
			mav.pageMove("forward");
			mav.setViewName("/schedule/staffList.jsp");
			mav.addObject("staffList", staffList);
		}
		else if("reservation".equals(crud)) {
			logger.info("예약컨트롤");
			List<Map<String,Object>> reservation = new ArrayList<>();
			Map<String,Object> pMap = new HashMap<>();
			HashMapBinder hmb = new HashMapBinder(req);
			hmb.bind(pMap);
			String staff_id = null;
			if(pMap.get("staff_id") == null) {
				HttpSession session = req.getSession();
				staff_id = session.getAttribute("login_id").toString();
				pMap.put("staff_id",staff_id);
			}
			logger.info("스케줄컨트럴예약내역 ======= " +pMap);
			logger.info("스케줄컨트럴예약내역 ======= " +pMap.get("keyword"));
			reservation = scheduleLogic.reservation(pMap);
			Gson gson = new Gson();
			String reservationTable = gson.toJson(reservation);
			pMap.put("reservationTable",reservationTable);
			logger.info("reservation  "+reservation);
			logger.info("예약컨트롤mav");
			mav.addObject("reservation", pMap);
			mav.pageMove("forward");
		    mav.setViewName("/schedule/reservationTable.jsp");
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
