<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../CSS/Goodscss.jsp"%>
<!-- ================== [[ 구매등록 ]] ================== -->

<style>

/* 구매등록 css 다른점 */
.card-plus-wrap .tit-area i {
   margin: 5px 15px 0 0;
}

.card-plus-wrap .tit-area span {
   font-size: 17px;
   line-height: 31px;
}
.list {
   margin-top: 33px;
    margin-bottom: 30px;
}
</style>
<div class="page manage-sales">
	<div class="page-top-menu-wrap">
		<div class="left">
			<div class="page-title">구매등록</div>
            <!-- 검색창 -->
			<div class="right" style="float: right">
				<div class="ui search form">
					<input id="searchTxt" name="searchTxt" placeholder="검색어를 입력하세요" style="width: 300px"/>
       				<a class="action" href="#" >
           				<i class="fa fa-search" aria-hidden="true"></i>
           			</a>
       				<div id="search-result" class="search-result hidden"></div>
       				<input type="hidden" id="custno" name="custno" value="0"/>
     			</div>
   			</div>
   		</div>
	</div>
<!-- 타이틀 검색어 여기까지 고정  page-title = 이름 바궈주기  -->
<form>
	<div class="card-plus-wrap" style="height: 198px; padding-left: 35px;">
		<div class="tit-area">
   			<i>+</i>
   			<span>회원권
   				<br>구매등록
   			</span>
		</div>
		<div class="input-wrap">
   			<ul>
      			<li class="name">
      				<input type="text" placeholder="회원명" id="name" name="name"/>
      			</li>
      			<li class="cellphone">
      				<input type="text" style="ime-mode: disabled" placeholder="기간"/>
      			</li>
				<li class="cusnumber" style="float: unset;">
					<span class="tit">금액</span>
					<input type="text" style="width: 157px;" id="shopcustno" name="shopcustno" placeholder="0000" class="cusnum-item valid"
							required="" aria-required="true" aria-invalid="false"/>
				</li>
				<br>
				<li class="manager">
					<span class="tit">카테고리</span>
	 				<div class="frm_select">
   						<select id="charge" name="charge" class="valid" aria-invalid="false">
      						<option selected="">----선택----</option>
      						<option>회원권</option>
      						<option>프로모션</option>
   						</select>
					</div>
				</li>
				<li class="manager">
					<span class="tit" style="float: initial">종류</span>
					<div class="frm_select">
     					<select id="charge" name="charge" class="valid" aria-invalid="false">
					         <option selected="">----선택----</option>
					         <option>헬스</option>
					         <option>P.T</option>
					         <option>요가</option>
					         <option>스피닝</option>
  						</select>
					 </div>
				</li>
				<br>
				<li class="birthday">
					<span class="tit">등록일</span>
					<input type="hidden" id="birth" name="birth"/>
					<input style="margin-right: 10px; width: 100px;" type="text" id="birthYear" placeholder="1900" class="brith-item year valid"
							maxlength="4" aria-invalid="false"/>
					<input style="margin-right: 10px; width: 76px;" type="text" id="birthMonth" placeholder="01" class="brith-item month valid"
					maxlength="2" aria-invalid="false"> <input type="text" id="birthDay" style="width: 76px;" placeholder="01" class="brith-item day" maxlength="2"/>
				</li>
				<div class="btn-area">
   					<button type="button" style="float: right; margin-right: 312px; margin-top: -151px; height: 112px;">등록</button>
            	</div>
         	</ul>
      	</div>
	</div>
</form>
<!--  //////////////////////////////////// -->
<div class="period-wrap">
    <div class="fl">
       <div class="ui checkbox font-size-16" style="margin-top: 7px">
            <input type="checkbox" id="checkbox-all"/>
            <label for="checkbox-all"><span><span></span></span>전체선택</label>
       </div>
    </div>
	<div class="fr">
   		<div class="frm_select">
      		<select id="desc" onchange="onClickOrderBy(this);">
         		<option value="asc">오름차순</option>
         		<option value="desc" selected="">내림차순</option>
      		</select>
   		</div>
	</div>
	<div class="fr" style="margin-right: 10px">
    	<div class="ui period">
        	<button class="btn btn-primary">
            	<label><span>번호</span></label>
            </button>
         	<button class="btn btn-primary">
            	<label><span>등록일</span></label>
         	</button>
      </div>
   </div>
</div>
<!-- =================================화면단 중간     ================================ -->
<!-- 화면 바끼는 부분  -->
	<div class="card-wide-wrap">
	   <ul id="custList">
	      <!-- 비품상세 -->
			<li class="card-wide-list" style="cursor: auto;">
				<div class="cardWide-wrap">
	   				<div class="tit-area">
	      				<div class="ui checkbox fl" style="margin-top: 1px">
	   						<input type="checkbox"/>
	   						<label for="checkbox-cust1"><span><span></span></span></label>
						</div>
						<div class="num-area" style="cursor: pointer;">1</div>
						<div class="name-area" style="cursor: pointer;">
	      					<span>농담곰</span>
	   					</div>
					</div>
					<div class="date-area" style="cursor: pointer;" onclick="goCustDetail(1);">
						<ul>
	      					<li>
	      						<span class="tit">등록일</span>
	      						<span class="subjact">2019.09.04</span>
	      					</li>
	   					</ul>
					</div>
					<div class="info-area" style="cursor: pointer;" onclick="goCustDetail(1);">
	                     <ul>
	                        <li class="first" id="divn">
	                        	<dt>기간</dt>
	                            <dd>
	                    	        <span class="subject"> 2019.09.06 - 2019.10.05 </span>
	                            </dd>
	                        </li>
	                        <li class="second">
	                        	<dt>프로그램명</dt>
	                            <dd>
	                           	<span class="subject">요가</span>
	                            </dd>
	                        </li>
	                        <li class="second">
	                        	<dt>금액</dt>
	                            <dd>
	                           	<span class="subject">15만원</span>
	                            </dd>
	                        </li>
						</ul>
					</div>
				</div>
			</li>
		</ul>
	</div>
</div>
