<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%
	List<Map<String,Object>> bhSelList = (List<Map<String,Object>>)request.getAttribute("bhSelList");
	int size=0;
	if(bhSelList!=null){
		size = bhSelList.size();
		out.print(size);
	}
 
 
 %>
<!-- ============================ [[ 회원목록  ]] ======================================== -->
<%@ include file="../common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Member.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Modal.css">
<style type="text/css">
body{
   padding:0%;
}
</style>
<script type="text/javascript">
	function mempage(url){
		$.ajax({
			method:'get'
		   ,url:url
		   ,success:function(data){
			   $("#memList").html(data);
			   
			  /*   $.ajax({
					method:"POST"
					,data:formData
					,url:"/member/BHSEL.fm"
					,success:function(data){
						//alert("성공");
						$("#in_card").html(data);
					}
				});   */
		   }
		});
	}
</script>
<!-- ================================= [[ 화면전환 ]] =================================================== -->
<script type="text/javascript">

	function MIns(){
		$("#MIns").modal();
	}
	$(document).ready(function(){
	    //최상단 체크박스 클릭
	    $("#checkall").click(function(){
	    	alert("체크박스눌림");
	        //클릭되었으면
	         if($("#checkall").prop("checked")){
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
	            $("input[name=check]").prop("checked",true);
	            alert("전체가 다눌린다");
	            //클릭이 안되있으면
	        }else{
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
	            $("input[name=check]").prop("checked",false);
	        } 
	    })
	});
	
	
	
	
	function extension(){
		alert("일괄 기간연장창 열림");
			$("#M_extension").modal();
		
		
	}
	
	function Group(){
		alert("그룹 추가창 열림 ");
		 $("#M_group").modal();
	}
	
	var reportSeqArr = "";
	function M_del(){
			 	var mem_num = null;
			 	mem_num = eqch($("#check").val());
		 /* if( mem_num == null ){
			  
		        alert("선택된 회원이 없습니다.");
		        return ;
		    }else {
		    	 */
		    	alert("삭제버튼눌림");
					var formData = $("#f_insert").serialize();
					
					 $.ajax({
						method:"POST"
						,data:formData
						,url:"/member/bhDEL.fm?mem_num="+mem_num
						,success:function(data){
							$("#in_card").html(data);
						}
					}); 
		    	
			 /*    } */
		    }
		 
		
	

	
	$(function () {

		

	    $(".tab_area #tabul li button").click(function () {
	        $(".tab_area #tabul li button").removeClass("active").css("color", "#333");
	         $(this).addClass("active").css("color", "#22B2FB",
	        								 "border-bottom","1px solid #fff");
	
	    });
	});
	
	    
	    
	    function memInsert(){
			//$("#MIns").modal("hide");
			//alert("눌림?");
			var formData = $("#f_insert").serialize();
			//alert("등록버튼 눌림?");
			 $.ajax({
				method:"POST"
				,data:formData
				,url:"/member/BHINS.fm"
				,success:function(data){
					alert("성공");
					$("#in_card").html(data);
				}
			}); 
		}
		
	    
	    
	    function eqch(mem_num){
			alert("체크박스눌림 ");
			
		 $("#check").val(mem_num);
		 	/* var test = $('input:checkbox[id="checkbox_id"]').val(); */
			alert(mem_num);
		
		}
	    
	    
</script>
<div id="memList">
<!--=========================[[ 홈바 시작 ]]========================== -->
<div class="bar_area">
		<a class="bar_menu" href="../shop/main.jsp">홈</a>
		<img src="../images/location_arrow.png">
		<a class="bar_menu" href="#">회원목록</a>

		 <div class="homefr" style="padding-right:10px;">
		  	<a href="#" class="btn dark" id="MIns-B" data-toggle="modal" data-target="#MIns">회원등록</a>
		 </div>
   </div>

<!--========================== [[홈바 끝 ]] ========================== -->

