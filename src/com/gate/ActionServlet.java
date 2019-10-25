package com.gate;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.member.MemberController;
import com.program.ProgramController;
import com.program.RestController;
import com.staff.StaffController;

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
		//json = controller.jsonexecute();
		logger.info(mav+" , "+json);
		String pageMove = mav.pageMove;
		String viewName = mav.viewName;
		Object obj = mav.obj;
		String name = mav.name;
		logger.info(pageMove);
			if(pageMove != null && json == null) {
				if("forward".equals(pageMove)) {
					req.setAttribute(name, obj);
					RequestDispatcher view = req.getRequestDispatcher(viewName);
					view.forward(req, res);
				}else if("redirect".equals(pageMove)) {
					res.sendRedirect(viewName);
				}
				
			}else if(json != null) {
				req.setAttribute("json", json);
				RequestDispatcher view = req.getRequestDispatcher("/both/JsonTest.jsp");
				view.forward(req, res);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
//		
//		if(controller instanceof OwnerController) {
//			logger.info("ActionServlet OwnerController 호출 성공");
//			try {
//				mav = controller.execute(req, res);
//				String viewName = mav.viewName;
//				logger.info(mav.viewName);
//				// select해온 값이나 넘겨야 할 값을 담음
//				Object obj = mav.obj;
//				logger.info("pageMove"+mav.pageMove);
//				if("forward".equals(mav.pageMove)) {
//					req.setAttribute("OwnerObject", obj);
//					logger.info(req.getAttribute("OwnerObject"));
//					RequestDispatcher view = req.getRequestDispatcher(viewName+".jsp");
//					view.forward(req, res);
//				}else {
//					logger.info(viewName);
//					res.sendRedirect(viewName);
//				}
//				
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
//		if(controller instanceof StaffController) {
//			logger.info("ActionServlet StaffController 호출 성공");
//			try {
//				mav = controller.execute(req, res);
//				String viewName = mav.viewName;
//				Object obj = mav.obj;
//				if("forward".equals(mav.pageMove)) {
//					req.setAttribute("StaffObject", obj);
//					RequestDispatcher view = req.getRequestDispatcher(viewName+".jsp");
//					view.forward(req, res);
//				}else {
//					res.sendRedirect(viewName);
//				}
//				
//			} catch (Exception e) {
//				e.printStackTrace();
//			}		
//		}
//		if(controller instanceof BothController) {
//			logger.info("ActionServlet BothController 호출 성공");
//			try {
//				mav = controller.execute(req, res);
//				String viewName = mav.viewName;
//				Object obj = mav.obj;
//				if("forward".equals(mav.pageMove)) {
//					req.setAttribute("BothObject", obj);
//					RequestDispatcher view = req.getRequestDispatcher(viewName+".jsp");
//					view.forward(req, res);
//				}else {
//					res.sendRedirect(viewName);
//				}
//				
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//		}
//		if(controller instanceof RestController) {
//			try {
//				String json = controller.jsonexecute();
//				req.setAttribute("json", json);
//				RequestDispatcher view = req.getRequestDispatcher("/json/toJsonPrinter.jsp");//
//				view.forward(req, res);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//	}
}
	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException {
		doService(req,res);
	}
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException {
		doService(req,res);
	}	
}
