<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<%@ include file="/Member2/LockModalcss.jsp"%>
<!-- 확인용 버튼 -->
<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#LS-modal">
  Open modal
</button>

 -->
<!--===========================[[ 락커 클릭시 배정모달 시작 ]]================================ -->
<!-- The Modal -->
<div class="modal" id="L_Assignment">
  <div class="modal-dialog" >
    <div class="modal-content">

      <!-- Modal Header -->
      <div class="modal-header" id="L-header">
        <h2 class="modal-title" id="L-title">락커 배정</h2>
      </div>

      <!-- Modal body -->
      <div class="modal-body" id="L-body">
		       <h3>락커 설정</h3>
		      <fieldset>
		        <p>
		          <span class="label">락커 상태</span>
		          <input type="radio"  checked="checked">
		          	<label for="possible">사용가능</label>
		          <input type="radio" >
		          	<label for="impossible">사용불가</label>
		        </p>
		        <p>
		          <span class="label" >기간 설정</span>
		          <input type="date"  class="date">
		          	<span>-</span>
		          <input type="date" class="date"  >
		        </p>
		      </fieldset>
		      <h3 style="border-top: 1px solid #BABBC2; padding-top: 11px;">등록 회원 배정</h3>
		      <!-- 회원 검색 -->
		      <div class="search" id="L-search">
		        <fieldset>
		          <p>
		            <input type="text"placeholder="회원 검색">
		            <button type="button" class="icon small search_d"></button>
		          </p>
		        </fieldset>
		      </div>
		      <!-- //회원 검색 -->
		      <!-- 회원 검색 결과 -->
		   	<div class="search_result">
		        <ul id="memberListResult" style="list-style: none;">
			        <li>
				        <strong>홍남순</strong>
				       	 <span>0100-6866-1560</span>
				        <button type="button"  class="btn blue small">배정</button>
			        </li>
		        </ul>
     	 </div>
		      <!-- div class="search_result">
		        <ul id="memberListResult">
		          <li>
		            	회원 이름을 입력 후 검색 버튼을 클릭해 주세요.
		          </li>   
		        </ul>
		      </div> -->
		      </div>

      <!-- Modal footer -->
      <div class="modal-footer" id="L-footer">
	          <div class="nonmember">
	        <h3>미등록 회원 배정</h3>
	        <fieldset>
	          <p>
	            <input type="text" placeholder="이름" name="noMemName" id="noMemName">
	            <input type="text" placeholder="휴대폰 번호" name="noMemMobile" id="noMemMobile">
	            <button type="button" class="btn dark" >확인</button>
	          </p>
	        </fieldset>
	      </div>
      </div>

    </div>
  </div>
</div>


<!--=============================[[락커 클릭시 배정모달 끝]]==================================  -->
<!--==============================[[락커 주인 있을때 모달 부분 시작]]================================  -->
		<!-- The Modal -->
			<div class="modal" id="LH-modal">
			  <div class="modal-dialog">
			    <div class="modal-content">
			
			      <!-- Modal Header -->
			      <div class="modal-header" id="LH-header">
			        <h2 class="modal-title" id="LH-title">락커 사용자 정보</h2>
			      </div>
			
			      <!-- Modal body -->
			      <div class="modal-body" id="LH-body">
			        <p class="pic">
					<img src="../img/smile.png" >
				</p>
			     
			     <div class="info" style="width: 90%;">
					<p id="lName">손준호</p>
					<span id="lMobile">0000-0000-0011</span>
				</div>
				<p class="date_set" style="width: 100%; padding: 20px 0 0 62px; float:left;">
					<input type="text" class="calendar hasDatepicker" readonly="readonly" title="이용기간 시작일" >
					<span>-</span>
					<input type="text" class="calendar hasDatepicker"  readonly="readonly" title="이용기간 종료일" >
				</p>
			     
			     
			      </div>
			
			      <!-- Modal footer -->
			      <div class="modal-footer" id="LH-footer">
			        	<button type="button" class="btn gray" data-dismiss="modal" >취소</button>
						<button type="button"  class="btn red">사용 해제</button>
						<button type="button" class="btn blue" >이용기간 변경</button>
			      </div>
			    </div>
			  </div>
			</div>

<!--==============================[[락커 주인 있을때 모달 부분 끝 ]]================================  -->


<!--=================================[[락커관리 모달 부분 시작 ]]=======================================  -->
		<!-- The Modal -->
			<div class="modal" id="LS-modal">
			  <div class="modal-dialog">
			    <div class="modal-content">
			
			      <!-- Modal Header -->
			      <div class="modal-header" id="LS-header">
			        <h2 class="modal-title" id="LS-title">락커 관리</h2>
			      </div>
			
			      <!-- Modal body -->
			      <div class="modal-body" id="LS-body">
			      <fieldset>
					        <!-- 생성 인 경우 -->
							<form >
					        <p>
					          <span class="label">락커 종류</span>
					          <input type="radio" checked="checked">
					          <label for="locker_day">일일 락커</label>
					          <input type="radio" >
					          <label for="locker_period">기간제 락커</label>
					        </p>
					        <p class="set_locker">
					          <span class="label">락커 이름</span>
					          <input type="text" placeholder="락커 이름 입력">
					          <input type="number" placeholder="수량">
					          <button type="button"  class="btn dark">등록</button>
					          </p></form>
					        <p></p>
							
					        <!-- //생성 인 경우 -->
					
					        <div class="obj_locker" id="LS-obj">
					          <!-- Loop -->
							  
					          <p class="locker_itm">
					          	
					            <span>일일 락커</span>
					            
					            
					            <span>현정석</span>
					            <i><span>12</span> 개</i>
					            <a  class="modify">수정</a>
					            <a  class="del">삭제</a>
								
								<span>완료</span>
								
								
					          </p>
							  
					        
					        
							  
							  
					          <!-- // Loop -->
					        </div>
					      </fieldset>
						  
				          <!-- // Loop -->
				        </div>
			      </div>
			    </div>
			  </div>
		



<!--=================================[[락커관리 모달 부분 끝]]=======================================  -->

    
