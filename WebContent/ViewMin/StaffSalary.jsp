<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../CSS/StaffSalarycss.jsp"%>
<!-- ================== [[ 직원급여 ]] ================== -->

<div class="page manage-sales">
	<div class="page-top-menu-wrap">
	    <div class="left">
			<div class="page-title">직원급여</div>
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
<form id="SS-form">
	<div class="SS-card-plus-wrap" style="height: 198px; padding-left: 35px;">
		<div class="SS-tit-area">
   			<i>+</i><span>급여<br>인센티브</span>
		</div>
		<div class="SS-input-wrap">
	   		<ul>
	      		<li class="name">
	      			<input type="text" placeholder="이름" id="name" name="name"/>
	      		</li>
	      		<li class="cellphone">
	      			<input type="text" style="ime-mode: disabled" placeholder="연락처"/>
	      		</li>
				<li class="cusnumber" style="float: unset;">
					<span class="tit">금액</span> 
						<input type="text" style="width: 157px;" id="shopcustno" name="shopcustno" placeholder="0000"
								class="cusnum-item valid" required="" aria-required="true"  aria-invalid="false"/>
				</li>
				<br>
				<li class="manager">
					<span class="tit">분류</span>
	   				<div class="frm_select">
	      				<select id="charge" name="charge" class="valid" aria-invalid="false">
	         				<option>급여</option>
	         				<option selected="">인센티브</option>
	      				</select>
	   				</div>
	   			</li>
				<br>
				<li class="birthday">
					<span class="tit">지급일</span>
					<input type="hidden" id="birth" name="birth"/>
						<input style="margin-right: 10px; width: 100px;" type="text"
								id="birthYear" placeholder="1900" class="brith-item year valid"
								maxlength="4" aria-invalid="false"/>
						<input style="margin-right: 10px; width: 76px;" type="text"
								id="birthMonth" placeholder="01" class="brith-item month valid"
								maxlength="2" aria-invalid="false"/>
						<input type="text" id="birthDay" style="width: 76px;" placeholder="01"
	   							class="brith-item day" maxlength="2"/>
				</li>
				<div class="SS-btn-area">
	   				<button type="button" style="float: right; margin-right: 290px; margin-top: -151px; height: 112px; width: 79px;">등록</button>
	            </div>
	         </ul>
		</div>
	</div>
</form>

<!--//////////////////////////////////////////////////////////////////////////////////////////////////////////  -->         
<div class="SS-period-wrap">
	<div class="SS-fl">
		<div class="ui checkbox font-size-16" style="margin-top: 7px;">
			<input type="checkbox" id="checkbox-all" onchange="onChangeCheckboxAll();" style="margin-left: 36px;"/>
             <label for="checkbox-all"><span><span></span></span>전체선택</label>
   		</div>
	</div>
	<div class="btn-group" style="float: right;">
  		<button type="button" >번호</button>
  		<button type="button" >등록일</button>
  		<div class="btn-group">
    		<button type="button" class="dropdown-toggle" data-toggle="dropdown">정렬</button>
    		<div class="dropdown-menu">
      			<a class="dropdown-item" href="#">내림차순</a>
      			<a class="dropdown-item" href="#">올림차순</a>
    		</div>
  		</div>
	</div>                  
</div>
      <!-- =================================화면단 중간     ================================ -->
<!-- 화면 바끼는 부분  -->
<div class="SS-card-wide-wrap">
	<ul id="custList">
      <!-- 고객상세 -->
		<li class="card-wide-" style="cursor: auto;">
			<div class="SS-cardWide-wrap">
   				<div class="SS-tit-area">
      				<div class="ui checkbox fl" style="margin-top: 1px">
   						<input type="checkbox"/>
						<label for="checkbox-cust1"><span><span></span></span></label>
					</div>
				
					<div class="SS-num-area" style="cursor: pointer;">1</div>
					<div class="SS-name-area" style="cursor: pointer;">
      					<span>이광현</span>
					</div>
				</div>
				<div class="SS-date-area" style="cursor: pointer;" onclick="goCustDetail(1);">
   					<ul>
      					<li>
      						<span class="tit">등록일</span>
      						<span class="subjact">2019.09.04</span>
      					</li>
   					</ul>
				</div>
				<div class="SS-info-area" style="cursor: pointer; margin-left: 116px;" onclick="goCustDetail(1);">
					<ul>
   						<li class="first" id="divn">
         					<dt>연락처</dt>
         					<dd>
               					<span class="subject"> 010-5263-9693 </span>
         					</dd>
   						</li>
   						<li class="second" style="padding-left: 94px;">
      						<dt>분류</dt>
      						<dd>
   								<span class="subject">급여</span>
      						</dd>
						</li>
						<li class="second" style="padding-left: 87px;">
                           <dt>금액</dt>
                           <dd>
                           <span class="subject">100만원</span>
                              </dd>
                        </li>
					</ul>
				</div>
			</div>
         </li>
      </ul>
   </div>
</div>
