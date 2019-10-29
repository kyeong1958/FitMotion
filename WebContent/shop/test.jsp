<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
//	int content = rnum.nextInt(1000)*900+100;
//	Random rnum = new Random();
//	int authnum = rnum.nextInt(99999-10000+1)+10000;
//	out.print(authnum);	
	
	
	StringBuffer auth = new StringBuffer();
	Random rnum = new Random();
	for (int i = 0; i < 8; i++) {
	    int rIndex = rnum.nextInt(3);
	    switch (rIndex) {
	    case 0:
	        // a-z
	        auth.append((char) ((int) (rnum.nextInt(26)) + 97));
	        break;
	    case 1:
	        // A-Z
	        auth.append((char) ((int) (rnum.nextInt(26)) + 65));
	        break;
	    case 2:
	        // 0-9
	        auth.append((rnum.nextInt(10)));
	        break;
	    }
	}
	out.print(auth);
%>
<%-- 	console.log(<%=content %>); --%>