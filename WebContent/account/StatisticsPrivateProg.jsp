<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<%@ include file="/NewCSS/StatisticscssSales.jsp"%> 
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/table.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/StatisticsProg.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>
<script>
	var jb = jQuery.noConflict();
</script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 여기가 easyui 관련
<link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../themes/icon.css">
<link rel="stylesheet" type="text/css" href="../demo/demo.css"> 
 <script type="text/javascript" src="../js/jquery.easyui.min.js"></script> 
<script type="text/javascript" src="../js/commons.js"></script>
<script type="text/javascript" src="../js/jquery.cookie.js"></script>  -->

<!--   여기가 pagination.js 관련
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.min.js"></script>    
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/paginationjs/2.1.4/pagination.css"/>  -->
<%-- <%@ include file="/common/JEasyUICommon.jsp"%> --%>

<%
	int size = 0;
	Map<String, List<Map<String, Object>>> privateProg = (Map<String, List<Map<String, Object>>>) request.getAttribute("privateProg");

	if (privateProg != null && privateProg.size() > 0) {
		size = privateProg.size();
	}

	String startDate = "";
	String endDate ="";
	if(startDate == ""){
		   startDate = "20190801";
	}
	if(endDate == ""){
		   endDate = "20191101";
	}
	
	/*  if(request.getAttribute("startDate") != null && request.getAttribute("endDate") != null){   
		   startDate = (String)request.getAttribute("startDate");
		   endDate = (String)request.getAttribute("endDate");
	} */
	int paysize = privateProg.get("개인강의매출").size();
	
	String hap = startDate+endDate;
	
	String pagenumber = (String)privateProg.get("페이지").get(0).get("page");  
%>

<!-- jstl을 사용하기 위해서 c:set으로 chart에 값을 담음. -->

<c:set var="private_size" value="<%=size%>" />
<c:set var="privatep" value="<%=privateProg%>" />
<c:set var="startDate" value="<%=startDate %>" />
<c:set var="endDate" value="<%=endDate %>" />
<style type="text/css">
body {
	padding: 0%;
}
</style>

<script type="text/javascript">
var startD;
var endD;
var dateHap;

//(페이지네이션) 한화면에서 보여줄 컬럼숫자를 담는 변수
var pageNumm = <%=pagenumber%>;
if( pageNumm == null){
	pageNumm = 10;
}
// 내역, 회원이름 별 검색 기능
function searchClick(){
	var search = $("#search").val();
	var searchText = $("#searchText").val();
	//alert("검색버튼클릭 "+search +", "+ searchText );
	$.ajax({
		method : 'get',
		url : '/account/privateProg.fm?startDate=20190101&endDate=20191130&pageNumm='+pageNumm+'&search='+search+"&searchText="+searchText,
		success : function(data) {
			$("#mainboard2").html(data);
		}
	}); 
}
	
//페이지 변경때 select box change
function pagichange(){
	var pval = $("#pagetotal option:selected").val();
	if(pval == 10){
		pageNumm = 10;
		$.ajax({
			method : 'get',
			url : '/account/privateProg.fm?startDate=20190701&endDate=20191105&pageNumm=10',
			success : function(data) {
				$("#mainboard2").html(data);
			}
		}); 
	}else if (pval == 25){
		pageNumm = 25;
		$.ajax({
			method : 'get',
			url : '/account/privateProg.fm?startDate=20190701&endDate=20191105&pageNumm=25',
			success : function(data) {
				$("#mainboard2").html(data);
			}
		}); 
	}else if (pval == 50){
		pageNumm = 50;
		$.ajax({
			method : 'get',
			url : '/account/privateProg.fm?startDate=20190701&endDate=20191105&pageNumm=50',
			success : function(data) {
				$("#mainboard2").html(data);
			}
		}); 
	}else if (pval == 100){
		pageNumm = 100;
		$.ajax({
			method : 'get',
			url : '/account/privateProg.fm?startDate=20190701&endDate=20191105&pageNumm=100',
			success : function(data) {
				$("#mainboard2").html(data);
			}
		}); 
	}
}


function myformatter(date){
    var y = date.getFullYear();
    var m = date.getMonth()+1;
    var d = date.getDate();
    return y+'-'+(m<10?('0'+m):m)+'-'+(d<10?('0'+d):d);
}

