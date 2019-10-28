package com.schedule;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;

import javafx.scene.input.DataFormat;

public class ScheduleLogic {
	Logger logger = Logger.getLogger(ScheduleLogic.class);
	ScheduleDao scheduleDao = null;
	public ScheduleLogic () {
		scheduleDao = new ScheduleDao();
	}
/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
//예약관리에서 수업 예약 모달창 오픈 시 콤보박스에 해당하는 값 가져오기
	public Map<String, Object> scheduleModal(Map<String, Object> scheduleModal) {
		scheduleModal = scheduleDao.scheduleModal(scheduleModal);
		return scheduleModal;
	}
//수업 예약했을 시 insert
	public String reservationINS(Map<String, Object> pMap) {
		String result = null;
		String starttime = pMap.get("appli_start_hour")+":"+pMap.get("appli_start_min");
		String endtime = pMap.get("appli_end_hour")+":"+pMap.get("appli_end_min");
		logger.info(starttime);
		logger.info(endtime);
		pMap.put("appli_start_time",starttime);
		pMap.put("appli_end_time",endtime);
		result = scheduleDao.reservationINS(pMap);
		return result;
	}
	public List<Map<String, Object>> scheduleList(String login_id) {
		List<Map<String, Object>> scheduleList = new ArrayList<Map<String,Object>>();
		scheduleList = scheduleDao.scheduleList(login_id);
		return scheduleList;
	}
	public int caUPD(Map<String,Object> attendMap ) {
		int result = 0;
		result = scheduleDao.caUPD(attendMap);
		return result;
	}
	public String reservationUPD(Map<String, Object> pMap) {
		String result = null;
		String starttime = pMap.get("appli_start_hour")+":"+pMap.get("appli_start_min");
		String endtime = pMap.get("appli_end_hour")+":"+pMap.get("appli_end_min");
		logger.info(starttime);
		logger.info(endtime);
		pMap.put("appli_start_time",starttime);
		pMap.put("appli_end_time",endtime);
		result = scheduleDao.reservationUPD(pMap);
		return result;
	}


	
/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
}
