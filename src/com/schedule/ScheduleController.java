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
import com.util.HashMapBinder;

public class ScheduleController implements Controller {
	Logger logger = Logger.getLogger(ScheduleController.class);
	String crud = null;
	String resv = null;
	ScheduleLogic scheduleLogic = null;
	public ScheduleController(String crud) {
		this.crud = crud;
		scheduleLogic = new ScheduleLogic();
	}
		/////////////////////////////////////////// [[ 광현 ]] ///////////////////////////
	/*
	 * public BoardController(String requestName, String crud) { this.requestName =
	 * requestName; this.crud = crud; bLogic = new BoardLogic(); BoardMasterVO bmVO
	 * = new BoardMasterVO(); tot = bLogic.getTot(bmVO); }
	 */	
		/////////////////////////////////////////// [[ 광현 ]] ///////////////////////////
	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		ModelAndView mav = new ModelAndView();
		if ("example".equals(crud)) {
			logger.info("OwnerController 입장함");
			List<String> list = new ArrayList<>();
			mav.pageMove("redirect");
			mav.setViewName("test.fm");
			mav.addObject("test", "test");
		} else if ("test".equals(crud)) {
			mav.pageMove("forward");
			mav.setViewName("/both/example.jsp");
			mav.addObject("제발", "잘됨??");
		}
		/////////////////////////////////////////// [[ 광현 ]] ///////////////////////////
		else if ("reservation".equals(crud)) {
			logger.info("ScheduleController 입장함");
			List<Map<String, Object>>schedule = new ArrayList<>();
			schedule  = scheduleLogic.schedule();
			logger.info(schedule);
			mav.addObject("schedule", schedule);
			mav.pageMove("forward");
			mav.setViewName("reservation.jsp");
		}
		/////////////////////////////////////////// [[ 광현 ]] ///////////////////////////
		return mav;
	}
	/*
	 * @Override public String jsonexecute() throws Exception { return null; }
	 * 
	 * @Override public ModelAndView execute() throws Exception { // TODO
	 * Auto-generated method stub return null; }
	 */
		@Override
		public ModelAndView execute() throws Exception {
			// TODO Auto-generated method stub
			return null;
		}
		@Override
		public String jsonexecute() throws Exception {
			// TODO Auto-generated method stub
			return null;
		}

}
