<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!-- ================== [[ 메인화면 ]] ================== -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
.list {
   margin-top: 33px;
    margin-bottom: 30px;
}
</style>

<title>FitMotion</title>
<%@ include file="../CSS/JEasyUICommon.jsp"%>
<%@ include file="../CSS/maincss.jsp"%>
</head>
<!--============================ [[ script ]] ==============================================  -->
<script type="text/javascript">
	//콤보박스 년도 받아올 변수
 	var kyear;
	//콤보박스 월 받아올 변수
	var kmonth;
	//다음버튼눌렀을 때
	function nextmonth(){
		kyear = $("#kyear").val();
		kmonth = $("#kmonth").val();
		var kkmonth = parseInt(kmonth);
		if(kkmonth<11){
			kkmonth += 1;
		}else{
			kyear =  parseInt(kyear);
			kyear += 1;
			kkmonth = 0;
		}
		$.ajax({
			 method:'get'
			 ,url:'calendar.jsp?cyear='+kyear+'&cmonth='+kkmonth
			 ,success:function(data){
				 $("#new").html(data);
			 }
		  
	    }); 
	}
	//이전버튼눌렀을때
	function premonth(){
		kyear = $("#kyear").val();
		kmonth = $("#kmonth").val();
		var kkmonth = parseInt(kmonth);
		if(kkmonth>0){
			kkmonth -= 1;
		}else{
			kyear =  parseInt(kyear);
			kyear -= 1;
			kkmonth = 11;
		}
		$.ajax({
			 method:'get'
			 ,url:'calendar.jsp?cyear='+kyear+'&cmonth='+kkmonth
			 ,success:function(data){
				 $("#new").html(data);
			 }
		  
	    }); 
	}
	//콤보박스로 년도 변경할 시 이동
	  $("#kyear").change(function(){
		 kyear = $(this).val();
		 kmonth = $("#kmonth").val();
		 $.ajax({
			 method:'get'
			 ,url:'calendar.jsp?cyear='+kyear+'&cmonth='+kmonth
			 ,success:function(data){
				 $("#new").html(data);
			 }
		  
		 }); 
		 
	 }) 
	//콤보박스로 월 변경할 시 이동
	  $("#kmonth").change(function(){
		 kyear = $("#kyear").val();
		 kmonth = $(this).val();
		 $.ajax({
			 method:'get'
			 ,url:'calendar.jsp?cyear='+kyear+'&cmonth='+kmonth
			 ,success:function(data){
				 $("#new").html(data);
			 }
		  
		 }); 
	 })
</script>

<!--============================ [[ script ]] ==============================================  -->
<body>
<!--////////////////////////////////////nav//////////////////////////////////  -->
   <div class="row-i">
<%--    <%@ include file="./nav.jsp" %> --%>
   </div>
<!--////////////////////////////////////nav//////////////////////////////////  -->
   
   
<!-- ////////////////////////////메뉴바/////////////////////////////////  -->
   <div class="container-fluid">
      <div class="col-sm-2" >&nbsp;</div>
      <div class="col-sm-8" >
         <div class="col-sm-2">
            <div class="row" id="label"></div>
                <div class="container" >
               <ul class="list" id="mainlist" >
                  <a id="menu">매출관리</a>
                  <li><a href="#" onclick="">전체 매출 </a></li>
                  <li><a href="#" onclick="">직원별 매출 </a></li>
                  <li><a href="#" onclick="">종목별 매출 </a></li>
                  <li><a href="#" onclick="">고객별 매출 </a></li>
               </ul>
               <ul  class="list" id="mainlist"  >
                  <a id="menu">헬스장관리</a>
                  <li><a href="javascript:ajax('SProgram.jsp')">프로그램 </a></li>
                  <li><a href="#" onclick="">프로모션 </a></li>
                  <li><a href="javascript:ajax('Equipment.jsp')">기구관리 </a></li>
                  <li><a href="javascript:ajax('Goods.jsp')">비품관리 </a></li>
               </ul>
               <ul  class="list" id="mainlist"  >
                  <a id="menu">직원관리</a>
                  <li><a href="javascript:ajax('Staff.jsp')">직원등록/목록</a></li>
                  <li><a href="javascript:ajax('monthly.jsp')">근무일지</a></li>
                  <li><a href="javascript:ajax('StaffSalary.jsp')">직원급여 </a></li>
               </ul>
               <ul  class="list" id="mainlist"  >
                  <a id="menu">회원관리</a>
                  <li><a href="javascript:ajax('Member.jsp')">회원등록/목록 </a></li>
                  <li><a href="javascript:ajax('MemberBuy.jsp')">구매등록</a></li>
               </ul>
            </div>
         </div>
