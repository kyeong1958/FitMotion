package com.gate;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;


public class ActionServlet extends HttpServlet {
	Logger logger = Logger.getLogger(ActionServlet.class);
	private void doService(HttpServletRequest req, HttpServletResponse res)
			throws ServletException,IOException {
		ModelAndView mav = null;
		String json = null;
		String rev = null;
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		// owner/example.fm - controllerMapping에서 이용
		String command = requestURI.substring(contextPath.length()+1);
		logger.info(command);
		Controller controller = null;
		try {
			controller = ControllerMapping.getController(command);
		 
/************************************* 응답 페이지 ***********************************/
		mav = controller.execute(req, res);
		json = controller.jsonexecute(req, res);
		logger.info(mav+" , "+json);
		String pageMove = mav.pageMove;
		String viewName = mav.viewName;
		Object obj = mav.obj;
		String name = mav.name;
		logger.info(pageMove);
		logger.info(viewName);
		logger.info("obj"+obj);
			if(pageMove != null && json == null) {
				if("forward".equals(pageMove)) {
					req.setAttribute(name, obj);
					RequestDispatcher view = req.getRequestDispatcher(viewName);
					logger.info("action view");
					view.forward(req, res);
					logger.info("action forward");
				}else if("redirect".equals(pageMove)) {
					res.sendRedirect(viewName);
				}
			}else if(json != null) {
				logger.info("json");
				req.setAttribute("json", json);
				logger.info(req.getAttribute("json"));
				RequestDispatcher view = req.getRequestDispatcher("../schedule/jsonResult.jsp");
				view.forward(req, res);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
}
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException {
		doService(req,res);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException {
		doService(req,res);
	}	
}
