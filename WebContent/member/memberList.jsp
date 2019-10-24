<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <!-- 주노꺼랑 이관 완료 -->
 <%
	List<Map<String,Object>> bhSelList = (List<Map<String,Object>>)request.getAttribute("bhSelList");
	int size=0;
	if(bhSelList!=null){
		size = bhSelList.size();
	}
 %>
<!-- ============================ [[ 회원목록  ]] ======================================== -->
<%@ include file="../common/JEasyUICommon.jsp"%>
<%@ include file="../member/memberListModal.jsp"%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Member.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/Modal.css">
<style type="text/css">
body{
   padding:0%;
}

.container-fluid {
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

	function r_change(){
		alert("양호");
	}
	
	
	function MIns(){
		$("#MIns").modal();
	}
	$(document).ready(function(){
	    //최상단 체크박스 클릭
	    $("#checkall").click(function(){
	    	//alert("체크박스눌림");
	        //클릭되었으면
	         if($("#checkall").prop("checked")){
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
	            $("input[name=check]").prop("checked",true);
	         // alert("전체가 다눌린다");
	            //클릭이 안되있으면
	        }else{
	            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
	            $("input[name=check]").prop("checked",false);
	        } 
	    })
	});
	
	
	var reportSeqArr = "";
	function M_del(){
			 	var mem_num = null;
			 	mem_num = $("#check_mem_num").val();
			 	//alert(mem_num);
					var formData = $("#f_insert").serialize();
					 $.ajax({
						method:"POST"
						,data:formData
						,url:"/member/bhDEL.fm?mem_num="+mem_num
						,success:function(data){
							$("#in_005fcard").html(data);
						}
					}); 
		  		  }
		 
	function eqch(mem_num){
	 $("#check").val(mem_num);
	}
	$(function () {
	    $(".tab_area #tabul li button").click(function () {
	        $(".tab_area #tabul li button").removeClass("active").css("color", "#333");
	         $(this).addClass("active").css("color", "#22B2FB",
	        								 "border-bottom","1px solid #fff");
	    });
	})
	    function memInsert(){
			var formData = $("#f_insert").serialize();
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
					<button type="button" class=" tabBtn" id="nonPaymentMember" value="nonPaymentMember"  rel="1" href="#">환불 회원
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
					<button type="button" class=" tabBtn" id="ReceivablesMember" value="ReceivablesMember"  href="#" rel="5">미납 회원
						<span>16</span></button>
				</li>
				<li>
					<button type="button" class=" tabBtn" id="refunds" value="refunds" href="#"  rel="6">환불
						<span>21</span></button>
				</li>
				
			</ul>
        </div>
     <!--    <div class="Menufr">
            
            <select class="select_month">
	            <option value="201909">2019년 11월</option>
	            <option value="201908">2019년 10월</option>
	            <option value="201907">2019년 09월</option>
	            <option value="201906">2019년 08월</option>
	            <option value="201905">2019년 07월</option>
	            <option value="201904">2019년 06월</option>
	            <option value="201903">2019년 05월</option>
	            <option value="201902">2019년 04월</option>
	            <option value="201901">2019년 03월</option>
	            <option value="201812">2019년 02월</option>
	            <option value="201811">2019년 01월</option>
	            <option value="201810">2018년 12월</option>
        	</select>
        </div> -->
    </div>
</div>


<!--=================================[[메뉴선택창부분 끝 ]]==========================================  -->

<!--==================================[[검색 조회 부분 시작 ]]====================================================  -->
			
				<div class="section" style="padding: 35px 66px">
			
			<div class="search_bar search_add" id="divSearch">
        <fieldset id="S_fieldset">
            <legend>검색</legend>
            <form id="frmMemberSearch">
                <p>
               
                  <select  class="selectBox" id="mem_search" name="mem_search">
                        <option value="recentReg">최근 등록 순</option>
                        <option value="mem_name">이름 순(가나다)</option>
                        <option value="age">나이 순</option>
                    </select> 
              
              
                  
                  <!--   <select  class="selectBox"  >
                        <option value="">연령대</option>
                        <option value="10">10대</option>
                        <option value="20">20대</option>
                        <option value="30">30대</option>
                        <option value="40">40대</option>
                        <option value="50">50대</option>
                        <option value="60">60대</option>
                        <option value="70">70대 이상</option>
                    </select>  -->
                    
                	<select  class="selectBox" id="genderSearch" name="genderSearch" >
                        <option value="">성별</option>
                        <option value="남성">남</option>
                        <option value="여성">여</option>
                    </select>
                 
                    <!-- <select  class="selectBox" >
                        <option value="">상품 목록</option>
                        
                            <option value="19906">0000</option>
                         
                            <option value="17025">10:1 그룹레슨 (플라잉요가) 12회</option>
                        
                            <option value="17027">10:1 그룹레슨 (플라잉요가) 36회</option>
                        
                            <option value="17029">10:1 그룹레슨 (플라잉요가) 72회</option>
                        
                            <option value="18973">1:1 TEST 20회 3개월</option>
                        
                            <option value="20117">1:1 TEST 무제한 1개월</option>                 
                    </select> -->
                    
                   <!--  <select  class="selectBox" >
                        <option value="">서비스 목록</option>
                        
                            <option value="364"></option>
                        
                            <option value="1157">10:1 그룹레슨 (플라잉요가)</option>
                        
                            <option value="737">1:1 개인레슨 (헬스 PT)</option>
                        
                            <option value="1156">4:1 그룹레슨 (기구필라테스)</option>
                        
                            <option value="1232">5:1 그룹수업</option>   
                    </select> -->
                    
                    <select  class="selectBox" >
                        <option value="">라커 사용여부</option>
                        <option value="lockerExp3">라커 만료3일전</option>
                        <option value="lockerExp7">라커 만료7일전</option>
                        <option value="lockerExp">라커 사용만료</option>
                    </select>
                 
                    <select class="selectBox" >
                        <option value="">담당강사</option>
                        
                            <option value="강민호강사">강민호 강사</option>
	                    </select> 
                  <!--   <span class="search_box" style="width: 370px;">
                        <input type="text"  >
						<button  id="seicon" type="button" class="search"></button>
						&nbsp;&nbsp;
                    </span> -->
	                    <span class="search_box" style="float: right;">
						<form name="searchFrm" >
							<input type="text"  placeholder="이름, 전화번호, 이메일, 메모"  id="keywork" name="keyword" style="width: 185px;">
							<button type="button"   class="search">검색</button>
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
            	<a  class="btn red small" onclick="M_del()">회원 삭제</a>
        </div>
    </div>
	<!--=========================================[[버튼 부붙 끝 ]]======================  -->
	
	<!--==================================[[멤버 리스트 부분 시작 ]]===============================  -->
				<div class="grid_list" id="card">
			
                    <div id="in_005fcard">
         
                    </div>     
      </div>
	
	<!--==================================[[멤버 리스트 부분 끝 ]]===============================  -->
	
</div>
<!--==================================[[검색 조회 부분 끝 ]]====================================================  -->
<!-- ================================= [[ 화면전환 ]] =================================================== -->
</div>
