<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="javafx.scene.input.DataFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- ============================ [[ 매출등록   ]] ======================================== -->
<link rel="stylesheet" type="text/css" href="../NewCSS/profit.css">
<link rel="stylesheet" type="text/css" href="../NewCSS/MemberSearch.css">
<%--  <%@ include file="/common/JEasyUICommon.jsp"%> --%>
<style type="text/css">
body{
   padding:0;
}
</style>
<script type="text/javascript">
<<<<<<< HEAD
   $(document).ready(function(){
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
      
      
   });
   
=======
	//데이트박스 
	//datebox 날짜형식 YYYY-MM-DD로 설정
	 $.fn.datebox.defaults.formatter = function(date){
	    var y = date.getFullYear();
	    var m = date.getMonth()+1;
	    var d = date.getDate();
	    return y+'/'+(m<10 ? "0"+m:m)+'/'+(d<10 ? "0"+d:d);
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


	$(document).ready(function(){
	
	   $.ajax({
           method:"POST"
             ,url:"/account/PROSEL.fm"
             ,success:function(data){
                //alert("성공");
                $("#selectpro").html(data);
                    $.ajax({
                         method:"POST"
                           ,url:"/account/PROSEL2.fm"
                           ,success:function(data){
                              //alert("성공");
                              $("#selectpro2").html(data);
                        }
                      }); 
                   }
                 }); 
	});
	
>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion

</script>
<script type="text/javascript">

<<<<<<< HEAD
   var protext = "";
   var g_val="";
   var g_Card="";
   var g_Money="";
   var g_Fund="";
   var g_dis ="";
   var g_dismoney ="";
   var alltotal ="";

=======
	var protext = "";
	var g_val="";
	var g_Card="";
	var g_Money="";
	var g_Fund="";
	var g_dis ="";
	var g_dismoney ="";
	var alltotal ="";
	//콤마넣는함수																									
	function Comma(str) {
		str = String(str);
		return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
	}
>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion
/* 키보드로 입력시 콤마  */
  function comma(obj){
<<<<<<< HEAD
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
            return str.replace(/[^\d]+/g, "");5
=======
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
		      return str.replace(/[^\d]+/g, "");5
>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion
    }  
    
<<<<<<< HEAD
        
        
   /* 숫자 타입 버튼틀릭시 text박스에 값 넣기 */


  
=======
		  
		  
	/* 숫자 타입 버튼틀릭시 text박스에 값 넣기 */
>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion
  function number(num){
     g_val +=num;
     g_val = String(g_val);
     var temp = g_val.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
     //alert("temp:"+temp);
     document.getElementById("etextname").value=temp;
}  
  /* 지우기 눌렀을때 전체 삭제  */
  function clean() {
     g_val ="";
     document.getElementById("etextname").value = g_val;
  
        
}
    
<<<<<<< HEAD
function removeComma(str)
   {
      n = parseInt(str.replace(/,/g,""));
      return n;
   }
   
   function card(){
         g_card = $("#etextname").val(); 
   
         //alert(g_card);
      if($("#t_card").text()==""){
          document.getElementById("t_card").value = g_card;
          if($("#total_buy").text()==""){
          document.getElementById("total_buy").value = g_card;
          }
          g_val="";
      }
      
      if(g_money!=null){
         
       document.getElementById("total_buy").value = 
           Number(removeComma(document.getElementById("total_buy").value)) + Number(removeComma(g_money)); 
      }
    
   }   

  
 /* 현금 눌렀을때 */
 function money(){ 
    g_money = $("#etextname").val(); 
      
      //alert(g_card);
   if($("#t_money").text()==""){
      document.getElementById("t_money").value = g_money;
      if($("#total_buy").text()==""){
      document.getElementById("total_buy").value = g_money;
      }
      g_val="";
   }
   
   if(g_card!=null){
      
       document.getElementById("total_buy").value = 
           Number(removeComma(document.getElementById("total_buy").value)) + Number(removeComma(g_card)); 
      }
 }

    /* 이체 눌렀을때 */
   function fund(){
       g_Fund = $("#etextname").val(); 
      
   if($("#t_fund").text()==""){
      document.getElementById("t_fund").value = g_Fund;
      if($("#nomoney").text()==""){
      document.getElementById("nomoney").value = g_Fund;
   
      }
      g_val="";
   }
    document.getElementById("total_buy").value = 
       Number(removeComma(document.getElementById("total_buy").value)) - Number(removeComma(g_Fund)); 
   }

    /* 할인% */
   function discount(){
      g_dis = $("#etextname").val();
      
      if($("#t_dis").text()==""){
         document.getElementById("t_dis").value = g_dis;
         g_val="";
      }
       document.getElementById("total_buy").value = 
          Number(removeComma(document.getElementById("total_buy").value)) / Number(removeComma(g_dis)); 
       }
    
    function discountmoney(){
       g_dismoney = $("#etextname").val();
       document.getElementById("total_buy").value = 
          Number(removeComma(document.getElementById("total_buy").value)) - Number(removeComma(g_dismoney)); 
    }

 function pfIns_buy(){
      var formData = $("#ftable").serialize();
   //   alert(formData);
       $.ajax({
         method:"POST"
         ,data:formData
         ,url:"/account/pfINS.fm"
         ,success:function(data){
            //$("#eqbox").html(data);
         }
      }); 
 }
 function imsi_change(imsi){
    $("#imsi_ghost").val(imsi);
 }
=======
	function removeComma(str)
		{
			n = parseInt(str.replace(/,/g,""));
			return n;
		}
	
	function card(){
		g_card = $("#etextname").val(); 
		if($("#t_card").val()){
			var card = $("#t_card").val();
			var cardcom = removeComma(card);
			var gcardcom = removeComma(g_card);
			var cardprice = Number(cardcom)+Number(gcardcom);
			$("#t_card").val(Comma(cardprice));
		}else{
			$("#t_card").val(g_card);
		}
		
		if($("#total_buy").val()){
			var btbuy = $("#total_buy").val();
			var btotbuy = removeComma(btbuy);
			var gcardcom = removeComma(g_card);
			var cardprice = Number(btotbuy)+Number(gcardcom);
			$("#total_buytot").val(Comma(cardprice));
			$("#total_buy").val(cardprice);
		}else{
			$("#total_buytot").val(g_card);
			$("#total_buy").val(removeComma(g_card));
		}
		
		if($("#imsi_ghost").val()){
			var productprice = removeComma($("#imsi_ghost").val());
			var tot = removeComma($("#total_buy").val());
			var discount = (1-(tot/productprice))*100;
			$("#t_dis").val(Comma(discount.toFixed(2)));
		}
	 
	}	
	 /* 현금 눌렀을때 */
	 function money(){ 
		 g_money = $("#etextname").val(); 
		 if($("#t_money").val()){
			var card = $("#t_money").val();
			var cardcom = removeComma(card);
			var gcardcom = removeComma(g_money);
			var cardprice = Number(cardcom)+Number(gcardcom);
			$("#t_money").val(Comma(cardprice));
		}else{
			$("#t_money").val(g_money);
		}
		 
		 if($("#total_buy").val()){
			var btbuy = $("#total_buy").val();
			var btotbuy = removeComma(btbuy);
			var gcardcom = removeComma(g_money);
			var cardprice = Number(btotbuy)+Number(gcardcom);
			$("#total_buytot").val(Comma(cardprice));
			$("#total_buy").val(cardprice);
		}else{
			$("#total_buytot").val(g_money);
			$("#total_buy").val(removeComma(g_money));
		}
		 
		if($("#imsi_ghost").val()){
			var productprice = removeComma($("#imsi_ghost").val());
			var tot = removeComma($("#total_buy").val());
			var discount = (1-(tot/productprice))*100;
			$("#t_dis").val(Comma(discount.toFixed(2)));
		} 
	}
	 /* 이체 눌렀을때 */
	function fund(){
	 	g_Fund = $("#etextname").val(); 
		
	 	 if($("#t_fund").val()){
			var card = $("#t_fund").val();
			var cardcom = removeComma(card);
			var gcardcom = removeComma(g_Fund);
			var cardprice = Number(cardcom)+Number(gcardcom);
			$("#t_fund").val(Comma(cardprice));
		}else{
			$("#t_fund").val(g_Fund);
		}
	 	
	 	 if($("#total_buy").val()){
			var btbuy = $("#total_buy").val();
			var btotbuy = removeComma(btbuy);
			var gcardcom = removeComma(t_fund);
			var cardprice = Number(btotbuy)+Number(gcardcom);
			$("#total_buytot").val(Comma(cardprice));
			$("#total_buy").val(cardprice);
		}else{
			$("#total_buytot").val(t_fund);
			$("#total_buy").val(removeComma(t_fund));
		}
	 	if($("#imsi_ghost").val()){
			var productprice = removeComma($("#imsi_ghost").val());
			var tot = removeComma($("#total_buy").val());
			var discount = (1-(tot/productprice))*100;
			$("#t_dis").val(Comma(discount.toFixed(2)));
		} 
	}
 	/* 할인% */
	function discount(){
		g_dis = $("#etextname").val();
		if($("#t_dis").text()==""){
			document.getElementById("t_dis").value = g_dis;
			g_val="";
		}
		 document.getElementById("total_buy").value = 
		 	Number(removeComma(document.getElementById("total_buy").value)) / Number(removeComma(g_dis)); 
	 	}
 	
 	function discountmoney(){
 		g_dismoney = $("#etextname").val();
 		document.getElementById("total_buy").value = 
		 	Number(removeComma(document.getElementById("total_buy").value)) - Number(removeComma(g_dismoney)); 
 	}
 	function nomoney(){ }
 	//콤마넣는함수																									
	function changecomma(str) {
		str = String(str);
		return str.replace(/(\d)(?=(?:\d{3})+(?!\d))/g, "$1,");
	}
	 function proname_change(imsi){
		// alert("상품명 변경");
		 data = imsi.split(",")  
		 $("#imsi_ghost").val(changecomma(data[0]));
		 if(data[2]=="promotion"){
	     	$("#prom_num").val(data[1]);
		 }
		 else if(data[2]=="ticket"){
	     	$("#ticket_num").val(data[1]);
		 }
	 }
	 function pfIns_buy(){
			var formData = $(".f_insert").serialize();
			if($("#t_card").val()!=0){
			formData+="&ticp_pay_period=카드"
			}
			 else if($("#t_money").val()!=0){
			formData+="&ticp_pay_period=현금"
			}
			 else if($("t_fund").val()!=0){
			formData+="&ticp_pay_period=이체"
			 }
			console.log(formData);
			//alert(formData);
			 $.ajax({
				method:"POST"
				,data:formData
				,url:"/program/profitIns.fm"
				,success:function(data){
					document.getElementById("total_buy").value = "";
					document.getElementById("t_card").value = "";
					document.getElementById("t_money").value = "";
					document.getElementById("t_dis").value = "";
					document.getElementById("t_fund").value = "";
					document.getElementById("datebox").value = "";
					document.getElementById("imsi_ghost").value = "";
					 $.ajax({
				    		  method:"POST"
				  				,data:formData
				  				,url:"/account/PROSEL.fm"
				  				,success:function(data){
				  					//alert("성공");
				  					$("#selectpro").html(data);
		  			  				 $.ajax({
		  		  			    		  method:"POST"
		  		  			  				,data:formData
		  		  			  				,url:"/account/PROSEL2.fm"
		  		  			  				,success:function(data){
		  		  			  					alert("결제가 완료되었습니다.");
		  		  			  					$("#selectpro2").html(data);
		  		  			}
		  		  		}); 
				  	}
				}); 
			}
		}); 
	}

>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion
</script> 

   <!-- ================================= [[ 화면전환 ]] =================================================== -->
      <div class="bar_area">
         <a class="bar_menu" href="#">홈</a>
         <img src="../images/location_arrow.png">
         <a class="bar_menu" href="#">회원상세</a>
      </div>
   <!-- ================================= [[ 홈 끝 ]] =================================================== -->
      <div class="section">
   <!-- ================================= [[ left ]] =================================================== -->
        <form id=f_insert onSubmit="return false" name="f_insert" class="f_insert" >
         <div class="row spending-box">
<<<<<<< HEAD
           
=======
         <input type="hidden" id="ticket_num" name="ticket_num">
         <input type="hidden" id="prom_num" name="prom_num">
>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion
            <div class="row">
               <div class="col-sm-6" style="border-right:1px solid #BABBC2;padding-right:30px;">
                  <h4 class="spending-box-left">매출등록</h4>
                  <div>
                     <div style="padding:0 0 5px">
                        <label class="spend-box-left-column">회원명</label>
                        <span>
                           <input type="text" id="sm_memname"  class="spending-text" style="width:260px;">
                           <input type="hidden" id="sm_mem_num" name="mem_num" class="spending-text" style="width:260px;">
                        </span>
                        <span>
                           <button type="button" class="btn_cancle search_mem" style="margin-left:10px" data-toggle="modal" data-target="#search_member">회원찾기</button>
                        </span>
                        <span>
                           <button type="button" class="btn_cancle search_mem" style="margin-left:10px" data-toggle="modal" data-target="#MIns">회원등록</button>
                        </span>
                     </div>
                     <div style="padding:0 0 5px">
                        <label class="spend-box-left-column">최근 결제 이력</label>
                        <span>
                           <label id="productname"></label>
                        </span>
                     </div>
                     <div align="right">
                        <span style="color: #2196F3 !important;margin-right:20px;" id="productdate"></span>
                        <span style="color: #2196F3 !important;" id="productprice"></span>
                     </div>
                     <h4 class="spending-box-left" style="margin-top:10px;">결제 상품 정보</h4>
                     <div style="padding:0 0 5px">
                        <label class="spend-box-left-column">상품명</label>
                        <span>
<<<<<<< HEAD
                           <select class="spend-combobox" name="ticket_num"  id="selectpro" onchange="imsi_change(this.value)">
                            <!-- PROMOTION AJAX -->
=======
                           <select class="spend-combobox" id="selectpro" onchange="proname_change(this.value)">
                      		<!-- PROMOTION AJAX -->
>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion
                           </select>
                        </span>
                     </div>
                     <div style="padding:0 0 5px">
                        <label class="spend-box-left-column">상품가격</label>
                        <span>
                           <input type="text" id="imsi_ghost" class="spending-text" style="width:260px;" >
                        </span>
                     </div>
                     
                     <div>
                        <table class="spend-table">
                           <tr class="spend-table-row">
                              <td class="spend-table-column" >카드</td>
                              <td class="spend-table-content">
                              <input type="text" id="t_card" style="text-align: right;border: none;">
<<<<<<< HEAD
                                 원</td>
=======
                              	원</td>
>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion
                           </tr>
                           <tr class="spend-table-row">
                              <td class="spend-table-column">현금</td>
                              <td class="spend-table-content" >
                              <input type="text" id="t_money" style="border: none;text-align: right;">원</td>
                           </tr>
                           <tr class="spend-table-row">
                              <td class="spend-table-column" >이체</td>
                              <td class="spend-table-content">
                              <input type="text"  id="t_fund" style="border: none;text-align: right;">원</td>
                           </tr>
                           <tr class="spend-table-row">
                              <td class="spend-table-column">할인</td>
                              <td class="spend-table-content">
                              <input type="text"  id="t_dis" style="border: none;text-align: right;" >%</td>
                           </tr>
                           <tr class="spend-table-row">
                              <td class="spend-table-column">총 결제금액</td>
                              <td class="spend-table-content" style="color: #2196F3 !important;"> 
<<<<<<< HEAD
                                 <div>
                                       <span name="prom_dis_price" >
                                          <input type="text" id="total_buy" style="border: none;text-align: right;">원</span>
                                    </div> 
=======
	                              <div>
	                              		<span >
	                              			<input type="text" name="proticp_paymenttot" id="total_buytot" style="border: none;text-align: right;">원</span>
	                              			<input type="hidden" name="proticp_payment" id="total_buy"/>
	                              	</div> 
>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion
                              </td>
                           </tr>
                           <tr class="spend-table-row">
                              <td class="spend-table-column">미수금</td>
                              <td class="spend-table-content" style="color: #FF5722 !important;">
<<<<<<< HEAD
                                    <input type="text" id="nomoney" style="border: none;text-align: right;">원</td>
=======
                              		<input type="text" id="nomoney" style="border: none;text-align: right;">원</td>
>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion
                           </tr>
                        </table>
                     </div>
                  </div>
               </div>
               <div class="col-sm-6" style="padding-left:30px;">
                  <div style="padding:0 0 5px">
                     <label class="spend-box-right-column">결제 담당자 선택</label>
                     <span>
                        <select class="spend-combobox" id="selectpro2">
                          <!--콤보박스 AJAX  -->
                        </select>
                     </span>
                  </div>
                  <div style="padding:0 0 5px">
                     <label class="spend-box-right-column">이용 시작일</label>
                
                     <input  id="datebox" name="ticp_reg_date" class="easyui-datebox" >
                  </div>
                  <div style="padding:0 0 5px">
                     <label class="spend-box-right-column">결제일</label>
                     <input  id="datebox"  name="gs_dep_date" class="easyui-datebox">
                  </div>
                  <div style="padding:0 0 5px" >
                     <label class="spend-box-right-column"></label>
                     <span>
                      <input onkeyup="comma(this)"  id="etextname"  value="" type="text" class="spending-text" style="width:260px;"> 
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
                        count = "0"+count;  
                           }/// end of elsse
                       }/// end of inner for
                  %>
                     </div>
                  <%   }   %>
                 </div>
                  <div>
                     <h4 class="spending-box-payment-title">결제 수단 선택</h4>
