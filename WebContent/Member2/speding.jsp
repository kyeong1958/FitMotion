<%@page import="javafx.scene.input.DataFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================ [[ 매출등록   ]] ======================================== -->
<%@ include file="/common/JEasyUICommon.jsp"%>
<%-- <%@ include file="/finalView/SearchMember.jsp"%> --%>
<link rel="stylesheet" type="text/css" href="../NewCSS/main.css">
<link rel="stylesheet" type="text/css" href="../Member2/spending.css">
<style type="text/css">
body{
   padding:0%;
}
</style>
<script type="text/javascript">
	var g_val="";
	var g_Card="";
	var g_Money="";
	var g_Fund="";
   //데이트박스 
   //datebox 날짜형식 YYYY-MM-DD로 설정
    $.fn.datebox.defaults.formatter = function(date){
       var y = date.getFullYear();
       var m = date.getMonth()+1;
       var d = date.getDate();
       return y+'-'+(m<10 ? "0"+m:m)+'-'+(d<10 ? "0"+d:d);
   }
   //datebox parser설정
     $.fn.datebox.defaults.parser = function(s){
       var t = Date.parse(s);
       if (!isNaN(t)){
          return new Date(t);
       } else {
          return new Date();
       }
   }
   //datebox 한글화
     $.fn.datebox.defaults.currentText = '오늘'
   $.fn.datebox.defaults.closeText = '닫기'
   $.fn.calendar.defaults.weeks = ['일','월','화','수','목','금','토']
   $.fn.calendar.defaults.months = ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
</script>
<script type="text/javascript">
   $(document).ready(function(){
      //선택가능날짜 범위 설정
      $('#datebox1').datebox().datebox('calendar').calendar({
          validator: function(date){
              var now = new Date();
              var d1 = new Date(now.getFullYear()-1, now.getMonth(), now.getDate());
              var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
              return d1<=date && date<=d2;
          }
      });
      //datebox1 날짜 선택에 따라 datebox2의 선택가능날짜 설정
      $('#datebox1').datebox({
         onSelect: function(date){
            firstDate = date;
            $('#datebox2').datebox().datebox('calendar').calendar({
                  validator: function(date){
                      var now = new Date();
                      var d1 = new Date(firstDate.getFullYear(), firstDate.getMonth(), firstDate.getDate());
                      var d2 = new Date(now.getFullYear(), now.getMonth(), now.getDate());
                      return d1<=date && date<=d2;
                  }
              });
         }
      });
   });
   
    /* 키보드로 입력시 콤마  */
  function comma(obj){
			  // 콤마( , )의 경우도 문자로 인식되기때문에 콤마를 따로 제거한다.
		      var deleteComma = obj.value.replace(/\,/g, "");
		      // isFintite() ==> 숫자면 true // isNAN()는 문자면 ==> true
		      if(isFinite(deleteComma) == false) {
		          alert("문자는 입력하실 수 없습니다.");
		          obj.value = "";
		          return false;
		      }
		      // 기존에 들어가있던 콤마( , )를 제거한 이 후의 입력값에 다시 콤마( , )를 삽입한다.
		      obj.value = commatogeter(commaremove(obj.value));
		  }
		 
		  // 천단위 이상의 숫자에 콤마( , )를 삽입하는 함수
		  function commatogeter(str) {
		      str = String(str);
		      return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
		  }
		  // 콤마( , )가 들어간 값에 콤마를 제거하는 함수
		  function commaremove(str) {
		
		      str = String(str);
		      return str.replace(/[^\d]+/g, "");
    }  
    
		  
		  
	/* 숫자 타입 버튼틀릭시 text박스에 값 넣기 */

	

  
  function number(num){

     g_val +=num;
     g_val = String(g_val);
     var temp = g_val.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
     //alert("temp:"+temp);
     
     result.textname.value=temp;
 
        
}  
  /* 지우기 눌렀을때 전체 삭제  */
  function clean() {
	  g_val ="";
     result.textname.value = g_val;
  
        
}
    
function removeComma(str)
	{
		n = parseInt(str.replace(/,/g,""));
		return n;
	}
	
