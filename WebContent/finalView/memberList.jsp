<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================ [[ 회원목록  ]] ======================================== -->
<%@ include file="/common/JEasyUICommon.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Member.css">
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
		  if( reportSeqArr == ""){
			  
		        alert("선택된 회원이 없습니다.");
		        return ;
		    } 
		     
		  /*   //삭제 처리 아작스
		    else {
		        //컨트롤러 단에서 '//'를 두 개 씩 split 해주기 때문에 처음과 끝에 '/' 하나 씩 더 붙여줌
		        document.getElementById("card").value = "/" +reportSeqArr + "/"; 
		         
		        $.ajax({
		             
		            url : '삭제 처리할 url',
		            type : "POST",
		            datatype : 'json',
		            data:{
		                useGuideSeq : $("#card").val()
		            },
		            success : function(data) {
		                 
		                (성공 시)
		            },
		            error:function(request, status, error) {
		 
		                (실패 시)
		 
		            }
		        })
		    }
		 */
		
	}

	
	$(function () {

	/*     $(".search_bar .search_add").hide();
	    $(".search_bar .search_add").show(); */

	    $(".tab_area #tabul li button").click(function () {
	        $(".tab_area #tabul li button").removeClass("active").css("color", "#333");
	        //$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
	         $(this).addClass("active").css("color", "#22B2FB",
	        								 "border-bottom","1px solid #fff");
	   /*      $(".search_bar .search_add").hide(); */
	    /*     var activeTab = $(this).attr("rel");
	        $("#" + activeTab).fadeIn()
	var tabList = document.querySelectorAll('.tab_area #tabul li button') */
		/* 
		Array.prototype.forEach.call(tabList, function(list) {
		list.children[0].addEventListener('click', function(e) {
		e.preventDefault();
				
		
		var tabContent = document.querySelectorAll('.section')
		var tabNum = this.parentElement.getAttribute('data-tabnum')

		Array.prototype.forEach.call(tabContent, function(cont, i) {
				cont.style.display = 'none'
					tabList[i].className = 'tabList'
						})
							tabContent[tabNum].style.display = 'block'
								if(list.className.indexOf('tabList') == -1) {
							list.className = 'tabList'
						}
					})
				}) */
				
				 /*  var test = {};
			       test.id = $(this)[0].id;
			        
			       console.log(test);
			        $.ajax({
						 type:"POST",
			                dataType:"json",
			                
			                url:"../js/main2.js",	               
			                contentType: "application/json",
			                accept:"application/json",

			                success:function (data){  
			               			console.log(data);
			               			
			                },error:function(){
			                	console.log("error");

			                }
			        }); */

	    });
</script>
<div id="memList">
<!--=========================[[ 홈바 시작 ]]========================== -->
<div class="bar_area">
		<a class="bar_menu" href="#">홈</a>
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
                        
                            <option value="5849">강민호 강사</option>
                        
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
            <h4>152명의 회원 중 0명이 선택되었습니다.</h4>
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
          <ul>
              <!-- Loop -->     
              
           <% 
           for(int i=0; i<20; i++) {
           %>   
                         
              <li >
                  <div class="profile">
                      <p class="pic" id="pic">
                      <img src="../images/smile.png"></p>
                      <p class="name" id="name">헬스맨7</p>
                      <p class="info">1세 / 남 / 001-2448-1277</p>
                  </div>
                  <div class="card_itm" id="card_itm">
                      <p class="unit">
								<label>최근 결제 상품</label>				
                              <span class="letter_crap wd_add">락카 12개월</span>
				               <i class="expired">만료일 : 2020-09-25</i>  
                      </p>
                      
                  </div>
                  
                  <div class="function_btn" >
                      <input type="checkbox"  checked="checked" name="check" class="checkBox"  data-sms-agree="Y" >
                      		<label for="member_1">회원 선택</label>	  
						  <a  class="btn green small cart">상품판매</a>
					  
                      <a  class="btn blue small view" onClick="mempage('./memberManagementDetail.jsp')" >상세보기</a>
                  </div>
              </li>
              
              
        <%
        
        }
        
        %>          

              <!-- //Loop  -->
          </ul>
      </div>
	<!--==================================[[멤버 리스트 부분 끝 ]]===============================  -->
	
</div>
<!--==================================[[검색 조회 부분 끝 ]]====================================================  -->
<!-- ================================= [[ 화면전환 ]] =================================================== -->
</div>
<%@ include file="/finalView/memberListModal.jsp"%>