<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Modal.css">
<style type="text/css">
body{
	padding:0%;
}
.container-fluid {
	padding:0%;

}
</style>
 <!-- 주노꺼랑 이관 완료 -->
<!--==================================[[회원 등록 모달창 시작]]=================================================  -->
				<!-- The Modal -->
				<div class="modal" id="MIns">
				  <div class="modal-dialog">
				    <div class="modal-content" id="MI-content">
				
				      <!-- Modal Header -->
				      <div class="modal-header" id="MI-header">
				        <h2 class="modal-title" id="MI-title">회원 등록</h2>
				        
				      </div>
				
				      <!-- Modal body -->
				      <div class="modal-body" id="MI-body">
				       		<fieldset>
						<!--이미지 넣기 시작   -->
							<!-- <div class="photo" style="margin-bottom: 10px;">
								<p class="pic" style="margin-right: 9%;">
									<img id="foo" src="../img/smile.png">
								</p>
								<p style="margin-left:120px;">정면, 상반신 사진을 등록해주세요</p>
								<div class="file_fake">
									<form >
										<div style="display: inline-block;">
											<input type="text" style="width: 200px !important">
											<button type="button" class="btn dark" style="width: 95px;">찾기</button>
											<input  type="file" id="imgInp" style="width: 296px">
										</div>
										
									</form>
								</div>
							</div> -->
						<!--이미지 넣기 끝  -->
							<form id="f_insert">
								
								<p>
									<label for="name" style="margin-left: 12px;margin-right: 10%;">
										<span style="color: #FF5722;">*</span>회원명
									</label>
									<input type="text" name="mem_name" placeholder="이름 입력" style="width: 200px; margin-right: 25px;">
			
									<input type="radio" value="남성" checked="checked" name="mem_gender">
									<label for="male">남성</label>
									<input type="radio"  value="여성"  name="mem_gender">
									<label for="female">여성</label>
								</p>
								 <p>
									<span class="label" style="margin-left: 12px;margin-right: 4%">
									<span style="color: #FF5722;">*</span>휴대전화번호</span>
									<input class="re"  type="number" title="휴대전화번호" maxlength="12" name="mem_hp">
												<span style="margin-left: 30px; margin-right: 5px;">SMS 수신</span>
									<input type="checkbox"  name="mem_app_availability" value="이용" checked="checked">
									<label>앱이용</label>
								</p>
									<div class="address" style="padding-left: 145px;">
									<p data-msg="inUsingMobile" style="line-height: 20px; color: #FF5722; display: none;">
										다른 회원이 사용 중인 휴대 전화번호입니다.
									</p>
									<p style="line-height: 20px;">
										회원의 휴대 전화번호는 회원용 APP과 연동되는 중요한 정보입니다.
									</p>
									<p style="line-height: 20px; margin-top: 0;">
										반드시 실제 사용하는 휴대전화번호를 입력하세요.
									</p>
								</div>
								
	 							<p>
									<label  class="label" style="margin-right: 51px;margin-left: 12px">
										<span style="color: #FF5722;">*</span>회원 번호
									</label>
									<input  type="number" name="mem_num" style="width: 200px;" title="회원번호">
								</p>
								 <p>
									<label  class="label" style="margin-right: 11px;margin-left: 12px;">회원 바코드 번호</label>
									<input type="text"  name="mem_barcode_num" style="width: 200px;" title="입장바코드번호">
								</p>
							 
						
								 <hr style="border: 1px dashed #ccc; margin: 15px 0;">
								 <p>
									<label style="margin-left: 12px; margin-right: 9%">첫 등록일</label>
									<input type="text" name="mem_registration_date" class="calendar hasDatepicker" style="width: 200px;" title="첫 등록일" >
								</p> 
								 <p>
									<label style="margin-right:3%;">고객관리 담당자</label>
									
									<select id="MI-select" onchange="mode_Select()"  title="상담 담당자 선택" name="mem_manager">
									<option value="">선택해주세요</option>
									<option value="강민호">강민호 강사</option>
									<option value="손준호">손준호 강사</option>
									</select>
								</p>
							
									
							
							<p class="birth">
									<span class="label" style="margin-right: 10%;">생년월일</span>
									<input  type="text" name="mem_birth" class="calendar hasDatepicker" style="width: 200px !important;" title="생년월일" >
								</p>
								 <div class="address" style="padding-left: 139px;">
									<span class="label" style="margin-left: 26px">주소</span>
									<p class="zip">
										<input name="zipCode" type="text" placeholder="우편번호" style="width: 200px !important;">
										<button data-function="주소 검색"class="btn dark" style="color: #fff;">우편번호 찾기</button>
									</p>
									<p>
										<input type="text" name="mem_address" placeholder="주소를 입력하세요." style="width: 300px !important;">
									</p>
									
								</div>
							
							  <p>
									<span class="label" style="margin-right: 14%;">메모</span>
									<textarea  title="메모" name="mem_memo" style="width: 370px; height: 45px;"></textarea>
								</p>
							</form>
						</fieldset>
				      </div>
				
				      <!-- Modal footer -->
				      <div class="modal-footer" id="MI-footer">	      
						      <div class="pop_btn" data-function-group="regist" style="display: block;">
								<button data-dismiss="modal" type="button" class="btn blue" onclick="memInsert()">등록 </button>
								<button data-dismiss="modal"  type="button" class="btn gray">닫기</button>
							</div>
				
				      </div>
				
				    </div>
				  </div>
				</div>
			
				
<!--============================ [[회원등록 모달 부분 끝 ]]=============== -->