/* 카드를 눌렀을때 */
 function card(){
	 if($("#t_card").text()=='0원'){
		$("#t_card").html($("#etextname").val()+"원");
		g_Card = $("#etextname").val();
		 g_val ="";
	     result.textname.value = g_val;     
	 }else{
 		 var ctext = $("#t_card").text().substr(0, $("#t_card").text().length -1); 
		 var resultCard = Number(removeComma(ctext))+  
		 				  Number(removeComma($("#etextname").val()));
			$("#t_card").html(commatogeter(resultCard)+"원");
			 g_val ="";
		     result.textname.value = g_val;
	 } 
}	
	
  
 /* 현금 눌렀을때 */
 function money(){
	 if($("#t_money").text()=='0원'){
		$("#t_money").html($("#etextname").val()+"원");
			g_Money =  $("#etextname").val();
			g_val ="";
		    result.textname.value = g_val;     
	 } else {
 		 var ctext = $("#t_money").text().substr(0, $("#t_money").text().length -1); 
		 var resultCard = Number(removeComma(ctext))+  
		 				  Number(removeComma($("#etextname").val()));
			$("#t_money").html(commatogeter(resultCard)+"원");
			 g_val ="";
		     result.textname.value = g_val;		 		 
	 }	 	
 }

 /* 이체 눌렀을때 */