<<<<<<< HEAD
                     <button class="spending-payment-method card"  name="ticp_pay_period" value="card" onclick="card()">카드</button>
                     <button class="spending-payment-method cash" name="ticp_pay_period" value="cash" onclick="money()">현금</button>
                     <button class="spending-payment-method bankTransfer"  name="ticp_pay_period" value="trans" onclick="fund()">이체</button>
                     <button class="spending-payment-method bankTransfer" onclick="discount()">할인(%)</button>
                     <button class="spending-payment-method bankTransfer" onclick="discountmoney()">할인(원)</button>
                     <button class="spending-payment-method bankTransfer">미수금</button>
=======
                     <button class="spending-payment-method card" onclick="card()">카드</button>
                     <button class="spending-payment-method cash" onclick="money()">현금</button>
                     <button class="spending-payment-method bankTransfer" onclick="fund()">이체</button>
                     <button class="spending-payment-method bankTransfer" onclick="discount()">할인(%)</button>
                     <button class="spending-payment-method bankTransfer" onclick="discountmoney()">할인(원)</button>
                     <button class="spending-payment-method bankTransfer" onclick="nomoney()">미수금</button>
>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion
                  </div>                  
               </div>
            </div>
         <div class="row spending-payment-bottom">
            <button type="button" class="btn_cancle add" onclick="pfIns_buy()">결제하기</button>
            <button type="button" class="btn_cancle cancle">취소</button>
         </div>
         </div>
        </form>
      </div>
