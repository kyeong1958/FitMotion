<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 메인폼 ]] ======================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>FitMotion</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
<script>
	var jb = jQuery.noConflict();
</script>
 <%@ include file="../common/JEasyUICommon.jsp"%> 
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<style type="text/css">
	body{
		padding:0%;
	}
	.container-fluid{
		padding:0%;
	}
</style>
</head>
<%
	String login_id = null;
	String login_rank = null;
	if(request.getAttribute("login") != null){
		Map<String,Object> sMap = (Map<String,Object>)request.getAttribute("login"); 
		//HttpSession session = request.getSession();
		login_id = sMap.get("rid").toString();
		login_rank = sMap.get("rank").toString();
		session.setAttribute("login_id", login_id);
		session.setAttribute("login_rank", login_rank);
	}
	String pageMove = "../account/profit.jsp";
	if(request.getParameter("pageChange") != null){
		pageMove = (String)request.getParameter("pageChange");	
	}
	String menu = null;
	if(request.getParameter("menu") != null){
		menu = (String)request.getParameter("menu");
	}
%>
<script type="text/javascript">
/* 로그아웃시 세션제거 */
	function logout(){
		<%session.removeAttribute(login_id);%>
	}
/* 로그아웃시 세션제거 */
	 function menu(menu){
		$(".history").hide();
	    $(".account").hide();
	    $(".service").hide();
		$(menu).show();
	}  
</script>

<body>
<script type="text/javascript">
    $(document).ready(function(){
      $(".history").hide();
      $(".account").hide();
      $(".service").hide(); 
   }); 
</script>
<div class="container-fluid">
  <!-- nav -->
	 <%@ include file="../shop/nav.jsp"%> 
  <!-- nav -->  
  <!-- sidebar -->
	 <%@ include file="../shop/sidebar.jsp"%> 
  <!-- sidebar -->
<!-- ================================= [[ 화면전환 ]] =================================================== -->
      <div id="mainboard">
	      <jsp:include page="<%=pageMove %>" flush='false'/>
      </div>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
</div>
</body>
</html>