function fund(){
	 if($("#t_fund").text()=='0원'){
		$("#t_fund").html($("#etextname").val()+"원");
		 g_Fund =  $("#etextname").val();
		 g_val ="";
	     result.textname.value = g_val;     
	 } else {
 		 var ctext = $("#t_fund").text().substr(0, $("#t_fund").text().length -1); 
		 var resultCard = Number(removeComma(ctext))+  
		 				  Number(removeComma($("#etextname").val()));
			$("#t_fund").html(commatogeter(resultCard)+"원");
			 g_val ="";
		     result.textname.value = g_val;		 		 
	 }	 	
	
	
}
</script> 

   <!-- ================================= [[ 화면전환 ]] =================================================== -->
      <div class="bar_area">
         <a class="bar_menu" href="#">홈</a>
         <a class="bar_menu" href="#">회원상세</a>
      </div>
   <!-- ================================= [[ 홈 끝 ]] =================================================== -->
      <div class="section">
   <!-- ================================= [[ left ]] =================================================== -->
         <div class="row spending-box">
            <div class="row">
               <div class="col-sm-6" style="border-right:1px solid #BABBC2;padding-right:30px;">
                  <h4 class="spending-box-left">매출등록</h4>
                  <div>
                     <div style="padding:0 0 5px">
                        <label class="spend-box-left-column">회원명</label>
                        <span>
                           <input type="text" class="spending-text" style="width:260px;">
                        </span>
                        <span>
                           <button type="button" class="btn_cancle search_mem" style="margin-left:10px" data-toggle="modal" data-target="#searchMember">회원찾기</button>
                        </span>
                     </div>
                     <div style="padding:0 0 5px">
                        <label class="spend-box-left-column">최근 결제 이력</label>
                        <span>
                           <label>패키지 레슨</label>
                        </span>
                     </div>
                     <div align="right">
                        <span style="color: #2196F3 !important;margin-right:20px;">2019-09-30</span>
                        <span style="color: #2196F3 !important;">1,500,000원</span>
                     </div>
                     <h4 class="spending-box-left" style="margin-top:10px;">결제 상품 정보</h4>
                     <div style="padding:0 0 5px">
                        <label class="spend-box-left-column">상품명</label>
                        <span>
                           <select class="spend-combobox">
                              <option value="">결제 상품 선택</option>
                              <option value="">PT 1개월</option>
                              <option value="">PT 3개월</option>
                              <option value="">PT 6개월</option>
                              <option value="">스피닝</option>
                              <option value="">요가</option>
                           </select>
                        </span>
                     </div>
                     <div style="padding:0 0 5px">
                        <label class="spend-box-left-column">상품가격</label>
                        <span>
                           <input type="number" class="spending-text" style="width:260px;">원
                        </span>
                     </div>
                     
                     <div>
                        <table class="spend-table">
                           <tr class="spend-table-row">
                              <td class="spend-table-column">카드</td>
                              <td class="spend-table-content" id="t_card">0원</td>
                           </tr>
                           <tr class="spend-table-row">
                              <td class="spend-table-column">현금</td>
                              <td class="spend-table-content" id="t_money">0원</td>
                           </tr>
                           <tr class="spend-table-row">
                              <td class="spend-table-column">이체</td>
                              <td class="spend-table-content" id="t_fund">0원</td>
                           </tr>
                           <tr class="spend-table-row">
                              <td class="spend-table-column">할인</td>
                              <td class="spend-table-content">%</td>
                           </tr>
                           <tr class="spend-table-row">
                              <td class="spend-table-column">총 결제금액</td>
                              <td class="spend-table-content" style="color: #2196F3 !important;">0원</td>
                           </tr>
                           <tr class="spend-table-row">
                              <td class="spend-table-column">미수금</td>
                              <td class="spend-table-content" style="color: #FF5722 !important;">0원</td>
                           </tr>
                        </table>
                     </div>
                  </div>
               </div>
               <div class="col-sm-6" style="padding-left:30px;">
                  <div style="padding:0 0 5px">
                     <label class="spend-box-right-column">결제 담당자 선택</label>
                     <span>
                        <select class="spend-combobox">
                           <option value="">결제 담당자 선택</option>
                           <option value="">이경애</option>
                           <option value="">이경애</option>
                           <option value="">이경애</option>
                           <option value="">이경애</option>
                           <option value="">이경애</option>
                           <option value="">이경애</option>
                        </select>
                     </span>
                  </div>
                  <div style="padding:0 0 5px">
                     <label class="spend-box-right-column">이용 시작일</label>
                     <span>
                        <span class="easyui-datebox" id="datebox"></span>
                     </span>
                  </div>
                  <div style="padding:0 0 5px">
                     <label class="spend-box-right-column">결제일</label>
                     <span>
                        <span class="easyui-datebox" id="datebox"></span>
                     </span>
                  </div>
                  <div style="padding:0 0 5px"  >
                  <form id="result">
                     <label class="spend-box-right-column"></label>
                     <span>
                      <input onkeyup="comma(this)" name="textname" id="etextname" value="" type="text" class="spending-text" style="width:260px;"> 
                      <button type="button" onclick="clean()">지우기</button>
                     </span>
                  </div>
                  <div style="padding-top:3%" >
                  <%
                     int cnt = 1;
                     String count = "0";
                     for(int i=0;i<4;i++){
                  %>
                     <div>
                  <%
                        for(int j=0;j<3;j++){
                           if(cnt <10 && cnt>0){
                  %>
                         <button onclick="number(value)"  value=<%=cnt %> type="button" class="spend-button"><%=cnt %></button> 
                  <%
                              if(cnt<9 && cnt>0){
                                 cnt++;
                              }
                              else if(cnt == 9){
                                 cnt = 0;
                              }
                           }else{
                  %>
                        <button type="button" onclick="number(value)"  value=<%=count %>  class="spend-button"><%=count %></button>
                  <%   
                  		count = "0"+count;   }/// end of elsse
                           }/// end of inner for
                  %>
                     </div>
                  <%   }   %>
                  </form>
                  </div>
                  <div>
                     <h4 class="spending-box-payment-title">결제 수단 선택</h4>
                     <button class="spending-payment-method card" onclick="card()">카드</button>
                     <button class="spending-payment-method cash" onclick="money()">현금</button>
                     <button class="spending-payment-method bankTransfer" onclick="fund()">이체</button>
                     <button class="spending-payment-method bankTransfer">할인(%)</button>
                     <button class="spending-payment-method bankTransfer">할인(원)</button>
                  </div>                  
               </div>
            </div>
         <div class="row spending-payment-bottom">
            <button type="button" class="btn_cancle add">결제하기</button>
            <button type="button" class="btn_cancle cancle">취소</button>
         </div>
         </div>
      </div>

   <!-- ================================= [[ 화면전환 ]] =================================================== -->