<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- ============================ [[ 락커관리 ]] ======================================== -->

<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Lock.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/scheduleModal.css?22">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<style type="text/css">
body{
   padding:0%;
}
</style>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			url:'/shop/LockerList.fm'
			,success:function(data){
				$("#locker_list").html(data);
			}
		});
/* 데이트 박스 */		
	 //datebox1 날짜 선택에 따라 datebox2의 선택가능날짜 설정
	   $('#datebox1').datebox({
	      onSelect: function(date){
	         firstDate = date;
	         $('#datebox2').datebox().datebox('calendar').calendar({
	               validator: function(date){
	                   var d1 = new Date(firstDate.getFullYear(), firstDate.getMonth(), firstDate.getDate());
	                   return d1<=date;
	               }
	           });
	      }
	   });
	 //datebox1 날짜 선택에 따라 datebox2의 선택가능날짜 설정
	   $('#datebox1_lock').datebox({
	      onSelect: function(date){
	         firstDate = date;
	         $('#datebox2_lock').datebox().datebox('calendar').calendar({
	               validator: function(date){
	                   var d1 = new Date(firstDate.getFullYear(), firstDate.getMonth(), firstDate.getDate());
	                   return d1<=date;
	               }
	           });
	      }
	   });
/* 데이트 박스 */
 	});
</script> 
<script type="text/javascript">
 /* 데이트 박스 */
	//datebox 날짜형식 YYYY-MM-DD로 설정
	 $.fn.datebox.defaults.formatter = function(date){
	     var y = date.getFullYear();
	     var m = date.getMonth()+1;
	     var d = date.getDate();
	     return y+'/'+(m<10 ? "0"+m:m)+'/'+(d<10 ? "0"+d:d);
	 }  
	 //datebox parser설정
	 $.fn.datebox.defaults.parser = function(s){
	     var t = Date.parse(s);
	     if (!isNaN(t)){
	        return new Date(t);
	     } else {
	        return new Date();
	     }
	 }
	 //datebox 한글화
	 $.fn.datebox.defaults.currentText = '오늘'
	 $.fn.datebox.defaults.closeText = '닫기'
	 $.fn.calendar.defaults.weeks = ['일','월','화','수','목','금','토']
	 $.fn.calendar.defaults.months = ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
/* 데이트 박스 */
	function changeDate(){
		 var formData = $("#f_ld").serialize();
			 $.ajax({
				 method:'get'
				 ,url:'/shop/lockUPD.fm'
				 ,data:formData
				 ,success:function(data){
					// alert("성공");
					// alert("|"+data+"|");
					 if(data == '0'){
						alert('이용기간이 변경되지 않았습니다.');	 
					 }else{
						 $("#lockDetail").modal({backdrop: false});
						 $("#lockDetail").modal('hide');
						 $("#locker_list").html(data);
				 	 }
				 }
			 });
	 }
/* 회원검색모달창 */
	 function lockmemberSearch(){
			//alert("회원검색");
			var l_memname = $("#lock_memname").val();
			$.ajax({
				url:"/member/lockmemSearch.fm?mem_name="+l_memname
			   ,success:function(data){
					$("#memberSearchModalTable").html(data);
			   }
				
			});
   } 
/* 회원검색모달창 */
/* 락커배정 */
	function lockSetUPD(){
		//	alert("등록버튼");
		if(document.getElementById("lockradio1").checked){
		//	alert("라디오1선택"+document.getElementById("lockradio1").value);
			var formData = $("#f_lockset").serialize();
			 $.ajax({
				 method:'get'
				 ,url:'/shop/lockINS.fm'
				 ,data:formData
				 ,success:function(data){
					// alert("성공");
					// alert("|"+data+"|");
					 $("#L_Assignment").modal({backdrop: false});
					 $("#L_Assignment").modal('hide');
					 $("#locker_list").html(data);
				 }
			 });
			
		}else if(document.getElementById("lockradio2").checked){
		//	alert("1");
			var lockStatus = document.getElementById("lockradio2").value;
		//	alert("2");
			var lockNum = $("#locknum").val();
		//	alert(lockStatus+", "+lockNum);
			 $.ajax({
				 method:'get'
				 ,url:'/shop/lockStatusUPD.fm?lockStatus='+lockStatus+'&lockNum='+lockNum
				 ,success:function(data){
				//	 alert(data);
					 $("#L_Assignment").modal({backdrop: false});
					 $("#L_Assignment").modal('hide');
					 $("#locker_list").html(data);
				 	 }
			 });
		}
	}
