<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, java.util.List" %>   
<link rel="stylesheet" type="text/css" href="../kcss/insert.css">

<!-- ================== [[ 메인화면 ]] ================== -->

<!--============================ [[ script ]] ==============================================  -->
<script type="text/javascript">
	function goINS_click(){
		alert($("#go_name")+"등록되었습니다.");
		var formData = $("#goINS").serialize();
		$.ajax({
			method:"POST",
			data:formData,
			url:"/both/goINS.fm",
			success:function(data) {
				$("#gosel").html(data);
			}
		});
	
		}
</script>

<!--============================ [[ script ]] ==============================================  -->

		<div class="page-top-menu-wrap">
					<div class="left">
						<div class="page-title">비품관리</div>
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
				<form id="goINS" method="post">
				<input type="hidden" value="123" id="gym_code" name="gym_code">
					<div class="col-sm-2 col-lg-2">
						<div class="title_insert">
							<span><font size="5px"><b>+</b></font></span>
							<span>비품<br>
							</span>
						</div>
					</div>
					<div class="col-sm-8 col-lg-8">
					<div class="col-sm-6 col-lg-6">
						 <div class="row">
								<span>●&nbsp;비품명<input class="textbox" type="text" id="go_name" name="go_name" style="width:60%;margin-left:10%"></span>
						 </div>
						 <div class="row" style="margin-top:20%">
							<span>●&nbsp;개수<input class="textbox" type="text" id="go_stock" name="go_stock" style="width:70%;margin-left:7%"></span>
							</div>
					<div class="row" style="margin-top:20%">
							<span>●&nbsp;구매일<input class="textbox" type="text" id="go_date" name="go_date" style="width:60%;margin-left:10%"></span>
					</div>
					</div>
					<div class="col-sm-6 col-lg-6">
						<div class="row">
								<span>●&nbsp;분류&nbsp;&nbsp;&nbsp;
									<span class="operation">
										<select class="valid" aria-invalid="false" id="go_type" name="go_type">
											<option value="">소모품</option>
											<option value=""></option>
										</select>
									</span>
								</span>
						</div>
						<div class="row" style="margin-top:20%">
							<span>●&nbsp;금액&nbsp;<input class="textbox" type="text" id="go_price" name="go_price" style="width:70%"></span>
						</div>
					</div>
					</div> 
					<div class="col-sm-2 col-lg-2">
						<div class="btn_registration">
						 	<button onclick="goINS_click()" type="button" class="registration">등록
							</button>
						</div>
					</div>
				</form>
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
		
									<div id="gosel">
											
										</div> 
							






