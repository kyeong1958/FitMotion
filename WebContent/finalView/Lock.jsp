<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 락커관리 ]] ======================================== -->

<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Lock.css">
<style type="text/css">
body{
   padding:0%;
}
</style>
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
        <a class="bar_menu" href="#">홈</a>
		<img src="../images/location_arrow.png">
		<a class="bar_menu" href="#">락커 관리</a>
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
<%@ include file="/finalView/LockModal.jsp" %>