/* 락커배정 */
/* 락커 상태 변경 고장 -> 사용가능 */
	function lockchange(){
		var lockNum = $("#b_locknum").val();
		$.ajax({
			 method:'get'
			 ,url:'/shop/lockChange.fm?lockNum='+lockNum
			 ,success:function(data){
				// alert(data);
				 $("#lockDetail_b").modal({backdrop: false});
				 $("#lockDetail_b").modal('hide');
				 $("#locker_list").html(data);
			 	 }
		 });
	}
</script>
      <!--=========================[[ 홈바 시작 ]]========================== -->
<div class="bar_area">
        <a class="bar_menu" href="#">홈</a>
		<img src="../images/location_arrow.png">
		<a class="bar_menu" href="#">락커 관리</a>
		 <div class="homefr" style="padding-right:10px;">
		  		<button class="btn dark" id="MIns-B" data-toggle="modal" data-target="#LS-modal">락커관리</button>
		 </div>
</div>

<!--========================== [[홈바 끝 ]] ========================== -->
<!--============================[[ 락커 부분 네모 시작  ]]=================================  -->
	<div class="locker_area">
    <div class="section" id="lock_select">
    
	      <div class="locker_cat" id="lockerStatusP">

		        <p class="period">사용 중</p>
		        <p class="approachingExpire">사용기간 만료 5일 전</p>
		        <p class="expiration">사용기간 만료</p>
		        <p class="impossible" style="color: #FF5722">사용 불가</p>
	      </div>



<!-- =============================[[락커네모 창 시작 ]]================================ -->
    <div class="locker_list" id="locker_list">
    </div> 
<!-- =============================[[락커네모 창 끝 ]]================================ -->
    </div>
  </div>
<!--============================[[ 락커 부분 네모 끝  ]]=================================  -->
<!-- ================================= [[ 화면전환 ]] =================================================== -->



<!--===========================[[ 락커 클릭시 배정모달 시작 ]]================================ -->
<!-- The Modal -->
<div class="modal" id="L_Assignment">
  <div class="modal-dialog" >
    <div class="modal-content">

      <!-- Modal Header -->
        <div class="modal-header">
          <span class="modal-title">락커 배정</span>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>

          <form id="f_lockset">
      <!-- Modal body -->
      <div class="modal-body" id="L-body">
		       <div style="font-weight: bold;font-size: 16px;margin-bottom: 7px;">락커 설정</div>
		       <input type="hidden" id="locknum" name="locknum">
		      <fieldset>
		         <div style="padding:0 0 5px">
					<label class="spend-box-right-column">락커 상태</label>
					<input type="radio" name="lockradio" id="lockradio1" value="lockOk">
					<label for="possible">사용가능</label>
					<input type="radio" name="lockradio" id="lockradio2" value="lockNO">
					<label for="impossible">사용불가</label>
				</div>
		         <div style="padding:0 0 5px">
					<label class="spend-box-right-column">기간 설정</label>
					<span>
						<input class="easyui-datebox ld_start" name="lrent_start_day" id="datebox1_lock"></input>
						~
						<input class="easyui-datebox ld_end" name="lrent_end_day" id="datebox2_lock"></input>
					</span>
				</div>
		      </fieldset>
		      <div style="border-top: 1px solid #BABBC2; padding-top: 11px;font-weight: bold;font-size: 16px;margin-bottom: 7px;">등록 회원 배정</div>
		      <!-- 회원 검색 -->
		      <div style="padding:0 0 5px">
				<label class="spend-box-right-column" style="text-align:center">회원명</label>
				<span>
					<input type="text" class="spending-text" id="lock_memname" style="width:260px;">
				</span>
				<span>
					<button type="button" id="memberSearch" onClick="lockmemberSearch()" class="btn-schedule-memsearch" style="margin-left:10px;">검색</button>
				</span>
			</div>
			<div class="search-mem-modal" id="memberSearchModalTable" style="height: 300px">
				<table id="tb_membersearch" class="table table-bordered  table-striped" style="text-align:center">
					<tr>
						<th class="tableheader" style="vertical-align: inherit;width: 123px">회원명</th>
						<th class="tableheader" style="vertical-align: inherit;width: 186px">생년월일</th>
						<th class="tableheader" style="vertical-align: inherit;width: 241px">전화번호</th>
					</tr>
				</table>
			</div>
		      <!-- //회원 검색 -->
	      </div>

      <!-- Modal footer -->
      <div class="modal-footer" id="L-footer">
	  	<div class="nonmember" align="left">
	      	<div style="font-weight: bold;font-size: 16px;margin-bottom: 7px;">미등록 회원 배정</div>
	           <span>
	           		<input type="hidden" id="lm_memnum" name="lm_memnum">
					<input type="text" class="spending-text" id="lm_memname" style="width:35%;">
					<input type="text" class="spending-text" id="lm_memhp" style="width:50%;">
				</span>
	           <button type="button" class="btn-schedule-memsearch" style="width: 70px !important;" onClick="lockSetUPD()">등록</button>
	    	</div>
   		</div>
			</form>
    </div>
  </div>
