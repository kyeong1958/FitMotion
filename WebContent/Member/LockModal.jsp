<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<%@ include file="/Member/LockModalcss.jsp"%>
<!-- 확인용 버튼 -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#L_Assignment">
  Open modal
</button>


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
		          <input type="radio"value="U"  checked="checked">
		          	<label for="possible">사용가능</label>
		          <input type="radio"  value="N" >
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
	            <input type="tel" placeholder="휴대폰 번호" name="noMemMobile" id="noMemMobile">
	            <button type="button" class="btn dark" onclick="noMemInsert()">확인</button>
	          </p>
	        </fieldset>
	      </div>
      </div>

    </div>
  </div>
</div>


<!--=============================[[락커 클릭시 배정모달 끝]]==================================  -->

