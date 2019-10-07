<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 락커관리 ]] ======================================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <%@ include file="/NewView/LockModal.jsp" %>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Lock.css">
<style type="text/css">
body{
   padding:0%;
}
.container-fluid {
    padding-right: 0px;
    padding-left: 0px;
}
.nav{
   height: 60px;
    font-size: 18px;
   background-color:#42485A;
   color: white;
}
.side{
   padding-left:0%;
}
#sidebar{
   background-color: #42485A;
   font-size: 18px;
   color:white;
    padding: 0%;
    height: 100%;
    width: 100%;
    position: fixed;
    z-index: 1;
    width: 235px;
    position: fixed;
    z-index: 1;
    text-align: center;
    vertical-align: middle;
}
.row {
    margin-right: 0px;
    margin-left: 0px;
}
#gym_name{
   height: 80px;
}
#login_name{
   height: 50px;
}
.sidelabelbottom{
   height: 30px;
    margin-bottom: 15%;
}

.sidemenu{
   height:50px;
}
.sidemenutitle {
   height:50px;
   background-color: white;
   color:#42485A;
    padding: 5%;
}
.nav .bar{
   height:100%;
   padding: 1%;
    text-align: center;
}
#mainboard{
    margin-left: 235px;
    padding: 0%;
}
</style>
</head>
<script type="text/javascript">
   function sidemenu(id){
      alert(this.val());
      $(id).css("background-color","white");
      $(id+"> a").css("color","#42485A");
      $(".sidemenu")
   }
   function menu(menu){/* menu=# */
      alert("menu click");
      if('.sales' == menu){
         $('.sales').show();
         $('.member').hide();
         $('.analysis').hide();
         $('.service').hide();
         $(".menutitle-sales").css("background-color","white");
         $(".menutitle-sales > span").css("color","#42485A");
         $(".menutitle-member").css("background-color","#42485A");
         $(".menutitle-member > span").css("color","white");
         $(".menutitle-analysis").css("background-color","#42485A");
         $(".menutitle-analysis > span").css("color","white");
         $(".menutitle-service").css("background-color","#42485A");
         $(".menutitle-service > span").css("color","white");
      }else if('.member' == menu){
         $('.sales').hide();
         $('.member').show();
         $('.analysis').hide();
         $('.service').hide();
         $(".menutitle-sales").css("background-color","#42485A");
         $(".menutitle-sales > span").css("color","white");
         $(".menutitle-member").css("background-color","white");
         $(".menutitle-member > span").css("color","#42485A");
         $(".menutitle-analysis").css("background-color","#42485A");
         $(".menutitle-analysis > span").css("color","white");
         $(".menutitle-service").css("background-color","#42485A");
         $(".menutitle-service > span").css("color","white");
      }else if('.analysis' == menu){
         $('.sales').hide();
         $('.member').hide();
         $('.analysis').show();
         $('.service').hide();
         $(".menutitle-sales").css("background-color","#42485A");
         $(".menutitle-sales > span").css("color","white");
         $(".menutitle-member").css("background-color","#42485A");
         $(".menutitle-member > span").css("color","white");
         $(".menutitle-analysis").css("background-color","white");
         $(".menutitle-analysis > span").css("color","#42485A");
         $(".menutitle-service").css("background-color","#42485A");
         $(".menutitle-service > span").css("color","white");
      }else if('.service' == menu){
         $('.sales').hide();
         $('.member').hide();
         $('.analysis').hide();
         $('.service').show();
         $(".menutitle-sales").css("background-color","#42485A");
         $(".menutitle-sales > span").css("color","white");
         $(".menutitle-member").css("background-color","#42485A");
         $(".menutitle-member > span").css("color","white");
         $(".menutitle-analysis").css("background-color","#42485A");
         $(".menutitle-analysis > span").css("color","white");
         $(".menutitle-service").css("background-color","white");
         $(".menutitle-service > span").css("color","#42485A");
      }
   }
</script>
<body>
<script type="text/javascript">
   $(document).ready(function(){
      $(".sales").hide();
      $(".member").hide();
      $(".analysis").hide();
      $(".service").hide();
   });
