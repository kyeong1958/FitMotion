<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ include file="/Member/Modalcss.jsp"%>
 
<!--==================================[[회원 등록 모달창 시작]]=================================================  -->
			<!-- 			<!-- The Modal -->
		<!-- 	<div class="modal" id="MIns">
			  <div class="modal-dialog">
			    <div class="modal-content">
			
			      Modal Header
			      <div class="modal-header" style="padding: 0px">
			        <button type="button" class="close" style="font-size: 59px" data-dismiss="modal">&times;</button>
			        <h2 class="modal-title" id="Mtitle">회원등록</h2>
			      </div>
			
			      Modal body
			      <div class="modal-body">
			       		<fieldset id="M_fieldset">
						
							<form id="memberInfoForm" method="post">
								<input type="hidden" name="seqMember">
								<input type="hidden" id="imgUrl" name="imgUrl">
								<p>
									<label for="name" style="margin-right: 25px;">
										<span style="color: #FF5722; font-size: 20px;">*</span>회원명
									</label>
									<input name="name" type="text" value="" id="name" placeholder="이름 입력" style="width: 200px; margin-right: 25px;">
			
									<input type="radio" name="sex" id="male" value="M" checked="checked">
									<label for="male">남성</label>
									<input type="radio" name="sex" id="female" value="F">
									<label for="female">여성</label>
								</p>
								<p>
									<span class="label" style="margin-right: 25px;">
									<span style="color: #FF5722; font-size: 20px;">*</span>휴대전화번호</span>
									<input class="re" name="mobile1" type="number" title="휴대전화번호" maxlength="3">
									<input name="mobile2" type="number" title="휴대전화번호" maxlength="4">
									<input name="mobile3" type="number" title="휴대전화번호" maxlength="4">
									
								</p>
								
								<p>
									<label for="name" class="label" style="margin-right: 25px;">
										<span style="color: #FF5722; font-size: 20px;">*</span>회원 번호
									</label>
									<input name="membershipNo" type="number" value="" style="width: 200px;" title="회원번호">
								</p>
								<p>
									<label for="inputInsertBarcode" class="label" style="margin-right: 25px;">회원 바코드 번호	</label>
									<input id="inputInsertBarcode" type="text" value="" style="width: 200px;" title="입장바코드번호">
								</p>
								<p>
									<label for="inboundState_visit" class="label" style="margin-right: 25px;">
										<span style="color: #FF5722; font-size: 20px;">*</span>
										유입 상태
									</label>
								</p>
								
								
						
								<hr style="border: 1px dashed #ccc; margin: 15px 0;">
								<p>
									<label for="regDt" style="margin-right: 25px;">첫 등록일</label>
									<input name="regDt" type="text" id="regDt" class="calendar hasDatepicker" style="width: 200px;" title="첫 등록일" readonly="">
								</p>
								<p>
									<label for="name" style="margin-right: 25px;">고객관리 담당자</label>
									<select name="seqPartnerCoach" type="text" id="partnerCoach" style="width: 200px;" title="상담 담당자 선택">
									<option value="">선택해주세요</option>
									<option value="5849">강민호 강사</option>
									<option value="4435">기본 관리자</option>
									<option value="6592">김경순 강사 (테스트)</option>
									<option value="6866">리커버리 강사 (테스트)</option>
									<option value="5886">박하은</option>
									
									</select>
								</p>
								
							
						
								<p class="birth">
									<span class="label" style="margin-right: 25px;">생년월일</span>
									<input name="birthday" type="text" class="calendar hasDatepicker" readonly="" style="width: 200px !important;" title="생년월일" id="dp1569306633893">
									<input name="age" type="number" placeholder="나이 입력" style="width: 95px !important;" title="나이">
								</p>
								
								<div class="address" style="padding-left: 145px;">
									<span class="label" style="margin-right: 25px;">주소</span>
									<p class="zip">
										<input name="zipCode" type="text" placeholder="우편번호" style="width: 200px !important;">
										<button data-function="주소 검색" id="btnAddressSearch" class="btn dark">우편번호 찾기</button>
									</p>
									<p>
										<input name="address" type="text" placeholder="주소를 입력하세요." style="width: 300px !important;">
									</p>
									<p>
										<input name="addressDetail" type="text" placeholder="상세 주소 입력" style="width: 300px !important;">
									</p>
								</div>
								<p>
									<label for="email" class="label" style="margin-right: 25px;">이메일</label>
									<input type="text" name="memberId1" id="email" style="width: 200px;">
									<span>@</span>
									<input type="text" name="memberId2" style="width: 150px;">
								</p>
								<p>
									<span class="label" style="margin-right: 25px;">메모</span>
									<textarea name="memo" title="메모" style="width: 370px; height: 45px;"></textarea>
								</p>
							</form>
						</fieldset>
			      </div>
			
			      Modal footer
			      <div class="modal-footer">
			        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
			      </div>
			
			    </div>
			  </div>
			</div>
 -->


