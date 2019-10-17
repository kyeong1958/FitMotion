<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Modal.css">
				<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
				<script>
				    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
				    function sample4_execDaumPostcode() {
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
				                document.getElementById('sample4_postcode').value = data.zonecode;
				                document.getElementById("sample4_roadAddress").value = roadAddr;
				                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
				                
				                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
				                if(roadAddr !== ''){
				                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
				                } else {
				                    document.getElementById("sample4_extraAddress").value = '';
				                }
				
				                var guideTextBox = document.getElementById("guide");
				                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
				                if(data.autoRoadAddress) {
				                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
				                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
				                    guideTextBox.style.display = 'block';
				
				                } else if(data.autoJibunAddress) {
				                    var expJibunAddr = data.autoJibunAddress;
				                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
				                    guideTextBox.style.display = 'block';
				                } else {
				                    guideTextBox.innerHTML = '';
				                    guideTextBox.style.display = 'none';
				                }
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
			</script>
<style type="text/css">
body{
	padding:0%;
}
</style>
<script type="text/javascript">
//load함수를 이용하여 core스크립트의 로딩이 완료된 후, 우편번호 서비스를 실행합니다.
daum.postcode.load(function(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
        }
    }).open();
});
</script>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#MIns">
  Open modal
</button> 

<!--==================================[[회원 등록 모달창 시작]]=================================================  -->
<!-- 	
	
	<script type="text/javascript">

    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function(e) {
                $('#foo').attr('src', e.target.result);
            }
            reader.readAsDataURL(input.files[0]);
        }
    }

    $("#imgInp").change(function() {
        readURL(this);
    });
	</script>	 -->		
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
							<div class="photo" style="margin-bottom: 10px;">
								<p class="pic" style="margin-right: 9%;">
									<img id="foo" src="../images/smile.png">
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
							</div>
						<!--이미지 넣기 끝  -->
							<form>
								
								<p>
									<label for="name" style="margin-left: 12px;margin-right: 10%;">
										<span style="color: #FF5722;">*</span>회원명
									</label>
									<input type="text"  placeholder="이름 입력" style="width: 200px; margin-right: 25px;">
			
									<input type="radio" value="M" checked="checked">
									<label for="male">남성</label>
									<input type="radio"  value="F">
									<label for="female">여성</label>
								</p>
								 <p>
									<span class="label" style="margin-left: 12px;margin-right: 4%">
									<span style="color: #FF5722;">*</span>휴대전화번호</span>
									<input class="re"  type="number" title="휴대전화번호" maxlength="3">
									<input  type="number" title="휴대전화번호" maxlength="4">
									<input  type="number" title="휴대전화번호" maxlength="4">
												<span style="margin-left: 30px; margin-right: 5px;">SMS 수신</span>
									<input type="checkbox"  value="Y" checked="checked">
									<label>동의</label>
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
									<input  type="number" style="width: 200px;" title="회원번호">
								</p>
								 <p>
									<label  class="label" style="margin-right: 11px;margin-left: 12px;">회원 바코드 번호</label>
									<input type="text"  style="width: 200px;" title="입장바코드번호">
								</p>
							 
						
								 <hr style="border: 1px dashed #ccc; margin: 15px 0;">
								 <p>
									<label style="margin-left: 12px; margin-right: 9%">첫 등록일</label>
									<input type="text"  class="calendar hasDatepicker" style="width: 200px;" title="첫 등록일" >
								</p> 
								 <p>
									<label style="margin-right:3%;">고객관리 담당자</label>
									
									<select id="MI-select"  title="상담 담당자 선택">
									<option value="">선택해주세요</option>
									<option value="5849">강민호 강사</option>
									<option value="4435">기본 관리자</option>
									<option value="6592">김경순 강사 (테스트)</option>
									<option value="6862">달라스짐 강사 (테스트)</option>
									<option value="6866">리커버리 강사 (테스트)</option>
									<option value="5886">박하은</option>
									</select>
								</p>
							
									
							
							<p class="birth">
									<span class="label" style="margin-right: 10%;">생년월일</span>
									<input  type="text" class="calendar hasDatepicker" style="width: 200px !important;" title="생년월일" >
									<input  type="number" placeholder="나이 입력" style="width: 95px !important;" title="나이">
								</p>
						<div class="ui-input" >
								 <input type="hidden" id="sample4_postcode" placeholder="우편번호">
								<input type="hidden" id="sample4_jibunAddress" name="owner_addr"  placeholder="지번주소">
								<span id="guide" style="color:#999;display:none; width: 304px; margin-left: 13px;" />
								<input type="hidden" id="sample4_detailAddress"   placeholder="상세주소"style="width: 300px !important;">
								<input type="hidden" id="sample4_extraAddress" placeholder="참고항목">
				            	<input placeholder="상세 주소"  id="detail_addr" name="detail_addr">
				        </div>
