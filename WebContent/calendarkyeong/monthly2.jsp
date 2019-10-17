<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../common/JEasyUICommon.jsp"%>
 <link rel="stylesheet" type="text/css" href="../themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="../themes/icon.css">
<link rel="stylesheet" type="text/css" href="../demo/demo.css">
<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/jquery.easyui.min.js"></script> -->
<style type="text/css">
   .dragitem{
        border:1px solid #ccc;
        width:50px;
        height:50px;
        margin-bottom:10px;
    } 
    .targetarea{
        border:1px solid;
        height:150px;
    } 
  .proxy{
            border:1px solid #ccc;
            width:80px;
            background:#fafafa;
    }
   
</style>
<script>
	
	//월,주,일별 달력이동
	function ajax(url){
		alert("ajax==> "+url)
		$.ajax({
			method:'get'
		   ,url:url
		   ,success:function(data){
			   $("#new").html(data);
		   }
		});
	}
	//콤보박스 년도 받아올 변수
 	var kyear;
	//콤보박스 월 받아올 변수
	var kmonth;
	//다음버튼눌렀을 때
	function nextmonth(){
		kyear = $("#kyear").text();
		kmonth = $("#kmonth").text();
		alert(kyear+"."+kmonth);
		var kkmonth = parseInt(kmonth);
		if(kkmonth<12){
			kkmonth += 1;
		}else{
			kyear =  parseInt(kyear);
			kyear += 1;
			kkmonth = 1;
		}
		$.ajax({
			 method:'get'
			 ,url:'monthly.jsp?cyear='+kyear+'&cmonth='+kkmonth
			 ,success:function(data){
				 $("#new").html(data);
			 }
		  
	    }); 
	}
	//이전버튼눌렀을때
	function premonth(){
		kyear = $("#kyear").text();
		kmonth = $("#kmonth").text();
		alert(kyear+"."+kmonth);
		var kkmonth = parseInt(kmonth);
		if(kkmonth>1){
			kkmonth -= 1;
		}else{
			kyear =  parseInt(kyear);
			kyear -= 1;
			kkmonth = 12;
		}
		$.ajax({
			 method:'get'
			 ,url:'monthly.jsp?cyear='+kyear+'&cmonth='+kkmonth
			 ,success:function(data){
				 $("#new").html(data);
			 }
		  
	    }); 
	}
	
	$(function(){
	    $('.dragitem').draggable({
	        revert:true,
	        deltaX:10,
	        deltaY:10,
	        proxy:function(source){
	            var n = $('<div class="proxy"></div>');
	            n.html($(source).html()).appendTo('body');
	            return n;
	        }
	    });
	});

</script>
<span id="new">
<div class="row">
	<div id="sche" class="easyui-textbox" style="width: 50px;height: 30px"></div>
	<input class="easyui-datebox" id="StartDate" style="width:100px;">
	<input class="easyui-datebox" id="endDate" style="width:100px;">
	 <a href="javascript:input()" class="easyui-linkbutton">확인</a>
</div>
<div class="dragitem"><div class="row" style="width: 100%;height: 100%;background-color: pink">123</div></div>

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
		icmonth = Integer.parseInt(request.getParameter("cmonth").toString())-1;
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

               <div class="row" id="monthlyheader" align="center" style="margin-top: 20px"> 
               <span style="padding-left: 5px;margin-right: 3% ">
               <button onClick="">monthly</button>
               <button onClick="javascript:ajax('weekly.jsp')">weekly</button>
               <button onClick="">daily</button>
               <button onClick="" data-toggle="modal" data-target="#insertsche">일정등록</button>
               </span>
              <!--  <span style="margin-left:120px;margin-right:300px "> -->
               <span style="margin-left:10%;margin-right:30% ">
               <span style="margin-right:50px;">
                  <a href="javascript:premonth()" data-handler="prev" data-event="click" title="이전" >
                   	  이전
                  </a>
              </span>
                  
                  <span id="kyear"><font size="30px" color="black"><%=icyear%></font></span>
                  <span><font size="30px" color="black">.</font></span>
                  <span id="kmonth"><font size="30px" color="black"><%=icmonth+1%></font></span>
                  <span  style="margin-left:50px;">
                  <a href="javascript:nextmonth()" data-handler="next" data-event="click" title="다음">
                  	다음</a>
                  </span>
               </span> 
               </div>
<span style="padding: 5px 5px">
<table class="monthlycalendar" border="1" align="center" style="">
<tr>
<%
			for(int i=0;i<week.length;i++){
				out.print("<td width='200' height='100' align='center' style='border-bottom:2px solid'><font size='5mm'>"+week[i]+"</font></td>");
			}
			out.print("</tr>");
			for(int i=0;i<cal.get(Calendar.WEEK_OF_MONTH);i++){
			out.print("<tr>");
				for(int j=0;j<7;j++){
					if(day[month][i][j] != 0){
						int theday = day[month][i][j];
%>

						<td height='100' align='left' valign='top'><a href='#' style="color: black;font-size: 20px;">
						<div class="easyui-droppable targetarea" data-options="
																                    accept: '.dragitem',
																                    onDrop: function(e,source){
																                        $(this).html($(source).html());
																                    }">
					<%=day[month][i][j]%> 
				        </div>
						</a></td>
<%
					}else{
					out.print("<td>&nbsp&nbsp</td>");
					}
				}/////// end of inner for [주간일자]
			out.print("</tr>");
			}////////////// end of outter for [월별 일자]
%>
</table>
</span>
<%
		}///////////end of if[이번달 정보만 출력하기]
	}
%>
<!-- </div> -->
</span>
<!--==================================== [[ 일정 입력창 ]] ======================================== -->
<div id="insertsche" class="modal fade" width="500px" role="dialog">
	    <div class="modal-content">
		    <div class="modal-body">
				<div>일정이름<input class="easyui-textbox"></div> 
				<div style="margin-top:15px;">
					날짜
					<input id="startday" class="easyui-datebox"/>
					<input id="endday" class="easyui-datebox"/>
				</div>
			</div>
			 <div class="modal-footer">
	        	<button type="button"  class="btn btn-default" data-dismiss="modal" onClick="ok()">Ok</button>
	        	<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	     	 </div>
	    </div>
</div>

















