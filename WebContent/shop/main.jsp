<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>

<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
<script>
	var jb = jQuery.noConflict();
</script>
<%@ include file="/common/JEasyUICommon.jsp"%>

    <!-- ============================ [[ 메인폼 ]] ======================================== -->

<html>
<head>
<meta charset="UTF-8">
<title>FitMotion</title>

<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<style type="text/css">
body{
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
				   $("#mainboard").html(data);
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

<div class="container-fluid" >
   <div class="row nav">
      <div class="col-sm-2"style="border:1px soild">
         <img src="../images/fitmotionLogo.png" style="width:180px;margin-left:-15px;"/>
      </div>
   </div>
      <div class="col-lg-1" id="sidebar">
         <div class="row sidemenutitle" onClick="menu('')">스케줄</div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../account/profit.jsp')">매출등록</div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../account/spending.jsp')">지출등록</div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../member/memberList.jsp')">회원목록</div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../staff/staffList.jsp')">직원관리</div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../program/TicketMain.jsp')">이용권관리</div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../shop/Lock.jsp')">락커관리</div>
         <div class="row sidemenutitle" onClick="menu('.history'),pagemove('../schedule/reservation.jsp')">내역관리</div>
         <div class="row history">
            <div class="row sidemenu" id="allsalesmanagement" onClick="pagemove('../schedule/reservation.jsp')">예약내역</div>
            <div class="row sidemenu" id="allsalesmanagement" onClick="pagemove('../member/entranceStatement.jsp')">입장내역</div>
            <div class="row sidemenu" id="allsalesmanagement" onClick="pagemove('../account/BillingHistoryList.jsp')">회원결제내역</div>
         </div>
         <div class="row sidemenutitle" onClick="menu(''),pagemove('../account/StatisticsSales2.jsp')">통계분석</div>
<!--          <div class="row sidemenutitle" onClick="menu(''),pagemove('/account/allsales.fm')">통계분석</div> -->
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