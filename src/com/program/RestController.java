package com.program;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.gate.Controller;
import com.gate.ModelAndView;
import com.google.gson.Gson;

public class RestController implements Controller {
	Logger logger = Logger.getLogger(ProgramController.class);
	String crud = null;
	public RestController(String crud) {
		this.crud = crud;
	}

	@Override
	public String jsonexecute() throws Exception {
		String json = null;
		Gson gson = null;
		if("example".equals(crud)) {
			gson = new Gson();
			json = gson.toJson("a");
		}
		return json;
	}


	@Override
	public ModelAndView execute() throws Exception {
		return null;
	}
}
