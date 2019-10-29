<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pageChange;
%>
<script type="text/javascript">
	function menu(menu){
		$(".history").hide();
	    $(".account").hide();
	    $(".service").hide();
		$(menu).show();
	}
</script>
 <div class="col-lg-1" id="sidebar">
         <div class="row sidemenutitle" onClick="menu('')">
         	<a href="main.jsp?pageChange=../schedule/scheduleweekly.jsp" style="color:white;text-decoration:none">스케줄</a>
         </div>
         <div class="row sidemenutitle" onClick="menu('')">
         	<a href="main.jsp?pageChange=../account/profit.jsp" style="color:white;text-decoration:none">매출등록</a>
         </div>
         <div class="row sidemenutitle" onClick="menu('')">
         	<a href="main.jsp?pageChange=../account/spending.jsp" style="color:white;text-decoration:none">지출등록</a>
         </div>
         <div class="row sidemenutitle" onClick="menu('')">
         	<a href="main.jsp?pageChange=../member/memberList.jsp" style="color:white;text-decoration:none">회원목록</a>
         </div>
         <div class="row sidemenutitle" onClick="menu('')">
         	<a href="main.jsp?pageChange=../staff/staffList.jsp" style="color:white;text-decoration:none">직원관리</a>
         </div>
         <div class="row sidemenutitle" onClick="menu('')">
         	<a href="main.jsp?pageChange=../program/TicketMain.jsp" style="color:white;text-decoration:none">이용권관리</a>
         </div>
         <div class="row sidemenutitle" onClick="menu('')">
         	<a href="main.jsp?pageChange=../shop/Lock.jsp" style="color:white;text-decoration:none">락커관리</a>
         </div>
         <div class="row sidemenutitle" onClick="menu('')">
         	<a href="main.jsp?pageChange=../shop/Good.jsp" style="color:white;text-decoration:none">비품관리</a>
         </div>
         <div class="row sidemenutitle" onClick="menu('.history')">
         	<a href="main.jsp?pageChange=../schedule/reservation.jsp&menu=.histroy" style="color:white;text-decoration:none">내역관리</a>
         </div>
         <div class="row history">
            <div class="row sidemenu" id="allsalesmanagement">
            	<a href="main.jsp?pageChange=../schedule/reservation.jsp" style="color:white;text-decoration:none">예약내역</a>
            </div>
            <div class="row sidemenu" id="allsalesmanagement">
            	<a href="main.jsp?pageChange=../member/entranceStatement.jsp" style="color:white;text-decoration:none">입장내역</a>
            </div>
            <div class="row sidemenu" id="allsalesmanagement">
            	<a href="main.jsp?pageChange=../account/BillingHistoryList.jsp" style="color:white;text-decoration:none">회원결제내역</a>
            </div>
         </div>
         <div class="row sidemenutitle" onClick="menu('')">
         	<a href="main.jsp?pageChange=../account/StatisticsSales2.jsp" style="color:white;text-decoration:none">통계분석</a>
         </div>
         <div class="row sidemenutitle" onClick="menu('.account')">
         	<a href="main.jsp?pageChange=../account/salesStatement.jsp&menu=.account" style="color:white;text-decoration:none">회계관리</a>
         </div>
         <div class="row account">
			<div class="row sidemenu" id="allsalesmanagement">
            	<a href="main.jsp?pageChange=../account/salesStatement.jsp" style="color:white;text-decoration:none">매출내역</a>
            </div>
			<div class="row sidemenu" id="allsalesmanagement">
            	<a href="main.jsp?pageChange=../account/expenseStatement.jsp" style="color:white;text-decoration:none">지출내역</a>
            </div>
			<div class="row sidemenu" id="allsalesmanagement">
            	<a href="main.jsp?pageChange=../account/staffCalculate.jsp" style="color:white;text-decoration:none">직원정산</a>
            </div>
			<div class="row sidemenu" id="allsalesmanagement">
            	<a href="main.jsp?pageChange=../account/staffSalaryDetail.jsp" style="color:white;text-decoration:none">직원별정산</a>
            </div>
			<div class="row sidemenu" id="allsalesmanagement">
            	<a href="main.jsp?pageChange=../account/centerCalculate.jsp" style="color:white;text-decoration:none">센터정산</a>
            </div>
         </div>
         <div class="row sidemenutitle" onClick="menu('.service')">
         	<a href="#" style="color:white;text-decoration:none">고객센터</a>
         </div>
         <div class="row service">
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white">문의사항</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white">공지사항</a></div>
         </div>
   </div>