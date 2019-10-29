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
<<<<<<< HEAD
/* 로그아웃시 세션제거 */
	function logout(){
		<%session.removeAttribute(login_id);%>
	}
/* 로그아웃시 세션제거 */
	 function menu(menu){
=======
/* 페이지이동  */
	function pagemove(url){
			$.ajax({
				method:'get'
			   ,url:url
			   ,success:function(data){
				//   alert(url);
				   $("#mainboard").html(data);
				    if(url=="../member/memberList.jsp"){
						var formData = $("#f_insert").serialize();
					   $.ajax({
							method:"POST"
							,data:formData
							,url:"/member/BHSEL.fm"
							,success:function(data){
								$("#in_005fcard").html(data);
							}
						}); 
				 	  }
				/* url=="../member/memberList.jsp" 끝 */    
				    else if(url=="../staff/staffList.jsp") {
					   var formData = $("#add_coach_form").serialize();
				    	  $.ajax({
				    		  method:"POST"
				  				,data:formData
				  				,url:"/staff/SFSEL.fm"
				  				,success:function(data){
				  					$("#staff_card").html(data); 
					  				var formData = $("#F_rank").serialize();
					  			    	  $.ajax({
					  			    		  method:"POST"
					  			  				,data:formData
					  			  				,url:"/staff/RankSEL.fm"
					  			  				,success:function(data){
					  			  					//alert("성공");
					  			  					$("#rankNameAdd").html(data);
					  			  				}
					  			    	  }); 
						  		}//end of 전체조회 
						  });
				   }//end of 직원관리 	
				    /* url=="../staff/staffList.jsp" 끝 */
				   else if(url=="../account/profit.jsp"){
					   $.ajax({
	  			    		  method:"POST"
	  			  				,data:formData
	  			  				,url:"/account/PROSEL.fm"
	  			  				,success:function(data){
	  			  					//alert("성공");
	  			  					$("#selectpro").html(data);
			  			  				 $.ajax({
			  		  			    		  method:"POST"
			  		  			  				,data:formData
			  		  			  				,url:"/account/PROSEL2.fm"
			  		  			  				,success:function(data){
			  		  			  					//alert("성공");
			  		  			  					$("#selectpro2").html(data);
			  		  			  			}
			  		  			    	  }); 
	  			  						}
	  			    			     }); 
				  				 }
			/*  url=="../account/profit.jsp" 끝*/
					else if(url=="../shop/Good.jsp"){
						 $.ajax({
								method:"POST"
								,url:"/shop/GoodSEL.fm"
								,success:function(data){
									//alert("성공");
									$("#gdSel").html(data);
								}
							}); 
					} 
				    /* url=="../shop/Good.jsp"끝 */
				    else if(url=="../program/TicketMain.jsp"){
					    	var formData = $("#f_insert").serialize();
							$.ajax({
								method : "POST",
								data : formData,
								url : "/program/taSEL.fm",
								success : function(data) {
									$("#tasel").html(data);
									$.ajax({
										method : "POST",
										url : "/program/prornk.fm",
										success : function(data) {
											$("#pro_rank").html(data);
										}
									});
								}
							});
				    }
				    /* url=="../program/TicketMain.jsp"끝 */
				    else if(url=="../account/BillingHistoryList.jsp"){
						$.ajax({
							method : "POST",
							url : "/account/probuySel.fm",
							success : function(data) {
								$("#BHLgrid").html(data);
							}
						});
			   		 }
				    /*url=="../account/BillingHistoryList.jsp" 끝*/
				   else if(url=='../account/spending.jsp'){
				    	$.ajax({
	  			    		  method:"POST"
	  			  				,url:"/account/spendingcombo.fm"
	  			  				,success:function(data){
	  			  					//alert("성공");
	  			  					$("#breakcombo").html(data);
			  			  				 $.ajax({
			  		  			    		  method:"POST"
			  		  			  				,url:"/account/PROSEL2.fm"
			  		  			  				,success:function(data){
			  		  			  					//alert("성공");
			  		  			  					$("#selectpro2").html(data);
			  		  			  			}
			  		  			    	  }); 
	  			  						}
	  			    			     });  
				    	
				    	/*  url=='../account/spending.jsp' 끝 */
				    }
			  }
		   });
		}
/* 페이지이동  */
	function menu(menu){
>>>>>>> refs/heads/k_min
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