<!-- 
<div  data-popup-location="팝업 위치" >
			<div class="add_advice_member" data-popup="회원 등록" style="display: block;">
				<div class="box" style="width: 700px !important; height: 941px; max-height: 907px;">
					<h2>회원 등록</h2>
					<div class="pop_con">
						<fieldset>
						
							<form id="memberInfoForm" method="post">
								<input type="hidden" name="seqMember">
								<input type="hidden" id="imgUrl" name="imgUrl">
								<p>
									<label for="name" style="margin-right: 25px;">
										<span style="color: #FF5722; font-size: 20px;">*</span>회원명
									</label>
									<input name="name" type="text" value="" id="name" placeholder="이름 입력" style="width: 200px; margin-right: 25px;">
			
									<input type="radio" name="sex" id="male" value="M" checked="checked">
									<label for="male">남성</label>
									<input type="radio" name="sex" id="female" value="F">
									<label for="female">여성</label>
								</p>
								<p>
									<span class="label" style="margin-right: 25px;">
									<span style="color: #FF5722; font-size: 20px;">*</span>휴대전화번호</span>
									<input class="re" name="mobile1" type="number" title="휴대전화번호" maxlength="3">
									<input name="mobile2" type="number" title="휴대전화번호" maxlength="4">
									<input name="mobile3" type="number" title="휴대전화번호" maxlength="4">
									
									<span style="margin-left: 30px; margin-right: 5px;">SMS 수신</span>
									<input type="checkbox" name="smsAgreeYn" id="smsAgreeYn_Y" value="Y" checked="checked">
									<label for="smsAgreeYn_Y">동의</label>
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
									<label for="name" class="label" style="margin-right: 25px;">
										<span style="color: #FF5722; font-size: 20px;">*</span>회원 번호
									</label>
									<input name="membershipNo" type="number" value="" style="width: 200px;" title="회원번호">
								</p>
								<p>
									<label for="inputInsertBarcode" class="label" style="margin-right: 25px;">회원 바코드 번호	</label>
									<input id="inputInsertBarcode" type="text" value="" style="width: 200px;" title="입장바코드번호">
								</p>
								<p>
									<label for="inboundState_visit" class="label" style="margin-right: 25px;">
										<span style="color: #FF5722; font-size: 20px;">*</span>
										유입 상태
									</label>
									<input type="radio" name="inboundState" id="inboundState_visit" value="VISIT" checked="checked">
									<label for="inboundState_visit">방문</label>
									<input type="radio" name="inboundState" id="inboundState_recommend" value="RECOMMEND">
									<label for="inboundState_recommend">지인추천</label>
								</p>
								<div class="address" style="padding-left: 145px;">
									<p data-msg="inUsingMembershipNo" style="line-height: 20px; color: #FF5722; display: none;">
										다른 회원이 사용 중인 회원번호입니다.
									</p>
									<p data-msg="invalidMembershipNo" style="line-height: 20px; color: #FF5722; display: none;">
										회원 번호를 4자리 이상 입력해주세요.
									</p>
								</div>
								<hr style="border: 1px dashed #ccc; margin: 15px 0;">
								<p>
									<label for="regDt" style="margin-right: 25px;">첫 등록일</label>
									<input name="regDt" type="text" id="regDt" class="calendar hasDatepicker" style="width: 200px;" title="첫 등록일" readonly="">
								</p>
								<p>
									<label for="name" style="margin-right: 25px;">고객관리 담당자</label>
									<select name="seqPartnerCoach" type="text" id="partnerCoach" style="width: 200px;" title="상담 담당자 선택"><option value="">선택해주세요</option><option value="5849">강민호 강사</option><option value="4435">기본 관리자</option><option value="6592">김경순 강사 (테스트)</option><option value="6866">리커버리 강사 (테스트)</option><option value="5886">박하은</option><option value="6413">서민혜 매니저 (독핏)</option><option value="6919">신다용 강사 (테스트)</option><option value="6864">이범수 강사 (테스트)</option><option value="6837">이서인 강사 (테스트)</option><option value="6575">이석 강사 (테스트)</option><option value="4444">이석훈</option><option value="6593">이혜원 강사 (테스트)</option><option value="5919">추성훈</option><option value="5421">테스트</option><option value="6862">피지오 강사 (테스트)</option><option value="4436">홍준선 강사</option></select>
								</p>
								<p>
									<span class="label" style="margin-right: 25px;">고객 유입 경로</span>
									<select name="inboundPathAttr" class="selectBox" title="고객 유입 경로"><option value="">선택해주세요</option><option value="6">전단지</option><option value="7">간판</option><option value="8">현수막</option><option value="39">드레그인</option><option value="9">회원추천</option><option value="10">지인추천</option><option value="13">블로그</option><option value="11">페이스북</option><option value="12">인스타그램</option><option value="40">홈페이지</option><option value="41">온라인배너</option><option value="14">인터넷 검색</option><option value="42">키워드 광고</option><option value="15">기업제휴</option><option value="16">재등록</option><option value="17">기타</option></select>
								</p>
								<p>
									<span class="label" style="margin-right: 25px;">추천회원</span>
									<input name="recommendMemberName" type="text" placeholder="이름 입력" data-function="추천 회원 검색" style="width: 200px;" title="추천회원">
									<input type="hidden" name="recommendMember">
									
									<button data-function="추천 회원 검색" class="btn dark">회원 검색</button>
			
									</p><div class="search_member_result" data-visual-target="추천회원 검색 결과 목록 컨테이너" style="display: none; position: absolute; background-color: white; border: 2px solid #ccc;
											padding: 15px; border-radius: 5px; overflow: hidden; overflow-y: auto;
											width: 340px; z-index: 10; left: 165px; margin-left: 0">
										<ul data-draw-target="추천회원 검색 결과 목록 컨테이너"></ul>
									</div>
								<p></p>
								<p class="birth">
									<span class="label" style="margin-right: 25px;">생년월일</span>
									<input name="birthday" type="text" class="calendar hasDatepicker" readonly="" style="width: 200px !important;" title="생년월일" id="dp1569306633893">
									<input name="age" type="number" placeholder="나이 입력" style="width: 95px !important;" title="나이">
								</p>
								<div class="address" style="padding-left: 145px;">
									<span class="label" style="margin-right: 25px;">주소</span>
									<p class="zip">
										<input name="zipCode" type="text" placeholder="우편번호" style="width: 200px !important;">
										<button data-function="주소 검색" id="btnAddressSearch" class="btn dark">우편번호 찾기</button>
									</p>
									<p>
										<input name="address" type="text" placeholder="주소를 입력하세요." style="width: 300px !important;">
									</p>
									<p>
										<input name="addressDetail" type="text" placeholder="상세 주소 입력" style="width: 300px !important;">
									</p>
								</div>
								<p>
									<label for="email" class="label" style="margin-right: 25px;">이메일</label>
									<input type="text" name="memberId1" id="email" style="width: 200px;">
									<span>@</span>
									<input type="text" name="memberId2" style="width: 150px;">
								</p>
								<p>
									<span class="label" style="margin-right: 25px;">메모</span>
									<textarea name="memo" title="메모" style="width: 370px; height: 45px;"></textarea>
								</p>
							</form>
						</fieldset>
					</div>
					<div class="pop_btn" data-function-group="regist" style="display: block;">
						<button data-function="close" type="button" class="btn gray">닫기</button>
					</div>
					<a class="close" data-function="close">팝업 닫기</a>
				</div>
			</div>
		</div>
 -->

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
												                     			<img src="../img/smile.png"></p>
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


