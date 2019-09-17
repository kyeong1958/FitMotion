<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/CSS/StaffModal.jsp"%>
<!-- ================== [[ 직원등록/목록 ]] ================== -->
<!-- goods css와 충돌남  -->
<div class="page manage-sales">
	<div class="page-top-menu-wrap">
		<div class="left">  
			<div class="page-title">직원등록/목록</div>
            <!-- 검색창 -->
			<div class="right" style="float: right">
				<div class="ui search form">
        			<input id="searchText" name="searchText" placeholder="검색어를 입력하세요" style="width: 300px"/>
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
 	<div class="page-content manage-member">
		<div class="table-wrap list normal employee-table"> 
  			<table class="outside" id="stafftable">
    			<thead>
      				<tr class="row" id="staffthead" style="cursor: move; height: 0px;">
						<th class="column-header id">번호</th>
						<th class="column-header name">이름</th>
						<th class="column-header phone-number">연락처</th>
						<th class="column-header status">생년월일</th>
						<th class="column-header joined-date">입사일</th>
						<th class="column-header status">수락/거절</th>
						<th class="column-header permission">권한설정</th>
					</tr>
				</thead>
				<tbody>
					<tr id="stafftbody" class="row in-office" style="cursor: move;height: 0px;">
						<td class="column id" style="padding-left: 11px;">1</td>
						<td class="column name">손준호</td>
						<td class="column phone-number">010-6822-246</td>
						<td class="column status">
							<a class="action status" style="cursor:pointer;">1993.01.22</a>
						</td>
              				<td class="column joined-date">
              					<a class="action status" style="cursor:pointer;">2019. 09. 05</a>
   						</td>
						<td class="column status" id="qState-8215">
							<a id="actionStatus" class="action status" style="cursor:pointer; padding-left: 13px; text-decoration: underline;">수락</a>
							<a id="actionStatus" class="action status" style="cursor:pointer; text-decoration: underline;">거절</a>
						</td>
						<td class="column permission" id="qPermission-8215">
							<a id="actionStatus" class="action permission" style="cursor:pointer;" data-toggle="modal" data-target="#myModal">권한 설정</a>
						</td>
					</tr>
<!--//////////////////////////////////////// [[ Modal ]] //////////////////////////////////////////////////////////  -->
					<div id="myModal" class="modal fade" role="dialog">
						<%@ include file="./authority.jsp"%>    
<!-- 여기에넣는거엿음 -->
					</div>
 <!--/////////////////////////////////////// [[ Modal ]] //////////////////////////////////////////////////////////////////////////////  -->                              
				</tbody>
			</table>
		</div>
	</div>
</div>