<!-- 								 <div class="address" style="padding-left: 139px;">
									<span class="label" style="margin-left: 26px">주소</span>
									<p>
										<input name="zipCode"  id="sample4_postcode"  type="text" placeholder="우편번호" style="width: 200px !important;">
										<button onclick="sample4_execDaumPostcode()" class="btn dark" style="color: #fff;" >우편번호 찾기</button>
									</p>
									<p>
										<input type="text" id="sample4_roadAddress" placeholder="도로명주소" style="width: 300px !important;">
									</p>
									<p>
										 <input type="text" id="sample4_detailAddress"   placeholder="상세주소" style="width: 300px !important;"> 
									</p>
								</div> -->
								<p>
								<input type="text" id="sample4_roadAddress" name="road_addr"  placeholder="도로명주소" style="width: 300px !important;">
								</p>
									<p>
										<input  type="text" id="detail_addr"placeholder="상세 주소 입력" style="width: 300px !important;">
									</p>
								 <p>
								<input type="button" onclick="sample4_execDaumPostcode()" value="주소 찾기" >
								</p>
								 <p>
									<label  class="label" style="margin-right: 12%;">이메일</label>
									<input type="text"   style="width: 200px;">
									<span>@</span>
									<input type="text"  style="width: 150px;">
								</p>
								<!--  <p>
									<span class="label" style="margin-right: 25px;">메모</span>
									<textarea  title="메모" style="width: 370px; height: 45px;"></textarea>
								</p> -->
							</form>
						</fieldset>
				      </div>
				
				      <!-- Modal footer -->
				      <div class="modal-footer" id="MI-footer">	      
						      <div class="pop_btn" data-function-group="regist" style="display: block;">
								<button data-dismiss="modal"  type="button" class="btn gray">닫기</button>
								<button data-function="회원 가입" data-function-after-action="상품 판매" type="button" class="btn blue">등록 후 상품 판매</button>
							</div>
				
				      </div>
				
				    </div>
				  </div>
				</div>
				
				
<!--============================ [[회원등록 모달 부분 끝 ]]=============== -->



<!--==================================[[기간 연장 모달 부분 시작 ]]==================================  -->


		<div class="modal" id="M_extension" >
		  <div class="modal-dialog" style="display: block;">
		    <div class="modal-content"  style="height: 393px; max-height: 858px;">
		
		      <!-- Modal Header -->
		      <div class="modal-header" id="E_header">
		        <h2 class="modal-title" id="E_title">이용권 기간 연장</h2>
		      </div>
		
		      <!-- Modal body -->
		      <div class="modal-body" id="E_body">
		      	<div class="modal-br">
		           		 센터의 공사 등의 사유로 휴무 시 모든 이용회원들의<br> 
		           		 전체 이용권 이용기간을 연장할 수 있습니다.<br>
      					  <em class="c_red">
			      					  현재 이용 중인 모든 회원의 전체 이용권이 일괄 연장되오니 유의하시기 바랍니다.</em>
		      	</div>
					      <fieldset class="mt_20">
						        <p>
						          <span>
						            <label for="extension_day" style="width:150px;">전체 이용권 기간 연장</label>
						            <input type="number" id="extension_day" name="extensionDay">
						            <span>일</span>
						          </span>
						        </p>
						        <p>
						          <label style="width:150px;">이용회원</label>
						          <span style="font-size:20px;" class="c_blue">총 153명</span>
						        </p>
			     		 </fieldset>
					     
		     
		     
		      </div>
		
		      <!-- Modal footer -->
		      <div class="modal-footer" id="E-footer">
     			 <button type="button" class="btn red" >기간 연장</button>
		        <button type="button" class="btn btn-danger" data-dismiss="modal" style="background-color: #9fa0aa;">취소</button>
		      </div>
		
		    </div>
		  </div>
		</div>



<!--==================================[[기간 연장 모달 부분 끝]]==================================  -->

<!--===================================[[그룹 추가 모달 부분 시작 ]]==================================  -->
		<!-- The Modal -->
				<div class="modal" id="M_group">
				  <div class="modal-dialog"  style="display: block;">
				    <div class="modal-content" style="height: 377px; max-height: 907px;">
				
				      <!-- Modal Header -->
				      <div class="modal-header" id="G-header">
				        <h2 class="modal-title" id="G-title">그룹 추가</h2>
				      </div>
				
				      <!-- Modal body -->
				      <div class="modal-body" id="G-body">
				      	<!-- 검색하는 text 박스부분  -->
				        	<div class="search" id="G-search">
						        <fieldset>
				                    <p>
				                        <input name="groupSearchWord" type="text" value="" placeholder="그룹 검색" style="width: 100%">
				                        <button id="btnGroupSearch" type="button" class="icon small search_d" ></button>
				                    </p>
				                </fieldset>
		           			 </div>
		           			 
		           			  <!-- //회원 검색 -->
						            <div id="divSearchResult" class="grid_list latest" style="height:150px; overflow-y: auto; ">
						           	   <ul>
						           		 <li style="width: 100%">
						          	 		 <input type="checkbox"  id="g_0" style="display: none !important"  >
						          	  			<label for="g_0" >선택하기</label> 
						            				 <div class="card_itm">  
						               						<p class="title" id="test">테스트</p>  
												                 <p class="unit">
												                 <strong>기간</strong> 
												                	<span>2019.6.1 - 2019.7.31</span>
											                 </p>    
						                					 <p class="unit">
						                						 <strong>인원</strong>
						                  						<span>7</span>
						                 					 </p>      
										                	 <div class="info" style="float: right;">    
												         		     <p class="pic">
												                     			<img src="../images/smile.png"></p>
												                       <p class="name"><span></span> 홍준선 강사</p> 
										                       </div> 
														</div> 
													 <a  class="view" target="_blank">상세보기</a>
												</li>
											</ul>
										</div>
						        </div>
				    
				      <!-- Modal footer -->
				      <div class="modal-footer" id="G-footer" style="text-align: center;">
				      	<button id="btnAddGroup" type="button" class="btn dark">확인</button>
				        <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
				      </div>
				
				    </div>
				  </div>
				</div>

<!--===================================[[그룹 추가 모달 부분 끝 ]]==================================  -->

