<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, java.util.List" %>
<%@ include file="/common/JEasyUICommon.jsp"%>
<%@ include file="../NewCSS/TicketAdd.css"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">

<style type="text/css">
body{
   padding:0%;
}
</style>
 


<script>  
   function tm_insert(){
		alert("등록되었습니다.");
		 var formData = $("#taINS").serialize();
		$.ajax({
			method:"POST",
			data:formData,
			url:"/program/taINS.fm",
			success:function(data) {
				alert("성공")
				//url:"/program/taSEL.fm"
				$("#ticketmain").html(data);
				//location.href = "/program/TicketMain.jsp"
				alert("눌림?");
				$.ajax({
					method:'get'
				   ,url:"/program/taSEL.fm"
				   ,success:function(data){
						$("#tasel").html(data);
				   }
				});
			}
		});  
	}
 
</script>

         
        
        
<!-- ================================= [[ 화면전환 ]] =================================================== -->

<!-- ----------------------------상단바 부분 ----------------------------------------->      
<div class="bar_area">
    <div class="fl">
      <a href="/home/">홈</a>
	  <a href="/product/public?productType=PUBLIC">상품 관리</a>
      <a href="#">이용권 등록</a>
    </div>

    <a href="#" class="prev">이전</a>
  </div>
<!-- ----------------------------상단바 부분 ----------------------------------------->      
<!-- ----------------------------메인 부분 ----------------------------------------->      
<div class="section" id="proreg">
<form id="taINS" method="post">
	<div class="cont_box" id="proreg_box" style="max-width: 80%">
		<h3>이용권</h3>
		<div class="cont_body">
			<div class="service_type_set">
					<fieldset id="proreg_fs">
						<legend id="pro_leg">이용권 등록</legend>
						<p id="proreg_p">
							<label id="pro_label1" for="appointmentName" class="wd_150">이용권 이름</label>
							<input type="text" id="appointmentName" name="ticket_name" class="wd_550" placeholder="예) 퍼스널 트레이닝                                    ">
						</p>
						<p id="pro_p1">
							<label id="pro_label2" for="classTime" class="wd_150">수업 진행시간</label>
							<input type="text" id="classTime" name="ticket_class_time" class="wd_250" placeholder="예) 50 (분 단위로 입력해주세요)           ">
							<span id="spanmin">분</span>
						</p>
						<p id="pro_p3">
							<label id="pro_label4" for="description" class="wd_150">가격</label>
							<input type="text" id="descriptionbox" name="ticket_price" class="wd_550">
							<span id="pricespan">원</span>
						</p>
					</fieldset>
			</div>
		</div>
	</div>
		</form>
	<div class="button_areaend">
		<button onclick="tm_insert()" type="button" class="blueadd" >등록</button>
		<a href="/tickets/types" class="graycancel">취소</a>
	</div>
</div>
<!-- ----------------------------메인 부분 ----------------------------------------->      
    
   

    