<!-- ////////////////////////////메뉴바/////////////////////////////////  -->
         
<!--//////////////////////////화면 전환////////////////////////////////////  -->
         <div class="col-sm-10" style="border: 1px solid;">
         <div id="changedisplay">
<!--////////////////////////// [[ 주간달력 ]] ////////////////////////////////////  -->
<span id="new">
<%
	Calendar cal = Calendar.getInstance();
	int day[][][] = new int[12][6][7];

	DecimalFormat df = new DecimalFormat("00");
	String week[] = {"일","월","화","수","목","금","토"};
	//이번 달 정보 가져오기
	Calendar currCal = Calendar.getInstance();
	String cyear = df.format(currCal.get(Calendar.YEAR));
	int fyear = Integer.parseInt(cyear);
	int icyear = Integer.parseInt(cyear);
	if(request.getParameter("cyear") != null){
		icyear = Integer.parseInt(request.getParameter("cyear").toString());
	}
	String cmonth = df.format(currCal.get(Calendar.MONTH));
	int icmonth = Integer.parseInt(cmonth);
	if(request.getParameter("cmonth") != null){
		icmonth = Integer.parseInt(request.getParameter("cmonth").toString());
	}
	for(int year=fyear-10;year<fyear+10;year++){
	if(year==icyear){
		for(int month=0;month<12;month++){
			cal.set(Calendar.YEAR,year);
				if(month == icmonth){
					//이번달 마지막 날짜 저장하기
					cal.set(Calendar.MONTH, month);
					int maxDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
					for(int i=1;i<=maxDay;i++){
						cal.set(Calendar.DATE,i);
						day[cal.get(Calendar.MONTH)][cal.get(Calendar.WEEK_OF_MONTH)-1][cal.get(Calendar.DAY_OF_WEEK)-1]=i;
					}
				}
			}
		}
	}
	for(int month=0;month<12;month++){
		if(month==icmonth){
%>
<div id="calendarmodal">
               <div id="calendarheader" align="center">
                  <a href="javascript:premonth()">
                     <span style="margin-right:20px" >이전</span></a> 
                  <span align="center">
                     <select id="kyear">
<%
	for(int i=fyear-10;i<fyear+10;i++){
		if(i != icyear){
%>
                        <option value="<%= i%>"><%= i%></option>
<%
		}else if(i == icyear){
%>

						<option value="<%= i%>" selected="selected"><%= i%></option>
<%			
		}
	}
%>
                     </select>
                      <select id="kmonth">
<%
	for(int i=0;i<12;i++){
		if(i != icmonth){
		
%>
                        <option value="<%= i%>"><%= i+1%></option>
<%
		}else if(i == icmonth){
%>			
                        <option value="<%= i%>" selected="selected"><%= i+1%></option>
<%			
		}
	}
%> 
						</select>
                  </span>
                  
                  <a href="javascript:nextmonth()">
                     <span style="margin-left:20px">다음</span></a>
               </div>
<table border="1" align="center"><tr>
<%
			for(int i=0;i<week.length;i++){
				out.print("<td width='40' align='center'>"+week[i]+"</td>");
			}
			out.print("</tr>");
			for(int i=0;i<cal.get(Calendar.WEEK_OF_MONTH);i++){
			out.print("<tr>");
				for(int j=0;j<7;j++){
					if(day[month][i][j] != 0){
					out.print("<td align='center'><a href='#'>"+day[month][i][j]+"</a></td>");
					}else{
					out.print("<td>&nbsp&nbsp</td>");
					}
				}/////// end of inner for [주간일자]
			out.print("</tr>");
			}////////////// end of outter for [월별 일자]
%>
</table>
<%
		}///////////end of if[이번달 정보만 출력하기]
	}
%>
</div>
</span>

<!--////////////////////////// [[ 주간달력 ]] ////////////////////////////////////  -->

         </div>
      </div>
<!--//////////////////////////화면 전환////////////////////////////////////  -->
      <div class="col-sm-2">&nbsp;</div>
   </div>
</body>
</html>