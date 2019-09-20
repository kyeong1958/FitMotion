<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<link rel="stylesheet" type="text/css" href="../kcss/insert.css">
<!-- ================== [[ 메인화면 ]] ================== -->


<!--============================ [[ script ]] ==============================================  -->
<!--============================ [[ script ]] ==============================================  -->
<script type="text/javascript">

	function mode_Select(){
		
		    //alert("selectText:" + selectText);
		 var modeSelect = document.getElementById("se_operating_mode");
	     
		    // select element에서 선택된 option의 value가 저장된다.
		    /* var value = modeSelect.options[document.getElementById("se_operation_mode").selectedIndex].value; */
		 
		     // select element에서 선택된 option의 text가 저장된다.
		    var text = modeSelect.options[document.getElementById("se_operating_mode").selectedIndex].text;
		   alert("text:" + text);
	 
	
	}
	
	//======================================================================================================================///
		function eqIns_click(){
			var formData = $("#eqIns").serialize();
				alert("등록버튼 눌림?");
				 $.ajax({
					method:"POST"
					,data:formData
					,url:"/both/eqINS.fm"
					,success:function(data){
						$("#eqbox").html(data);
					}
				}); 
			}		
		
				
</script>

<!--============================ [[ script ]] ==============================================  -->
		<div class="page-top-menu-wrap">
					<div class="left">
						<div class="page-title">기구관리</div>
						<!-- 검색창 -->
						<div class="right" style="float: right">
							<div class="ui search form">
								<input id="searchTxt" name="searchTxt" placeholder="검색어를 입력하세요" style="width: 300px"/>
								<a class="action" href="#">
									<i class="fa fa-search" aria-hidden="true"></i>
								</a>
								<div id="search-result" class="search-result hidden"></div>
								<input type="hidden" id="custno" name="custno" value="0"/>
							</div>
						</div>
				</div>
			</div>
<!-- //////////////////////////////////////////////////////////////////////////////// -->
			<div class="row" id="management">
		<form id="eqIns" method="post">
			<input type="hidden"  value="10" id="se_code" name="se_code">
			<input type="hidden"  value="12" id="gym_code" name="gym_code" >
					<div class="col-sm-2 col-lg-2">
						<div class="title_insert">
							<span>
								<font size="5px">
									<b>+</b>
								</font>
							</span>
							<span>기구<br>
							<span>&nbsp;&nbsp;&nbsp;등록관리</span>
							</span>
						</div>
					</div>
					<div class="col-sm-8 col-lg-8">
					<div class="col-sm-6 col-lg-6">
						 <div class="row">
								<span>●&nbsp;기구명
									<input class="textbox" type="text" id="se_name" name="se_name" style="width:60%;margin-left:10%">
								</span>
						 </div>
						 <div class="row" style="margin-top:20%">
								<span>●&nbsp;작동여부&nbsp;&nbsp;&nbsp;
									<span class="operation">
										<select class="valid" aria-invalid="false" id="se_operating_mode" name="se_operating_mode" onchange="mode_Select()">
											<option value="operate" selected>작동</option>
											<option value="broken">고장</option>
										</select>
									</span>
								</span>
							</div>
					<div class="row" style="margin-top:20%">
							<span>●&nbsp;수리횟수&nbsp;&nbsp;&nbsp;
								<input class="textbox" type="text" id="se_repair_count" name="se_repair_count" style="width:15%">
							</span>
					</div>
					</div>
					<div class="col-sm-6 col-lg-6">
						<div class="row">
							<span>●&nbsp;&nbsp;&nbsp;가격
								<input class="textbox" type="text" id="se_buy_price" name="se_buy_price" style="width:70%;margin-left:7%">
							</span>
						</div>
						<div class="row" style="margin-top:20%">
							<span>●&nbsp;고장내역&nbsp;
								<input class="textbox" type="text" id="se_repair_detail" name="se_repair_detail" style="width:70%">
							</span>
						</div>
						<div class="row" style="margin-top:20%">
							<span>●&nbsp;구매일
								<input class="textbox" type="text" id="se_buy_date" name="se_buy_date" style="width:65%;margin-left:10%">
							</span>
						</div>
					</div>
				</div>
		</form>
					<div class="col-sm-2 col-lg-2">
						<div class="btn_registration">
						 	<button onclick="eqIns_click()" type="button" class="registration">등록
							</button>
						</div>
					</div>
			</div>
<!-- /////////////////////////////// [[등록박스 끝]] ////////////////////////////////////////////////////// -->
			<div class="row checknbtn" style="margin-bottom:20px">
				<div class="col-sm-3 col-lg-3 allcheck">
					<input type="checkbox"/><span>&nbsp;전체선택</span>
				</div>
				<div class="col-sm-6 col-lg-6">&nbsp;</div>
				<div class="col-sm-3 col-lg-3">
					<div  class="btn3" style="text-align: -webkit-right">
						<button>정렬</button>
						<button>번호</button>
						<button>등록일</button>
					</div>
				</div>
			</div>

<!-- /////////////////////////////// [[회원목록]] ////////////////////////////////////////////////////// -->
	
	<div id="eqbox">
		</div>
							