function myparser(s){
    if (!s) return new Date();
    var ss = (s.split('-'));
    var y = parseInt(ss[0],10);
    var m = parseInt(ss[1],10);
    var d = parseInt(ss[2],10);
    if (!isNaN(y) && !isNaN(m) && !isNaN(d)){
        return new Date(y,m-1,d);
    } else {
        return new Date();
    }
}

// 달력 검색버튼 이벤트
function dateClick(){

	startD = $('#datebox11').datebox('getValue');
	endD = $('#datebox22').datebox('getValue');
	//alert(startD+", "+endD);
	
 	 $.ajax({
			method : 'get',
			url : '/account/privateProg.fm?startDate='+startD+'&endDate='+endD+'&pageNumm='+pageNumm,
			success : function(data) {
				$("#mainboard2").html(data);
			}
		});  
}
//달력 당월버튼 이벤트
function dateMClick(){
 	 $.ajax({
			method : 'get',
			url : '/account/privateProg.fm?startDate=20191101&endDate=20191130&pageNumm='+pageNumm,
			success : function(data) {
				$("#mainboard2").html(data);
			}
		});  
}
//달력 당분기버튼 이벤트
function dateBClick(){
 	 $.ajax({
			method : 'get',
			url : '/account/privateProg.fm?startDate=20191001&endDate=20191231&pageNumm='+pageNumm,
			success : function(data) {
				$("#mainboard2").html(data);
			}
		});  
}
//달력 당 해(YEAR) 버튼 이벤트
function dateYClick(){

 	 $.ajax({
			method : 'get',
			url : '/account/privateProg.fm?startDate=20190101&endDate=20191231&pageNumm='+pageNumm,
			success : function(data) {
				$("#mainboard2").html(data);
			}
		});  
 	 
}
	$(document).ready(function(){
		startD = ${startDate};
		endD = ${endDate};
		
		$('#pagetotal').val(<%=pagenumber%>);
	   $(".sales").hide();
	   $(".member").hide();
	   $(".analysis").hide();
	   $(".service").hide();

	   $('.dataTables_length').addClass('bs-select');
	    
 	   //선택가능날짜 범위 설정
 	   $('#datebox11').datebox().datebox('calendar').calendar({
	       validator: function(date){
	           var now = new Date();
	           var d1 = new Date(now.getFullYear()-1, now.getMonth(), now.getDate());
	           var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
	           return d1<=date && date<=d2;
	       }
	   });  
 	   
       /* $('#datebox11').datebox('setValue', startD);
	  $('#datebox22').datebox('setValue', endD);   */
	  
	  
 	  $('#datebox11').datebox({
			onSelect: function(date){
/* 				alert(date.getFullYear()+":"+(date.getMonth()+1)+":"+date.getDate()); */
			}
	  });
  	  $('#datebox22').datebox({
 			onSelect: function(date){
 				//alert(date.getFullYear()+":"+(date.getMonth()+1)+":"+date.getDate());
 			}
 	  });
	});
	
	var test1 = new Array();
	var testdata = new Array(new Array());
	var nudata = "";
	<c:forEach items="${privatep}" var="map">
		<c:if test = "${map.key == '개인강의매출'}">
			<c:choose>
		       <c:when test="${private_size>0}">
			   	<c:forEach var="privat" items="${map.value}" varStatus="status">
					test1.push("${privat.ROWNUM}");
					test1.push("${privat.GS_DEP_DATE}");  
					test1.push("${privat.MEM_NAME}");  
					test1.push("${privat.MEM_HP}");  
					test1.push("${privat.GS_DEP_HISTORY}");  
					test1.push("${privat.GS_STATE}");
					test1.push("${privat.GS_PAY_AMOUNT}");  
					test1.push("${privat.GS_REF_AMOUNT}");  
					test1.push("${privat.GS_ACCOUNT_DUE}");  
					test1.push("${privat.GS_PAY_METHOD}");  	          
		            test1.push("${privat.GS_BILLING_PERSON}");   
		            
		          <c:choose>
				     <c:when test="${status.index == 0}">
			              testdata[0].push("${privat.ROWNUM}");
			              testdata[0].push("${privat.GS_DEP_DATE}");
			              testdata[0].push("${privat.MEM_NAME}");
			              testdata[0].push("${privat.MEM_HP}");
			              testdata[0].push("${privat.GS_DEP_HISTORY}");  
			              testdata[0].push("${privat.GS_STATE}");
			              testdata[0].push("${privat.GS_PAY_AMOUNT}");  
			              testdata[0].push("${privat.GS_REF_AMOUNT}");  
			              testdata[0].push("${privat.GS_ACCOUNT_DUE}");
			              testdata[0].push("${privat.GS_PAY_METHOD}");
			              testdata[0].push("${privat.GS_BILLING_PERSON}");   
		    		 </c:when> 
		       </c:choose>
		      
		       <c:if test="${status.index > 0}">
					testdata.push(test1);
			   </c:if>
		       	   //testdata.push(test1);
				test1 = new Array(); 
		     </c:forEach>
		   </c:when>
		</c:choose>
	</c:if>