<!--=================================[[메뉴선택창부분 시작 ]]========================================= -->
		<div class="tab_area tab_add">
    <div class="section" id="sec">
        <div class="Menufl">
			<ul id="tabul">
				<li>
					<button type="button" class=" tabBtn" id="ALL" value="ALL" rel="0" href="#">전체 회원
						<span>345</span>
					</button>
				</li>
				<li>
					<button type="button" class=" tabBtn" id="nonPaymentMember" value="nonPaymentMember"  rel="1" href="#">미결제 회원
						<span>6</span>
					</button>
				</li>
				<li>
					<button type="button" class=" active tabBtn" id="AVAILABLE" value="AVAILABLE"  rel="2" href="#">이용 회원
						<span>152</span></button>
				</li>
				<li>
					<button type="button" class=" tabBtn"  id="EXPIRED" value="EXPIRED"  rel="0" href="#">만료 회원
						<span>184</span></button>
				</li>
				<li>
					<button type="button" data-expire-gubun="3" id="EXPIRED_3" class=" tabBtn" value="EXPIRED_3" data-gubun="3" href="#"  rel="3">만료 3일 전
						<span>0</span></button>
				</li>
				<li>
					<button type="button" data-expire-gubun="7" id="EXPIRED_15" class=" tabBtn" value="EXPIRED_15" data-gubun="7" href="#" rel="4">만료 15일 전
						<span>0</span></button>
				</li>
				<li>
					<button type="button" class=" tabBtn" id="ReceivablesMember" value="ReceivablesMember"  href="#" rel="5">미납 회원
						<span>16</span></button>
				</li>
				<li>
					<button type="button" class=" tabBtn" id="refunds" value="refunds" href="#"  rel="6">환불
						<span>21</span></button>
				</li>
				<li>
					<button type="button" class=" tabBtn" id="StopMember" value="StopMember" href="#" rel="7">중지 회원
						<span>1</span></button>
				</li>
			</ul>
        </div>
        <div class="Menufr">
            
            <select class="select_month">
	            <option value="201909">2019년 09월</option>
	            <option value="201908">2019년 08월</option>
	            <option value="201907">2019년 07월</option>
	            <option value="201906">2019년 06월</option>
	            <option value="201905">2019년 05월</option>
	            <option value="201904">2019년 04월</option>
	            <option value="201903">2019년 03월</option>
	            <option value="201902">2019년 02월</option>
	            <option value="201901">2019년 01월</option>
	            <option value="201812">2018년 12월</option>
	            <option value="201811">2018년 11월</option>
	            <option value="201810">2018년 10월</option>
        	</select>
       
                
            <ul id="tabul">
                <li><button type="button" class=" tabBtn" value="NEW">신규 결제 <span>22</span></button></li>
                <li><button type="button" class=" tabBtn" value="RENEW">재 결제 <span>17</span></button></li>
                <li><button type="button" class=" tabBtn" value="ReceivablesMemberMonth">미납 회원 <span><i>4</i></span></button></li>
                <!-- li><button type="button" class=" tabBtn" value="nonPaymentMemberMonth">미결제 회원 <span></span></button></li-->
                <li><button type="button" class=" tabBtn" value="refundsMonth">환불 <span><i>1</i></span></button></li>
            </ul>
        </div>
    </div>
</div>


<!--=================================[[메뉴선택창부분 끝 ]]==========================================  -->

