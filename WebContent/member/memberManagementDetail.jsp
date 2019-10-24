<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, java.util.List, java.util.HashMap" %>    
 <!-- 주노꺼랑 이관 완료 -->
<!-- ============================ [[ 회원관리상세]] ======================================== -->
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/memberManagement.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Modal.css">
	 <%
    	Map<String,Object> bhDetList = (Map<String,Object>)request.getAttribute("bhDetList");
    	int size = 0;//주의 로우의 수가 아니라 컬럼의 수
    	if(bhDetList!=null && bhDetList.size()>0){
    		bhDetList.get("MEM_NUM");
    	}
    %> 
  <script>
 function mUPD(mem_num,mem_name,mem_barcode_num,mem_gender,mem_address,
		 		mem_memo,mem_app_availability,mem_manager,mem_registration_date,
		 		mem_birth,mem_hp){
	 $("#mupd").modal();
	 $("#umem_num").val(mem_num);
	 $("#umem_name").val(mem_name);
	 $("#umem_barcode_num").val(mem_barcode_num);
	 $("#umem_gender").val(mem_gender);
	 $("#umem_address").val(mem_address);
	 $("#umem_memo").val(mem_memo);
	 $("#umem_app_availability").val(mem_app_availability);
	 $("#umem_manager").val(mem_manager);
	 $("#umem_registration_date").val(mem_registration_date);
	 $("#umem_birth").val(mem_birth);
	 $("#umem_hp").val(mem_hp);
 }
 function memUdate(){
		 var formData = $("#f_update").serialize();
		 $.ajax({
			method:"POST"
			,data:formData
			,url:"/member/bhUPD.fm"
			,success:function(data){
				alert("성공");
				$("#memupdate").html(data);
			}
		});  
	} 
  </script>
    
<style type="text/css">
body{
   padding:0%;
}
</style>
<div id="memupdate">
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">회원목록</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">회원상세</a>
		<div class="homefr" style="padding-right:10px;float: right;">
		  	<a href="#" class="btn dark" id="MIns-B" data-toggle="modal" onclick="mUPD('<%=bhDetList.get("MEM_NUM") %>'
												  	,'<%=bhDetList.get("MEM_NAME") %>','<%=bhDetList.get("MEM_BARCODE_NUM") %>',
												  	'<%=bhDetList.get("MEM_MEM_GENDER") %>','<%=bhDetList.get("MEM_ADDRESS") %>',
												  	'<%=bhDetList.get("MEM_MEMO") %>','<%=bhDetList.get("MEM_APP_AVAILABILITY") %>',
												  	'<%=bhDetList.get("MEM_MANAGER") %>','<%=bhDetList.get("MEM_REGISTRATION_DATE") %>',
												 		'<%=bhDetList.get("MEM_BIRTH") %>','<%=bhDetList.get("MEM_HP") %>')">정보수정</a>
		 </div>
				
		</div>
	
	<!-- ================================= [[ 개인정보 ]] =================================================== -->
         
		<div class="row profile">
			<div class="col-lg-4">
				<div class="profile-top memname">
					<%=bhDetList.get("MEM_NAME") %>
				</div>
				<div class="profile-bottom">
					<%=bhDetList.get("MEM_BIRTH") %>
				</div>			
			</div>
			<div class="col-lg-4">
				<div class="profile-top">
					<img src="../images/gender2.png" style="width: 6%;">
					<%=bhDetList.get("MEM_GENDER") %>
				</div>
				<div class="profile-bottom">
					<img src="../images/address.png" style="width: 6%;">
					<%=bhDetList.get("MEM_ADDRESS") %>
				</div>			
			</div>
			<div class="col-lg-4">
				<div class="profile-top">
					<img src="../images/phone.png" style="width: 6%;">
					<%=bhDetList.get("MEM_HP") %>
				</div>
				<div class="profile-bottom">
					<img src="../images/email.png" style="width: 6%;">
					미입력
				</div>			
			</div> 
		</div>
		<div class="section">
	<!-- ================================= [[ 개인정보-카드 ]] =================================================== -->
			<div class="col-lg-4 memcard" style="height:670px;">
				<h3 class="memcard-title personal">개인 정보</h3>
				<div class="personal-card-line">
					<span class="personal-card-label">
						회원번호
					</span>
					<span style="text-align: -webkit-match-parent;">
						<%=bhDetList.get("MEM_NUM") %>
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						첫 등록일
					</span>
					<span style="text-align: -webkit-match-parent;">
						<%=bhDetList.get("MEM_REGISTRATION_DATE") %>
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						담당자
					</span>
					<span style="text-align: -webkit-match-parent;">
						<%=bhDetList.get("MEM_MANAGER") %>
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						회원용 APP
					</span>
					<span style="text-align: -webkit-match-parent;">
						<%=bhDetList.get("MEM_APP_AVAILABILITY") %>
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						락커번호
					</span>
					<span style="text-align: -webkit-match-parent;">
						<%=bhDetList.get("LOCKER_NUM") %>
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						바코드 번호
					</span>
					<span style="text-align: -webkit-match-parent;">
						<%=bhDetList.get("MEM_BARCODE_NUM") %>
					</span>
				</div>
				<div class="personal-card-memotitle">
					<span>메모</span>
					<span><a href="#" class="memo-write" data-toggle="modal" data-target="#memo-write-modal">메모 작성</a></span>
				</div>
				<div class="row">
					<div class="personal-card-memocontent">
						<%=bhDetList.get("MEM_MEMO") %>
					</div>
				</div>
			</div>
	<!-- ================================= [[ 개인정보-카드  ]] =================================================== -->
	<!-- ================================= [[ 입장관리 ]] =================================================== -->
			<div class="col-lg-4 memcard">
				<h3 class="memcard-title personal" id="memcard-attendance">입장 관리</h3>
				<div class="memcard-scroll" data-spy="scroll" data-offset="0">
