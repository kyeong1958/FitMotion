package com.gate;

import org.apache.log4j.Logger;

import com.account.AccountController;
import com.member.MemberController;
import com.program.ProgramController;
import com.schedule.ScheduleController;
import com.shop.ShopController;
import com.staff.StaffController;

public class ControllerMapping {
	static String crud = null;
	static Logger logger = Logger.getLogger(ControllerMapping.class);
	public static Controller getController(String command) {
		Controller controller = null;
		String commands[] = command.split("/");
		// owner
		String work = commands[0];
		logger.info(work);
		logger.info(commands.length);
		String requestName = commands[1];
		// example
		crud = requestName.substring(0,requestName.lastIndexOf("."));
		logger.info(crud);
		if("member".equals(work)) {
			controller = new MemberController(crud);
		}else if("staff".equals(work)) {
			controller = new StaffController(crud);
		}else if("program".equals(work)) {
			controller = new ProgramController(crud);
		}else if("account".equals(work)) {
			controller = new AccountController(crud);
		}else if("shop".equals(work)) {
			controller = new ShopController(crud);
		}else if("schedule".equals(work)) {
			controller = new ScheduleController(crud);
		}
		return controller;
	}
}
