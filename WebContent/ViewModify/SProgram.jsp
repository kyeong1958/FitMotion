<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/CSS/Goodscss.jsp"%>
<style>
.list {
   margin-top: 33px;
    margin-bottom: 30px;
}
/*  프로그램 css */
td, th {
    padding: 7px;
}

table {
	width: 100%;
    border: 0;
    border-collapse: collapse;
}



.manage-shop .page-content.treatment-menu .table-wrap .fat-header {
    position: relative;
    padding: 19px 19px 19px 15px;
}
.table-wrap.fat-header th.fat-header {
    padding: 20px;
    text-align: left;
    color: #37454a;
    font-size: 16px;
    font-weight: normal;
    border-bottom: 1px solid #dce8ea;
}

.selectRadio-wrap {
    position: relative;
    display: inline-block;
}

manage-shop .page-content.treatment-menu .table-wrap .row {
    background: #f7fafb;
}
.table-wrap tr.row {
    border-bottom: 1px solid #dce8ea;
}

 

.manage-shop .page-content.treatment-menu .table-wrap {
    margin-bottom: 20px;
}
.manage-shop .page-content.treatment-menu table {
    table-layout: auto;
}
.table-wrap table.outside {
    background: #ffffff;
    border: 1px solid #d8e5e7;
    font-size: 13px;
}
</style>
<div class="page manage-sales">
            <!-- 검색창 -->
	<div class="page-top-menu-wrap">
		<div class="left">
			<div class="page-title">프로그램</div>
		</div>
		<div class="right" style="float: right; padding-right: 16px;">
			<div class="ui search form">
				<input id="searchTxt" name="searchTxt" placeholder="검색어를 입력하세요" style="width: 300px"/>
				<a class="action" href="#" >
					<i class="fa fa-search" aria-hidden="true"></i>
				</a>
				<div id="search-result" class="search-result hidden"></div>
				<input type="hidden" id="custno" name="custno" value="0">
			</div>
		</div>
	</div>
    <!-- 타이틀이름이랑검색어부분  끝-->
<!-- =================================화면단 중간     ================================ -->
<!-- 화면 바끼는 부분  -->
	<form novalidate="novalidate">
		<div class="table-wrap list fat-header">
			<table class="outside">
				<thead>
            		<tr>
               			<th class="fat-header">
		                  <!-- S: 체크박스영역 추가 --> 
		                     <span>프로그램명 </span>
		                     <i>|</i>
		                     <span>강사</span>
		                     <i>|</i>
		                     <span>시간</span>
		                     <i>|</i>
		                     <span>금액</span>
						</th>
					</tr>
				</thead>
		        <tbody>
		           <tr>
		              <td>
		                 <table border="1">
		                    <tbody>
		                       <td>
									<input type="hidden" id="lname62"value="~5kg 미만 목욕"/> 
									<input type="hidden" id="lamt62" value="15000"/> 
									<input type="hidden" id="lproctime62" value="0100"/> 
									<input type="hidden" id="lcategory62" value="애견"/> 
									<input type="radio"/>
									<td class="column program">요가A</td>
									<td class="column name">이광현</td>
									<td class="column duration" id="listproctime62">1시간</td>
									<td class="column width-xxlarge price" id="listamt62">15,000원</td>
		         	           </td>
		                      </tbody>
		                      <tbody>
			                       <td>
				                        <input type="hidden" id="lname62"value="~5kg 미만 목욕"> 
				                        <input type="hidden" id="lamt62" value="15000"> 
				                        <input type="hidden" id="lproctime62" value="0100"> 
				                        <inputtype="hidden" id="lcategory62" value="애견"> 
				                        <input type="radio">
				                        <td class="column program">요가A</td>
				                        <td class="column name">이광현</td>
				                        <td class="column duration" id="listproctime62">1시간</td>
				                        <td class="column width-xxlarge price" id="listamt62">15,000원</td>
			                       </td>
		                     </tbody>
		                     <tbody>
		                        <td>
		                        <input type="hidden" id="lname62"value="~5kg 미만 목욕"> 
		                        <input type="hidden" id="lamt62" value="15000"> 
		                        <input type="hidden" id="lproctime62" value="0100"> 
		                        <inputtype="hidden" id="lcategory62" value="애견"> 
		                        <input type="radio">
		                        <td class="column program">요가A</td>
		                        <td class="column name">이광현</td>
		                        <td class="column duration" id="listproctime62">1시간</td>
		                        <td class="column width-xxlarge price" id="listamt62">15,000원</td>
		                        </td>
		                     </tbody>
		                     <tbody>
		                       <td>
		                        <input type="hidden" id="lname62"value="~5kg 미만 목욕"> 
		                        <input type="hidden" id="lamt62" value="15000"> 
		                        <input type="hidden" id="lproctime62" value="0100"> 
		                        <inputtype="hidden" id="lcategory62" value="애견"> 
		                        <input type="radio">
		                        <td class="column program">요가A</td>
		                        <td class="column name">이광현</td>
		                        <td class="column duration" id="listproctime62">1시간</td>
		                        <td class="column width-xxlarge price" id="listamt62">15,000원</td>
		                        </td>
		                     </tbody>
		                     <tbody>
		                       <td>
		                        <input type="hidden" id="lname62"value="~5kg 미만 목욕"> 
		                        <input type="hidden" id="lamt62" value="15000"> 
		                        <input type="hidden" id="lproctime62" value="0100"> 
		                        <inputtype="hidden" id="lcategory62" value="애견"> 
		                        <input type="radio">
		                        <td class="column program">요가A</td>
		                        <td class="column name">이광현</td>
		                        <td class="column duration" id="listproctime62">1시간</td>
		                        <td class="column width-xxlarge price" id="listamt62">15,000원</td>
		                        </td>
		                     </tbody>
		                     <tbody>
		                      <td>
		                        <input type="hidden" id="lname62"value="~5kg 미만 목욕"> 
		                        <input type="hidden" id="lamt62" value="15000"> 
		                        <input type="hidden" id="lproctime62" value="0100"> 
		                        <inputtype="hidden" id="lcategory62" value="애견"> 
		                        <input type="radio">
		                        <td class="column program">요가A</td>
		                        <td class="column name">이광현</td>
		                        <td class="column duration" id="listproctime62">1시간</td>
		                        <td class="column width-xxlarge price" id="listamt62">15,000원</td>
		                        </td>
		                     </tbody>
		                     <td colspan="5">시술 등록하기</td>
	                     </table>
					</tbody>
				</table>
			</div>
		</form>
</div>
