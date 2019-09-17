<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../CSS/Equipmentcss.jsp"%>
<!-- <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script> -->
<!-- datepicker -->

<!-- ================== [[ 기구관리 ]] ================== -->
<script type="text/javascript">
	$( function() {
	    $( "#datepicker" ).datepicker({
	    	dateFormat:'yy-mm-dd'
	    	,changeMonth: true
	     	,changeYear: true
	    	,showButtonPanel: true
	    });
	    
 	 });
</script>
<!-- ////////////////////////////////////////////////////////////// -->
<div class="page manage-sales">
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
	<!-- 타이틀 검색어 여기까지 고정  page-title = 이름 바궈주기  -->
	<form id="E-from">
		<div class="E-card-plus-wrap" style="height: 198px; padding-left: 35px;">
			<div class="E-tit-area">
				<i>+</i>
				<span>기구<br>
					<span>등록관리</span>
				</span>
			</div>
			<div class="E-input-wrap">
				<ul>
					<li class="equip_name" style="float: unset;">
						<span class="tit">기구명</span>
						<input type="text" style="width: 157px;padding-left: 5px" placeholder="0000"
							class="cusnum-item valid" required="" aria-required="true"
							aria-invalid="false"/>
					</li>	
					<li class="cusnumber" style="float: unset;">
						<span class="tit">가격</span>
						<input type="text" style="width: 157px;padding-left: 5px" placeholder="0000"
							class="cusnum-item valid" required="" aria-required="true"
							aria-invalid="false"/>
					</li>
					<div style="margin-top: 25px">
						<li class="manager">
							<span class="tit" style="margin-top: 3px">작동여부</span>
							<div class="frm_select" style="margin-top: 8px">
								<select class="valid" aria-invalid="false">
									<option>작동</option>
									<option selected="">고장</option>
								</select>
							</div>
						</li>
						<li class="repair">
							<span class="tit">수리횟수</span>
							<input type="text" style="width: 30px;padding-left: 10px" placeholder="1"
								class="cusnum-item valid" required="" aria-required="true"
								aria-invalid="false"/>
						</li>
						<li class="repair">
							<span class="tit" style="margin-left: 34px;">고장내역</span>
							<input type="text" style="width: 148px;padding-left: 5px" required=""
								aria-required="true" aria-invalid="false"/>
						</li>
					</div> 
					<div style="margin-top: 5px">
					<li class="birthday">
						<span class="tit">구매일</span>
						<input type="hidden" id="birth" name="birth">
						<input type="text" style="margin-right: 10px;margin-top:4px; width: 200px;padding-left: 5px;"  id="datepicker">
						<!-- <input id="buydate" style="margin-right: 10px;margin-top:4px; width: 200px;padding-left: 5px;" type="date"
						data-date-format="YYYY-MM-DD" data-date=""
							class="brith-item year valid"
							maxlength="4" aria-invalid="false"/> -->
					<!-- 	<input style="margin-right: 10px; width: 76px;" type="text"
							id="birthMonth" placeholder="01" class="brith-item month valid"
							maxlength="2" aria-invalid="false"/>
						<input type="text" id="birthDay" style="width: 76px;" placeholder="01"
							class="brith-item day" maxlength="2"/> -->
					</li>
					<div style="margin-top: 15px">
					<div class="E-btn-area">
					 	<button type="button" style="float: right; margin-right: 279px;
													margin-top: -180px; height: 150px;font-size: 5mm">등록
						</button> 
					</div>
				</ul>
			</div>
		</div>
	</form>
	<!--////////////////////////////////////////등록창 끝////////////////////////////////////////////////////  -->
	<div class="E-period-wrap">
		<div class="E-fl">
			<div class="ui checkbox font-size-16" style="margin-top: 7px">
				<input type="checkbox" id="checkbox-all" onchange="onChangeCheckboxAll();"/>
				<label for="checkbox-all">
					<span><span>
					</span></span>전체선택
				</label>
			</div>
		</div>
		<div class="btn-group" style="float: right;">
			<button type="button">번호</button>
			<button type="button">등록일</button>
			<div class="btn-group">
				<button type="button" class="dropdown-toggle" data-toggle="dropdown">
					정렬</button>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="#">내림차순</a> <a class="dropdown-item"
						href="#">올림차순</a>
				</div>
			</div>
		</div>
	</div>
	<!-- =================================화면단 중간     ================================ -->
	<!-- 화면 바끼는 부분  -->
	<div class="E-card-wide-wrap">
		<ul id="custList">
			<!-- 고객상세 -->
			<li class="E-card-wide-list" style="cursor: auto;">
				<div class="E-cardWide-wrap">
					<div class="E-tit-area">
						<div class="ui checkbox fl" style="margin-top: 1px">
							<input type="checkbox"> 
							<label for="checkbox-cust1"/>
								
							</label>
						</div>
						<div class="E-num-area" style="cursor: pointer;">1</div>
					</div>
					<div class="E-date-area" style="cursor: pointer;" onclick="goCustDetail(1);">
						<ul>
							<li>
								<span class="tit">등록일</span>
								<span class="subjact">2019.09.04</span>
							</li>
						</ul>
					</div>
					<div class="E-info-area" style="cursor: pointer; margin-left: 49px;"
						onclick="goCustDetail(1);">
						<ul>
							<li class="first" id="divn">
								<dt>기구이름</dt>
								<dd>
									<span class="subject"> 런닝머신 </span>
								</dd>
							</li>
							<li class="second">
								<dt>작동여부</dt>
								<dd>
									<span class="subject">고장</span>
								</dd>
							</li>
							<li class="second">
								<dt>가격</dt>
								<dd>
									<span class="subject">100만원</span>
								</dd>
							</li>
							<li class="second">
								<dt>수리횟수</dt>
								<dd>
									<span class="subject">0</span>
								</dd>
							</li>
							<li class="second">
								<dt>고장내역</dt>
								<dd>
									<span class="subject">런닝머신고무가벗겨짐</span>
								</dd>
							</li>
						</ul>
					</div>
				</div>
			</li>
		</ul>
	</div>
</div>