</script>
<div class="container-fluid">
   <div class="row nav">
      <div class="col-sm-2"style="border:1px soild">
         <div class="col-sm-9"><img src="../images/logo.png"/></div>
      </div>
      <div class="col-sm-1 bar menutitle-sales"><span onClick="menu('.sales')">매출관리</span></div>
      <div class="col-sm-1 bar menutitle-sales"><span onClick="menu('.sales')">헬스장관리</span></div>
      <div class="col-sm-1 bar menutitle-member"><span onClick="menu('.member')">직원관리</span></div>
      <div class="col-sm-1 bar menutitle-member"><span onClick="menu('.member')">회원관리</span></div>
      <div class="col-sm-1 bar menutitle-service"><span onClick="menu('.service')">고객센터</span></div>
      <div class="col-sm-4"></div>
   </div>
      <div class="col-lg-1" id="sidebar">
         <div class="row">
            <div class="row" id="gym_name">지점명</div>
            <div class="row" id="login_name">이름</div>
            <div class="row sidelabelbottom">
               <div class="col-lg-6">로그아웃</div>
               <div class="col-lg-6">MyPage</div>
            </div>
         </div>
         <div class="row sales">
      <!--       <div class="row sidemenutitle" id="salesmanagement">매출관리</div> -->
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">회계관리</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">매출내역</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">이용권상품매출</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">일반상품매출</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu('#allsalesmanagement')">지출내역</a></div>
            <div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu('#staffsalesmanagement')">센터정산</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu('#salesmanagement')">직원정산</a></div>
         </div>
         <div class="row member">
      <!--       <div class="row sidemenutitle" id="salesmanagement">회원관리</div> -->
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">회원관리</a></div>
            <div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu()">예약내역</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">전체 회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">미결제회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">이용회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">말료회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">미납회원</a></div>
   
      <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">환불회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">중지회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">신규회원</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">기존회원</a></div>
         </div>
         <div class="row analysis">
         <!--    <div class="row sidemenutitle" id="analysis">통계분석</div> -->
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">회원일반현황</a></div>
            <div class="row sidemenu" id="staffsalesmanagement"><a style="color:white" onClick="sidemenu()">이용회원연령비율</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">누적회원연령비율</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">매출 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">결제 건 수 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">종목별 매출 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">이용권 상품 결제 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">월별 이탈 회원 현황</a></div>
            <div class="row sidemenu" id="salesmanagement"><a style="color:white" onClick="sidemenu()">서비스 매출 및 이용 현황</a></div>
         </div>
         <div class="row service">
         <!--    <div class="row sidemenutitle" id="analysis">고객센터</div> -->
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">문의사항</a></div>
            <div class="row sidemenu" id="allsalesmanagement"><a style="color:white" onClick="sidemenu()">공지사항</a></div>
         </div>
      </div>
      <div id="mainboard">
<!-- ================================= [[ 화면전환 ]] =================================================== -->
     <script type="text/javascript">
  			$(document).ready(function(){
     	    $("#Lockselect").on("change", function(){
    	     	alert("눌림?"); 
     	        console.log($(this).val());
     	        alert($(this).val());     
     	    });
     	});
     		
     		
     		
     	
     
     </script> 
      
     
      <!--=========================[[ 홈바 시작 ]]========================== -->
<div class="bar_area">
    <div class="homefl">
        <a href="/home/" id="home">홈</a>
        <a href="#" id="management">락커 관리</a>
    </div>
		 <div class="homefr" style="padding-right:10px;">
		 	<select name="seqPartnerLocker" title="락커 종류" id="Lockselect">
						<option value="455">
								(일일) 테스트1
						</option>
						
						<option value="478">
								(일일) 테스트
						</option>
						
						<option value="479">
								(기간) 지펏락커
						</option>
						
						<option value="486">
								(기간) 기본락커_남자
						</option>
						
						<option value="507">
								(일일) 신발장
						</option>
						
						<option value="521">
								(기간) 서인락커
						</option>
			</select>
		  		<a href="#" class="btn dark" id="MIns-B" data-toggle="modal" data-target="#LS-modal">락커관리</a>
		 </div>
   </div>

<!--========================== [[홈바 끝 ]] ========================== -->
<!--============================[[ 락커 부분 네모 시작  ]]=================================  -->
	<div class="locker_area">
    <div class="section" id="lock_select">
    
	      <div class="locker_cat" id="lockerStatusP">
		        <p id="selectLockerNm1">(일일) 테스트1</p>
		        <p class="period">사용 중</p>
		        <p class="expiration">사용기간 만료</p>
		        <p class="impossible" style="color: #FF5722">사용 불가</p>
	      </div>
	     <!--  <div class="locker_cat" id="lockerStatusD" style="">
	        <p id="selectLockerNm2">(일일) 테스트1</p>
	        <p class="period">사용 중</p>
	        <p class="before_expiration">사용시간 5시간 경과</p>
	        <p class="impossible">사용 불가</p>
	      </div> -->


<!-- =============================[[락커네모 창 시작 ]]================================ -->

    <div class="locker_list" >
        <ul >
        	
		         <li>
		        	<div class="locker_box ">
		        	<p>1</p>
							<a href="#" >배정</a>
              		</div>
	            </li>	          
		          	<li> 		
		          		        
		        	<div class="locker_box ">
		        	<p>2</p>
						
							<a href="#" >배정</a>
						
              		</div>
		        
		      
	            </li>	               
	       			<li class="use before_expiration">
					<div class="locker_box ">						
					  <p>3</p>					     		
					  		<p>손준호</p>				  	
						  <p>이용중</p>			
							<a href="" >
								배정
							</a>						
					</div>
	            </li>	                   		        
		          	<li class="impossible">
		        	<div class="locker_box ">
		        	<p>4</p>
						
							<a href="#" >배정</a>
						
              		</div>
		        
		      
	            </li>	                 		
	       			<li class="use before_expiration">       		
				<div class="locker_box ">						
					  <p>5</p>		  	
					  		<p>갓경애</p>
						  <p>이용중</p>
							<a href="" >
								배정
							</a>						
					</div>
	            </li>	
	            
	            <li class="use period">
	            	<div class="loker_box">
	            		<p>6</p>
	            		<p>이광현</p>
	            		<p>2019-09-20</p>
	            		<p>2019-10-20</p>
	            	</div>
	            </li>
	            
	         
	                      
        </ul>
      </div>
     
     <!-- =============================[[락커네모 창 끝 ]]================================ -->
      
  <!-- ============================[[락커와 사용확인하는곳 div같이 감싸져있는거 ]]  -->
    </div>
  </div>


<!--============================[[ 락커 부분 네모 끝  ]]=================================  -->
      
      
      
      
<!-- ================================= [[ 화면전환 ]] =================================================== -->
      
      </div>
</div>

</body>
</html>