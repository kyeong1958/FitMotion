package com.gate;

import org.apache.log4j.Logger;

import com.both.BothController;
import com.owner.OwnerController;
import com.staff.StaffController;

public class ControllerMapping {
	static String crud = null;
	static Logger logger = Logger.getLogger(ControllerMapping.class);
	public static Controller getController(String command) {
		Controller controller = null;
		String commands[] = command.split("/");
		// owner
		String work = commands[0];
		logger.info("work:"+work);
		String requestName = commands[1];
		// example
		crud = requestName.substring(0,requestName.lastIndexOf("."));
		logger.info("crud:"+crud);
		logger.info(crud.length());
		if("owner".equals(work)) {
			controller = new OwnerController(crud);
		}
		else if("staff".equals(work)) {
			controller = new StaffController(crud);
		}
		else if("both".equals(work)) {
			logger.info("controllerMapping 에 both부분 호출성공");
			controller = new BothController(crud);
		}
		return controller;
	}
}