<<<<<<< HEAD
               
   <!-- ================================= [[ 화면전환 ]] =================================================== -->
   
   <!--===============================[[회원찾기 모달 창 ]]=======================================================  -->
                                       
                                       
   
   
   <script>
         function memberSearch(){
         //   alert("검색버튼 눌림?");
            var formData = $("#MemSearch").serialize();
         //   alert(formData);
             $.ajax({
               method:"POST"
               ,data:formData
               ,url:"/member/BHMSEL.fm"
               ,success:function(data){
                  $("#memsearch").html(data);
                  
                  
               }
            }); 
            
            
         
         }
   
   </script>
<!--================================ [[ 회원검색 모달 시작 ]] ====================================== -->                                    
                                    
   <!--   The Modal -->                                    
   <div class="modal fade" id="search_member">                                    
      <div class="modal-dialog modal-sm-6">                                    
         <div class="modal-content">                                    
                                             
         <!-- Modal Header -->                                    
         <div class="modal-header">                                    
            <span class="modal-title">회원 검색</span>                                    
            <button type="button" class="close" data-dismiss="modal">&times;</button>                                    
         </div>                                    
                                             
         <!-- Modal body -->      
   
         <div class="modal-body" style="padding-left: 5%;height: 240px;">                                    
                  <div style="padding:0 0 5px">                           
                     <label class="spend-box-right-column" style="text-align:center">회원명</label>                        
                     <span>                        
                        <input type="text" class="spending-text" id="d_memname" style="width:260px;">                     
                     </span>                        
                     <span>                        
                        <button type="button" id="memberSearch" onClick="memberSearch()" class="btn-schedule-memsearch" style="margin-left:10px;">검색</button>                     
                     </span>                        
                  </div>                           
                  <div class="search-mem-modal" id="memberSearchModalTable">   
                     <form id="MemSearch">
                     <div id="memsearch">
                  <!--    <table id="tb_membersearch" class="table table-bordered  table-striped">
                       <thead class="thead-dark">
                           <tr>                  
                              <th class="tableheader">회원명</th>               
                              <th class="tableheader">생년월일</th>               
                              <th class="tableheader">핸드폰번호</th>               
                           </tr>   
                       </thead>   
                       <tbody id="imsi_change">
                           
                       </tbody>
                     </table>       -->                  
                     </div>
                     </form>                        
                  </div>                           
         <!-- BODY -->                                    
            </div>      
      
                                          
         <!-- Modal footer -->                                    
            <div class="modal-footer">                                    
               <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>                                    
            </div>                                    
         </div>                                    
      </div>                                    
   </div>                                    
