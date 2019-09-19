package com.both;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.gate.Controller;
import com.gate.ModelAndView;
import com.google.gson.Gson;

public class RestController implements Controller{
	Logger logger = Logger.getLogger(RestController.class);
	String crud = null;
	Gson gson = null;
	public RestController(String crud) {
		this.crud = crud;
	}

	@Override
	public String jsonexecute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		String json = null;
		if("".equals(crud)) {
			
		}
		return json;
	}

	@Override
	public ModelAndView execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		return null;
	}
}