<%
	for(int i=0;i<10;i++){
%>
					<div class="memcard-title attendance">
						<div class="col-lg-6">
							<div>그룹수업 이용권</div>
							<div>테스트 (리포머)</div>
						</div>
						<div class="col-lg-3">
							<div>입장</div>
							<div>2019.09.25 10:30</div>
						</div>
						<div class="col-lg-3">
							<div>퇴장</div>
							<div></div>
						</div>
					</div>
<%
	}
%>
				</div>
			</div>
	<!-- ================================= [[ 입장 관리 ]] =================================================== -->			
	<!-- ================================= [[ 이용권내역 ]] =================================================== -->			
			<div class="col-lg-4 memcard">
				<h3 class="memcard-title personal" id="memcard-attendance">이용권 내역</h3>
					<div class="memcard-scroll" data-spy="scroll" data-offset="0">
					<div class="memcard-title attendance">
						<div class="col-lg-6">
							<div>그룹수업 이용권</div>
							<div>테스트 (리포머)</div>
						</div>
						<div class="col-lg-3">
							<div>입장</div>
							<div>2019.09.25 10:30</div>
						</div>
						<div class="col-lg-3">
							<div>퇴장</div>
							<div></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	<!-- ================================= [[ 이용권내역 ]] =================================================== -->
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
</div>

	<!-- ================================= [[ modal ]] =================================================== -->
 <div class="modal fade" id="memo-write-modal">
    <div class="modal-dialog modal-dialog-centered modal-sm-2">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header memo-write-modal-header">
          <h4 class="modal-title">메모</h4>
          <button type="button" class="memo-write-modal-header-close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
        	<input type="text" class="memo-write-modal-textbox">
        </div>
     
        <!-- Modal footer -->
        <div class="modal-footer" style="text-align: center;">
          <button type="button" class="memo-write-modal-btn">확인</button>
        </div>
        
      </div>
    </div>
  </div>
	<!-- ================================= [[ modal ]] =================================================== -->