<!--==================================[[검색 조회 부분 시작 ]]====================================================  -->
			
				<div class="section" style="padding: 35px 66px">
			
			<div class="search_bar search_add">
        <fieldset id="S_fieldset">
            <legend>검색</legend>
            <form id="frmMemberSearch">
                <p>
               
                  <select  class="selectBox" >
                        <option value="payment">최근 결제 순</option>
                        <option value="recentReg">최근 등록 순</option>
                        <option value="name">이름 순(가나다)</option>
                        <option value="age">나이 순</option>
                    </select> 
              
              
                  
                    <select  class="selectBox"  >
                        <option value="">연령대</option>
                        <option value="10">10대</option>
                        <option value="20">20대</option>
                        <option value="30">30대</option>
                        <option value="40">40대</option>
                        <option value="50">50대</option>
                        <option value="60">60대</option>
                        <option value="70">70대 이상</option>
                    </select> 
                    
                 <select  class="selectBox" >
                        <option value="">성별</option>
                        <option value="M">남</option>
                        <option value="F">여</option>
                    </select>
                    <select  class="selectBox" >
                        <option value="">상품 목록</option>
                        
                            <option value="19906">0000</option>
                        
                            <option value="17025">10:1 그룹레슨 (플라잉요가) 12회</option>
                        
                            <option value="17027">10:1 그룹레슨 (플라잉요가) 36회</option>
                        
                            <option value="17029">10:1 그룹레슨 (플라잉요가) 72회</option>
                        
                            <option value="18973">1:1 TEST 20회 3개월</option>
                        
                            <option value="20117">1:1 TEST 무제한 1개월</option>                 
                    </select>
                    <select  class="selectBox" >
                        <option value="">서비스 목록</option>
                        
                            <option value="364"></option>
                        
                            <option value="1157">10:1 그룹레슨 (플라잉요가)</option>
                        
                            <option value="737">1:1 개인레슨 (헬스 PT)</option>
                        
                            <option value="1156">4:1 그룹레슨 (기구필라테스)</option>
                        
                            <option value="1232">5:1 그룹수업</option>   
                    </select>
                    <select  class="selectBox" >
                        <option value="">라커 사용여부</option>
                        <option value="lockerExp3">라커 만료3일전</option>
                        <option value="lockerExp7">라커 만료7일전</option>
                        <option value="lockerExp">라커 사용만료</option>
                    </select>
                 
                    <select class="selectBox" >
                        <option value="">담당강사</option>
                        
                            <option value="강민호강사">강민호 강사</option>
                        
                            <option value="4435">기본 관리자</option>
                        
                            <option value="6592">김경순 강사 (테스트)</option>
                        
                            <option value="6866">리커버리 강사 (테스트)</option>
                        
                            <option value="5886">박하은</option>
                        
                            <option value="6413">서민혜 매니저 (독핏)</option>
                        
                            <option value="6919">신다용 강사 (테스트)</option>
                        
                       
	                    </select> 
                  <!--   <span class="search_box" style="width: 370px;">
                        <input type="text"  >
						<button  id="seicon" type="button" class="search"></button>
						&nbsp;&nbsp;
                    </span> -->
	                    <span class="search_box" style="float: right;">
						<form name="searchFrm" >
							<input type="text"  placeholder="이름, 전화번호, 이메일, 메모" name="keyword" style="width: 185px;">
							<button type="button" class="search">검색</button>
						</form>
					</span>
            
	           		 </p>
          		  </form>
			
			
		
        </fieldset>
    </div>
    
 <!-- ===========================================[[버튼 부분  여기서 부터 카드 부분 붙히기]]===============================================================  -->
	
	<!--=========================================[[버튼 부붙 시작 ]]======================  -->
	<div class="select_option" id="selectoption">
        
        <div class="B_fl">
            <h4><%=size %>명의 회원 중 0명이 선택되었습니다.</h4>
            
        </div>
        
        <div class="B_fr">
            <input type="checkbox" id="checkall">
            <label class="all">전체 선택</label>	
            <a  class="btn blue small"  data-toggle="modal" data-target="#M_extension" id="extension">일괄 기간연장</a>
            <a  class="btn blue small" data-toggle="modal" data-target="#M_group" id="Group">그룹 추가</a>
            	<a  class="btn red small" onclick="M_del()">회원 삭제</a>
        </div>
    </div>
	<!--=========================================[[버튼 부붙 끝 ]]======================  -->
	
	<!--==================================[[멤버 리스트 부분 시작 ]]===============================  -->
				<div class="grid_list" id="card">
			
                    <div id="in_card">
         
                    </div>     
      </div>
	
	<!--==================================[[멤버 리스트 부분 끝 ]]===============================  -->
	
</div>
<!--==================================[[검색 조회 부분 끝 ]]====================================================  -->
<!-- ================================= [[ 화면전환 ]] =================================================== -->
</div>

<!--=============================================[[모달]]===========================================================  -->

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





