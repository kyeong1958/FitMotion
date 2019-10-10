package com.schedule;

import java.util.List;
import java.util.Map;

public class ScheduleLogic {
	ScheduleDao scheduleDao = null;
	public ScheduleLogic () {
		scheduleDao = new ScheduleDao();
	}
/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
//예약관리에서 콤보박스에 해당하는 값 가져오기
	public Map<String, Object> scheduleModal() {
		Map<String, Object> scheduleModal = scheduleDao.scheduleModal();
		return scheduleModal;
	}
/////////////////////////////// [[ 경애  ]] /////////////////////////////////////
}
