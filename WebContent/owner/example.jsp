<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	String test = (String)request.getAttribute("OwnerObject");
	out.print(test);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>example</title>
</head>
<body>
project test!!!
<%=test %>
성공이야??
<%=test %>
<%=test %>
<%=test %>
<%=test %>
</body>
</html>