</c:forEach>   


</script>


<div class="bar_area" id="SS-bar">
	<div class="homefl">
		<a href="/home/" id="home">홈</a> <a id="management">리포트와 통계</a> <a>회원
			통계 </a>
	</div>
	<!-- 메뉴바 누르는 부분 시작  -->
	<div class="homenav fr">
		<div class="homenav fr">
			<ul>
				<li><a class="n_04" href="javascript:ajax('../account/StatisticsSales2.jsp')">매출통계</a></li>
				<li><a class="n_05" href="javascript:ajax('../account/StatisticsMember2.jsp')">회원통계</a></li>	
				<li><a class="n_01 active" href="javascript:ajax('../account/StatisticsPrivateProg2.jsp')">개인레슨 통계</a></li>
				<li><a class="n_03"	href="javascript:ajax('../account/StatisticsPublicProg2.jsp')">그룹수업 통계</a></li>
			</ul>
		</div>
	</div>
	<!-- 메뉴바 누르는 부분 끝 -->
</div>
<!-- ================================= [[ 홈 ]] =================================================== -->

<div class="tab-area">
	<div id="period_btns">
		<button class="btn blue small" onclick="dateYClick()">당 해</button>
		<button class="btn blue small" onclick="dateBClick()">당 분기</button>
		<button class="btn blue small" onclick="dateMClick()">당 월</button>

		<span style="margin-left: 1%"> 
			<input class="easyui-datebox" data-options="formatter:myformatter,parser:myparser" id="datebox11" type="text"/> 
			<span>~</span>
			<input class="easyui-datebox" data-options="formatter:myformatter,parser:myparser" id="datebox22" type="text"/>
			<button class="btn blue small" onclick="dateClick()">조회</button>
		</span>
	</div>
</div>

<%-- <c:forEach items="${privatep}" var="map">
			<c:if test = "${map.key == '개인강의정리'}">
				<c:forEach items="${map.value}" var="list">
					${list}
				</c:forEach>
			</c:if>
		</c:forEach> --%>

<div class="section">
	<div class="row">

		<c:forEach items="${privatep}" var="map">
			<c:if test="${map.key == '개인강의합'}">
				<c:forEach items="${map.value}" var="data">

					<div class="staff-salary-detail-box">
						<div class="staff-salary-detail-box-header">총 건수</div>
						<div class="staff-salary-detail-box-body">${data.NUM}건</div>
					</div>
					<div class="staff-salary-detail-box">
						<div class="staff-salary-detail-box-header">총 매출</div>
						<div class="staff-salary-detail-box-body">${data.AMOUNT}원</div>
					</div>
					<div class="staff-salary-detail-box">
						<div class="staff-salary-detail-box-header">총 회원수</div>
						<div class="staff-salary-detail-box-body">${data.MEM}명</div>
					</div>

				</c:forEach>
			</c:if>
		</c:forEach>

		<c:forEach items="${privatep}" var="map">
			<c:if test="${map.key == '개인강의남자'}">
				<c:forEach items="${map.value}" var="data">
					<div class="staff-salary-detail-box">
						<div class="staff-salary-detail-box-header">남자 회원수</div>
						<div class="staff-salary-detail-box-body">${data.COUNT}명</div>
					</div>
				</c:forEach>
			</c:if>
		</c:forEach>
		<c:forEach items="${privatep}" var="map">
			<c:if test="${map.key == '개인강의여자'}">
				<c:forEach items="${map.value}" var="data">
					<div class="staff-salary-detail-box">
						<div class="staff-salary-detail-box-header">여자 회원수</div>
						<div class="staff-salary-detail-box-body">${data.COUNT}명</div>
					</div>
				</c:forEach>
			</c:if>
		</c:forEach>


	</div>
	<!-- ================================= [[ TABLE BOTTOM ]] =================================================== -->
	
	<!-- ================================= [[ combobox ]] =================================================== -->
	
	<div class="combobox-area">
		<span class="middle">