<!--=============================[[정보수정 모달 창 시작 ]]==========================================================  -->
	<div class="modal" id="mupd">
				  <div class="modal-dialog">
				    <div class="modal-content" id="MI-content">
				
				      <!-- Modal Header -->
				      <div class="modal-header" id="MI-header">
				        <h2 class="modal-title" id="MI-title">회원 정보 수정 </h2>
				        
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
							<form id="f_update">
								
								<p>
									<label for="name" style="margin-left: 12px;margin-right: 10%;">
										<span style="color: #FF5722;">*</span>회원명
									</label>
									<input type="text" id="umem_name" name="mem_name" placeholder="이름 입력" style="width: 200px; margin-right: 25px;">
			
									<input type="radio" value="남성" checked="checked" id="umem_gender" name="mem_gender">
									<label for="male">남성</label>
									<input type="radio"  value="여성" id="umem_gender"  name="mem_gender">
									<label for="female">여성</label>
								</p>
								 <p>
									<span class="label" style="margin-left: 12px;margin-right: 4%">
									<span style="color: #FF5722;">*</span>휴대전화번호</span>
									<input class="re"  type="text" title="휴대전화번호" maxlength="12" id="umem_hp" name="mem_hp">
												<span style="margin-left: 30px; margin-right: 5px;">SMS 수신</span>
									<input type="checkbox" id="umem_app_availability" name="mem_app_availability" value="이용" checked="checked">
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
									<input  type="text" id="umem_num" name="mem_num" style="width: 200px;" title="회원번호">
								</p>
								 <p>
									<label  class="label" style="margin-right: 11px;margin-left: 12px;">회원 바코드 번호</label>
									<input type="text" id="umem_barcode_num" name="mem_barcode_num" style="width: 200px;" title="입장바코드번호">
								</p>
							 
						
								 <hr style="border: 1px dashed #ccc; margin: 15px 0;">
								 <p>
									<label style="margin-left: 12px; margin-right: 9%">첫 등록일</label>
									<input type="text" id="umem_registration_date" name="mem_registration_date" class="calendar hasDatepicker" style="width: 200px;" title="첫 등록일" >
								</p> 
								 <p>
									<label style="margin-right:3%;">고객관리 담당자</label>
									
									<select id="MI-select" onchange="mode_Select()"  title="상담 담당자 선택" id="umem_manager" name="mem_manager">
									<option value="">선택해주세요</option>
									<option value="강민호">강민호 강사</option>
									<option value="손준호">손준호 강사</option>
									</select>
								</p>
							
									
							
							<p class="birth">
									<span class="label" style="margin-right: 10%;">생년월일</span>
									<input  type="text" id="umem_birth" name="mem_birth" class="calendar hasDatepicker" style="width: 200px !important;" title="생년월일" >
								</p>
								 <div class="address" style="padding-left: 139px;">
									<span class="label" style="margin-left: 26px">주소</span>
									<p class="zip">
										<input name="zipCode" id="uzipCode" type="text" placeholder="우편번호" style="width: 200px !important;">
										<button data-function="주소 검색"class="btn dark" style="color: #fff;">우편번호 찾기</button>
									</p>
									<p>
										<input type="text" id="umem_address" name="mem_address" placeholder="주소를 입력하세요." style="width: 300px !important;">
									</p>
									
								</div>
							
							  <p>
									<span class="label" style="margin-right: 14%;">메모</span>
									<textarea  title="메모" id="umem_memo" name="mem_memo" style="width: 370px; height: 45px;"></textarea>
								</p>
							</form>
						</fieldset>
				      </div>
				
				      <!-- Modal footer -->
				      <div class="modal-footer" id="MI-footer">	      
						      <div class="pop_btn" data-function-group="regist" style="display: block;">
								<button data-dismiss="modal" type="button" class="btn blue" onclick="memUdate()">수정 </button>
								<button data-dismiss="modal"  type="button" class="btn gray">닫기</button>
							</div>
				
				      </div>
				
				    </div>
				  </div>
				</div>
			
				



<!--=============================[[정보수정 모달 창 끝 ]]==========================================================  -->

