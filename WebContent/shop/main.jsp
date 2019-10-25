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
<script type="text/javascript">
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
			  }
		   });
		}
/* 페이지이동  */
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
   <div class="row nav">
      <div class="col-sm-2"style="border:1px soild">
         <img src="../images/fitmotionLogo.png" style="width:180px;margin-left:-15px;"/>
      </div>
   </div>
      <div class="col-lg-1" id="sidebar">
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../schedule/scheduleweekly.jsp')">스케줄</div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../account/profit.jsp')">매출등록</div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../account/spending.jsp')">지출등록</div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../member/memberList.jsp')">회원목록</div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../staff/staffList.jsp')">직원관리</div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../program/TicketMain.jsp')">이용권관리</div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../shop/Lock.jsp')">락커관리</div>
      	 <div class="row sidemenutitle" onClick="menu(''),pagemove('../shop/Good.jsp')">비품관리</div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../shop/Good.jsp')">기구관리</div> 
         <div class="row sidemenutitle" onClick="menu('.history'),pagemove('../schedule/reservation.jsp')">내역관리</div>
         <div class="row history">
            <div class="row sidemenu" id="allsalesmanagement" onClick="pagemove('../schedule/reservation.jsp')">예약내역</div>
            <div class="row sidemenu" id="allsalesmanagement" onClick="pagemove('../member/entranceStatement.jsp')">입장내역</div>
            <div class="row sidemenu" id="allsalesmanagement" onClick="pagemove('../account/BillingHistoryList.jsp')">회원결제내역</div>
         </div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../account/StatisticsSales2.jsp')">통계분석</div>
         <div class="row sidemenutitle" onClick="menu('.account'),pagemove('../account/salesStatement.jsp')">회계관리</div>
         <div class="row account">
            <div class="row sidemenu" id="allsalesmanagement" onClick="pagemove('../account/salesStatement.jsp')">매출내역</div>
            <div class="row sidemenu" id="allsalesmanagement" onClick="pagemove('../account/expenseStatement.jsp')">지출내역</div>
            <div class="row sidemenu" id="allsalesmanagement" onClick="pagemove('../account/staffCalculate.jsp')">직원정산</div>
            <div class="row sidemenu" id="allsalesmanagement" onClick="pagemove('../account/staffSalaryDetail.jsp')">직원별정산</div>
            <div class="row sidemenu" id="allsalesmanagement" onClick="pagemove('../account/centerCalculate.jsp')">센터정산</div>
         </div>
         <div class="row sidemenutitle" id="analysis" onClick="menu('.service')">고객센터</div>
         <div class="row service">
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white">문의사항</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white">공지사항</a></div>
         </div>
      </div>
      <div id="mainboard">
<!-- ================================= [[ 화면전환 ]] =================================================== -->
<!-- ================================= [[ 화면전환 ]] =================================================== -->
      
      </div>
</div>
</body>
</html>