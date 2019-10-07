<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 메인폼 ]] ======================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인</title>
<%@ include file="/common/JEasyUICommon.jsp"%>
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
	function menuopen(menu){
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
         <div class="row sidemenutitle">회원목록</div>
         <div class="row sidemenutitle" onClick="pagemove('spending.jsp')">지출등록</div>
         <div class="row sidemenutitle">직원관리</div>
         <div class="row sidemenutitle">이용권관리</div>
         <div class="row sidemenutitle">락커관리</div>
         <div class="row sidemenutitle" onClick="menuopen('.history')">내역관리</div>
         <div class="row history">
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white">예약내역</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white">입장내역</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white">회원결제내역</a></div>
         </div>
         <div class="row sidemenutitle">통계분석</div>
         <div class="row sidemenutitle">회계관리</div>
         <div class="row account" onClick="menuopen('.account')">
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white">매출내역</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white">지출내역</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white">직원정산</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white">직원별정산</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white">센터정산</a></div>
         </div>
         <div class="row sidemenutitle" id="analysis" onClick="menuopen('.service')">고객센터</div>
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