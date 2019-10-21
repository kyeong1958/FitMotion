<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, java.util.List, java.util.HashMap" %>    
<!-- ============================ [[ 회원관리상세]] ======================================== -->
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/memberManagement.css">
<style type="text/css">
body{
   padding:0%;
}
</style>
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
		<div class="bar_area">
			<a class="bar_menu" href="#">홈</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">회원목록</a>
			<img src="../images/location_arrow.png">
			<a class="bar_menu" href="#">회원상세</a>
		</div>
	
	<!-- ================================= [[ 개인정보 ]] =================================================== -->
	 <%
    	List<Map<String,Object>> bhDetList = (List<Map<String,Object>>)request.getAttribute("bhDetList");
		Map<String,Object> rMap = new HashMap<>();    	
	 	if(bhDetList!=null){
	 		rMap = bhDetList.get(0);
    	}
    	
    	
    
    
    %>         
		<div class="row profile">
			<div class="col-lg-4">
				<div class="profile-top memname">
					<%=rMap.get("MEM_NAME") %>
				</div>
				<div class="profile-bottom">
					25세/1995-07-19
				</div>			
			</div>
			<div class="col-lg-4">
				<div class="profile-top">
					<img src="../images/gender2.png" style="width: 6%;">
					여성
				</div>
				<div class="profile-bottom">
					<img src="../images/address.png" style="width: 6%;">
					경기도 안산시 상록구 본오동
				</div>			
			</div>
			<div class="col-lg-4">
				<div class="profile-top">
					<img src="../images/phone.png" style="width: 6%;">
					010-2680-6595
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
						12770
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						첫 등록일
					</span>
					<span style="text-align: -webkit-match-parent;">
						2019-09-25
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						담당자
					</span>
					<span style="text-align: -webkit-match-parent;">
						이경애
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						회원용 APP
					</span>
					<span style="text-align: -webkit-match-parent;">
						사용안함
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						락커번호
					</span>
					<span style="text-align: -webkit-match-parent;">
						12
					</span>
				</div>
				<div class="personal-card-line">
					<span class="personal-card-label">
						바코드 번호
					</span>
					<span style="text-align: -webkit-match-parent;">
						등록된 바코드가 없습니다.
					</span>
				</div>
				<div class="personal-card-memotitle">
					<span>메모</span>
					<span><a href="#" class="memo-write" data-toggle="modal" data-target="#memo-write-modal">메모 작성</a></span>
				</div>
				<div class="row">
					<div class="personal-card-memocontent">
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
						메모내용<br>
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