</div>


<!--=============================[[락커 클릭시 배정모달 끝]]==================================  -->


<!--=================================[[락커디테일 모달 부분 시작]]=======================================  -->
 <!-- The Modal -->
  <div class="modal fade" id="lockDetail">
    <div class="modal-dialog modal-sm-6">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <span class="modal-title">락커 사용자 정보</span>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" style="padding-left: 5%;">
        	<form id="f_ld">
				<div style="padding:0 0 5px">
					<span>
						<input type="hidden" id="rent_num" name="rent_num">
						<label class="spend-box-right-column">회원명</label>
						<span class="spend-box-right-column" id="ld_name">이경애</span>
					</span>
				</div>
				<div style="padding:0 0 5px">
					<span>
						<label class="spend-box-right-column">전화번호</label>
						<span class="spend-box-right-column" id="ld_hp"></span>
					</span>
				</div>
				<div style="padding:0 0 5px">
					<label class="spend-box-right-column">이용기간</label>
					<span>
						<input class="easyui-datebox ld_start" name="lrent_start_day" id="datebox1"></input>
						~
						<input class="easyui-datebox ld_end" name="lrent_end_day" id="datebox2"></input>
					</span>
				</div>
			</form>	
	<!-- BODY -->
        </div>
        <!-- Modal footer -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" onClick="changeDate()">이용기간 변경</button>
          <button type="button" class="btn btn-secondary" onClick="">사용 해제</button>
          <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
  </div>



<!--=================================[[락커디테일 모달 부분 끝]]=======================================  -->

<!--=================================[[고장 -> 사용가능]]=======================================  -->
 <!-- The Modal -->
  <div class="modal fade" id="lockDetail_b">
    <div class="modal-dialog modal-sm-6">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <span class="modal-title">락커 상태</span>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body" style="padding: 20px;">
        	<input type="hidden" id="b_locknum" name="b_locknum">
        	<div style="font-size: 15px;font-weight: bold;text-align: center;">사용 가능 상태로 변경하시겠습니까?</div>
	<!-- BODY -->
        </div>
        <!-- Modal footer -->
        <div class="modal-footer">
        	<div style="text-align:center">
		          <button type="button" class="btn btn-secondary" onClick="lockchange()">변경</button>
		          <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
        	</div>
        </div>
      </div>
    </div>
  </div>



<!--=================================[[고장 -> 사용가능]]=======================================  -->
    

