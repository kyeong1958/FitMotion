<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ include file="/common/JEasyUICommon.jsp"%> --%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Modal.css">
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style type="text/css">
body{
	padding:0%;
}
.container-fluid {
	padding:0%;

}
</style>
<script>
/*//////////////////////////// [[ 주소검색 daum API ]] //////////////////////////////////////////////  */
//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function addressSearch() {
  new daum.Postcode({
      oncomplete: function(data) {
          // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

          // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
          // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
          var roadAddr = data.roadAddress; // 도로명 주소 변수
          var extraRoadAddr = ''; // 참고 항목 변수

          // 법정동명이 있을 경우 추가한다. (법정리는 제외)
          // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
          if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
              extraRoadAddr += data.bname;
          }
          // 건물명이 있고, 공동주택일 경우 추가한다.
          if(data.buildingName !== '' && data.apartment === 'Y'){
             extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
          }
          // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
          if(extraRoadAddr !== ''){
              extraRoadAddr = ' (' + extraRoadAddr + ')';
          }

          // 우편번호와 주소 정보를 해당 필드에 넣는다.
          document.getElementById('zipCode').value = data.zonecode;
          document.getElementById("mem_address").value = roadAddr;
         // document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
          
          // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
          if(roadAddr !== ''){
              document.getElementById("mem_addressdetail").value = extraRoadAddr;
          } else {
              document.getElementById("mem_addressdetail").value = '';
          }
          var guideTextBox = document.getElementById("guide");
      }
  }).open();
}
new daum.Postcode({
onclose: function(state) {
  //state는 우편번호 찾기 화면이 어떻게 닫혔는지에 대한 상태 변수 이며, 상세 설명은 아래 목록에서 확인하실 수 있습니다.
  if(state === 'FORCE_CLOSE'){
      //사용자가 브라우저 닫기 버튼을 통해 팝업창을 닫았을 경우, 실행될 코드를 작성하는 부분입니다.

  } else if(state === 'COMPLETE_CLOSE'){
      //사용자가 검색결과를 선택하여 팝업창이 닫혔을 경우, 실행될 코드를 작성하는 부분입니다.
      //oncomplete 콜백 함수가 실행 완료된 후에 실행됩니다.
  }
}
});
/*//////////////////////////// [[ 주소검색 daum API ]] //////////////////////////////////////////////  */

/*///////////////// [[ 데이트박스 ]] ///////////////////////////////  */
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
/*///////////////// [[ 데이트박스 ]] ///////////////////////////////  */
 function memInsert(){
		var formData = $("#f_meminsert").serialize();
		alert(formData);
 		 $.ajax({
			method:"POST"
			,data:formData
			,url:"/member/BHINS.fm"
			,success:function(data){
				$("#in_005fcard").html(data);
			}
		}); 
	}
 
</script>
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
				
				<form id="f_meminsert">
				      <!-- Modal body -->
				      <div class="modal-body" id="MI-body">
				       		<fieldset>
								<p>
									<label for="name" style="margin-left: 12px;margin-right: 10%;">
										<span style="color: #FF5722;">*</span>회원명
									</label>
									<input type="text" name="mem_name" id="mem_name" placeholder="이름 입력" style="width: 200px; margin-right: 25px;">
									<input type="radio" value="남성" checked="checked" name="mem_gender" id="mem_gender">
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
								
	 							<!-- <p>
									<label  class="label" style="margin-right: 51px;margin-left: 12px">
										<span style="color: #FF5722;">*</span>회원 번호
									</label>
									<input  type="number" name="mem_num" style="width: 200px;" title="회원번호">
								</p> -->
						<!-- 		 <p>
									<label  class="label" style="margin-right: 11px;margin-left: 12px;">회원 바코드 번호</label>
									<input type="text"  name="mem_barcode_num" style="width: 200px;" title="입장바코드번호">
								</p> -->
								 <hr style="border: 1px dashed #ccc; margin: 15px 0;">
								 <p>
									<label style="margin-left: 12px; margin-right: 9%">첫 등록일</label>
									<input name="mem_registration_date" class="easyui-datebox" style="width: 200px;">
								</p> 
								<!--  <p>
									<label style="margin-right:3%;">고객관리 담당자</label>
									
									<select id="MI-select" onchange="mode_Select()"  title="상담 담당자 선택" name="mem_manager">
									<option value="">선택해주세요</option>
									<option value="강민호">강민호 강사</option>
									<option value="손준호">손준호 강사</option>
									</select>
								</p>-->
								<p class="birth">
									<span class="label" style="margin-right: 10%;">생년월일</span>
									<input  type="text" name="mem_birth" class="calendar hasDatepicker" style="width: 200px !important;" title="생년월일" >
								</p>
								 <div class="address" style="padding-left: 139px;">
									<span class="label" style="margin-left: 26px">주소</span>
									<p class="zip">
										<input name="zipCode" id="zipCode" class="form-control" type="text" placeholder="우편번호" style="width: 200px !important;display:inline">
										<button onClick="addressSearch()" class="btn dark" style="color: #fff;">우편번호 찾기</button>
									</p>
									<p>
										<input type="text" name="mem_address" id="mem_address" class="form-control" placeholder="주소를 입력하세요." style="width: 300px !important;">
									</p>
									<p>
										<input type="text" name="mem_addressdetail" id="mem_addressdetail" class="form-control" placeholder="상세주소를 입력하세요." style="width: 300px !important;">
									</p>
								</div>
							 	 <p>
									<span class="label" style="margin-right: 14%;">메모</span>
									<textarea  title="메모" name="mem_memo" style="width: 370px; height: 45px;"></textarea>
								</p>
						</fieldset>
				      </div>
				</form>
				
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