<!-- 		<select class="accounting-combobox">
			<option value="">그룹</option>
			<option value="">0000</option>
			<option value="">헬스</option>
			<option value="">스피닝</option>
		</select>  -->
		<select class="accounting-combobox" id="search">
			<option value="구매회원">구매회원</option>
			<option value="결제내역">결제내역</option>
<!-- 			<option value="">이관영</option>
			<option value="">박주석</option>
			<option value="">김우영</option>
			<option value="">기성유</option>
			<option value="">박보영</option>
			<option value="">김지우</option>
			<option value="">이지성</option>
			<option value="">이지은</option>
			<option value="">최종현</option>
			<option value="">곽호영</option>
			<option value="">김다정</option>
			<option value="">남소영</option> -->
		</select>
<!-- 		<select class="accounting-combobox">
			<option value="">상품 목록</option>
			<option value="17025">10:1 그룹레슨 (플라잉요가) 12회</option>
			<option value="17027">10:1 그룹레슨 (플라잉요가) 36회</option>
			<option value="17029">10:1 그룹레슨 (플라잉요가) 72회</option>
			<option value="18973">1:1 TEST 20회 3개월</option>
			<option value="20117">1:1 TEST 무제한 1개월</option>
		</select> -->

		</span>
<!-- ================================= [[ combobox end ]] =================================================== -->
		
			<span class="middle"> 
			<!-- <label id="reservationlabel">검색:</label> -->
				<input type="search" class="reservation_searchbox" id="searchText">
				<button class="btn blue small" onclick="searchClick()">검색</button>
			</span>
			<span class="middle" style="width: 180px; float: right">
				<label id="reservationlabel">페이지 당</label>
					<select name="pagetotal" id="pagetotal" onchange="pagichange()">
						<option>10</option>
						<option>25</option>
						<option>50</option>
						<option>100</option>
					</select>
				<label id="reservationlabel">개 표시</label>
			</span>
	</div>
	
	<div class="row">
		<div>
			<section>
				<div id="data-container"></div>
				<div id="pagination1" style="margin-left:45%"></div>
			</section>
		</div>
	</div>

	 <script>
	 
	    
		//jb('#pagination1').pagination({
		$('#pagination1').pagination({
	        dataSource: testdata,
	        pageSize:pageNumm,
	        align:"center",
	        callback: function(data, pagination) {
	            // template method of yourself
	           
	            var datahtml = '<table id="table" class="table table-bordered table-striped">';
	            	datahtml += '<thead><tr><th class="tableheader">주문번호</th><th class="tableheader">결제일시</th><th class="tableheader">구매회원</th><th class="tableheader">휴대폰 번호</th><th class="tableheader">결제내역</th><th class="tableheader">상태</th><th class="tableheader">결제금액</th><th class="tableheader">미수금</th><th class="tableheader">환불금액</th><th class="tableheader">결제방법</th><th class="tableheader">결제담당</th></tr></thead>';
		         for (var i = 0, len = data.length; i < len; i++) {	        	
		        	 datahtml += '<tbody><tr>';
	 	            for (var j = 0;j < 11; j++) {
		            	datahtml += '<td>' +  data[i][j] + '</td>';
		            }
		             datahtml += '</tr></tbody>';    	
		         }
	            datahtml += '</table>';
	            //jb("#data-container").html(datahtml);
	            $("#data-container").html(datahtml);
	        }
	    });
	</script>  

	<!-- ================================= [[ TABLE BOTTOM ]] =================================================== -->
	<div class="row pagination">
		<div class="pagination_top">전체 <%=paysize %>개 항목 중 1 부터 <%=pagenumber %> 까지 표시</div>
	</div>
</div>
</div>