package com.schedule;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class ScheduleLogic {
	ScheduleDao scheduleDao = null;
	String resv = null;
	public ScheduleLogic () {
		scheduleDao = new ScheduleDao();
	}
	///////////////////////[[광현이꺼]]//////////////////////////
	public List<Map<String, Object>> schedule() {
		List<Map<String, Object>> schedule = null;
		schedule = scheduleDao.schedule();
		return schedule;
	}
	///////////////////////[[광현이꺼]]//////////////////////////
}