<!--  ================================ [[ 회원검색 모달 끝 ]] ====================================== -->                                    
                                    
                                    
                                    
   
=======
	<!-- ================================= [[ 화면전환 ]] =================================================== -->
	<!--===============================[[회원찾기 모달 창 ]]=======================================================  -->
	<script>
			function memberSearch(){
			//	alert("검색버튼 눌림?");
			//	var formData = $("#MemSearch").serialize();
			//	alert(formData);
			var mem_name = $("#d_memname").val();
				 $.ajax({
					method:"POST"
					//,data:formData
					,url:"/member/BHMSEL.fm?mem_name="+mem_name
					,success:function(data){
						$("#memsearch").html(data);
					}
				}); 
			}
	</script>
<!--================================ [[ 회원검색 모달 시작 ]] ====================================== -->												
	<!--   The Modal -->												
	<div class="modal fade" id="search_member">												
		<div class="modal-dialog modal-sm-6">												
			<div class="modal-content">												
															
			<!-- Modal Header -->												
			<div class="modal-header">												
				<span class="modal-title">회원 검색</span>												
				<button type="button" class="close" data-dismiss="modal">&times;</button>												
			</div>												
															
			<!-- Modal body -->		
	
			<div class="modal-body" style="padding-left: 5%;height: 240px;">												
						<div style="padding:0 0 5px">									
							<label class="spend-box-right-column" style="text-align:center">회원명</label>								
							<span>								
								<input type="text" class="spending-text" id="d_memname" style="width:260px;">							
							</span>								
							<span>								
								<button type="button" id="memberSearch" onClick="memberSearch()" class="btn-schedule-memsearch" style="margin-left:10px;">검색</button>							
							</span>								
						</div>									
						<div class="search-mem-modal" id="memberSearchModalTable">	
							<form id="MemSearch">
							<div id="memsearch">
							</div>
							</form>								
						</div>									
			<!-- BODY -->												
				</div>		
		
														
			<!-- Modal footer -->												
				<div class="modal-footer">												
					<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>												
				</div>												
			</div>												
		</div>												
	</div>												
<!--  ================================ [[ 회원검색 모달 끝 ]] ====================================== -->												
<%@ include file="../member/memberListModal.jsp"%>					
	
>>>>>>> branch 'kyeong' of https://github.com/kyeong1958/FitMotion
