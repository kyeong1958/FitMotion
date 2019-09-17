<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="/CSS/Sprogramcss.jsp"%>

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
	 <form 
                     novalidate="novalidate">
                     <div class="table-wrap list fat-header">
                        <table class="outside">
                           <thead>
                              <tr>
                                 <th class="fat-header">
                                    <!-- S: 체크박스영역 추가 --> 
                                       <i>|</i>
                                       <span >프로그램명 </span>
                                       <i>|</i>
                                       <span>강사</span>
                                       <i>|</i>
                                       <span>시간</span>
                                       <i>|</i>
                                       <span>정원</span>
                                       <i>|</i>
                                       <span >금액</span>
                                       <i>|</i>
                                 </th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>
                                    <table border="1">
                                       <tbody>
                                          <td>
                                          <input type="hidden" id="lname62"value="~5kg 미만 목욕"> 
                                          <input type="hidden" id="lamt62" value="15000"> 
                                          <input type="hidden" id="lproctime62" value="0100"> 
                                          <input type="hidden" id="lcategory62" value="애견"> 
                                          <input type="radio">
                                          <td class="column program">요가A</td>
                                          <td class="column name">이광현</td>
                                          <td class="column duration" id="listproctime62">1시간</td>
                                          <td class="column number" id="listproctime62">30</td>
                                          <td class="column width-xxlarge price" id="listamt62">15,000원</td>
                                          </td>
                                       </tbody>
                                       <tbody>
                                         <td>
                                          <input type="hidden" id="lname62"value="~5kg 미만 목욕"> 
                                          <input type="hidden" id="lamt62" value="15000"> 
                                          <input type="hidden" id="lproctime62" value="0100"> 
                                          <input type="hidden" id="lcategory62" value="애견"> 
                                          <input type="radio">
                                          <td class="column program">요가A</td>
                                          <td class="column name">이광현</td>
                                          <td class="column duration" id="listproctime62">1시간</td>
                                          <td class="column number" id="listproctime62">30</td>
                                          <td class="column width-xxlarge price" id="listamt62">15,000원</td>
                                          </td>
                                       </tbody>
                                       <tbody>
                                          <td>
                                          <input type="hidden" id="lname62"value="~5kg 미만 목욕"> 
                                          <input type="hidden" id="lamt62" value="15000"> 
                                          <input type="hidden" id="lproctime62" value="0100"> 
                                          <input type="hidden" id="lcategory62" value="애견"> 
                                          <input type="radio">
                                          <td class="column program">요가A</td>
                                          <td class="column name">이광현</td>
                                          <td class="column duration" id="listproctime62">1시간</td>
                                          <td class="column number" id="listproctime62">30</td>
                                          <td class="column width-xxlarge price" id="listamt62">15,000원</td>
                                          </td>
                                       </tbody>
                                       <tbody>
                                         <td>
                                          <input type="hidden" id="lname62"value="~5kg 미만 목욕"> 
                                          <input type="hidden" id="lamt62" value="15000"> 
                                          <input type="hidden" id="lproctime62" value="0100"> 
                                          <input type="hidden" id="lcategory62" value="애견"> 
                                          <input type="radio">
                                          <td class="column program">요가A</td>
                                          <td class="column name">이광현</td>
                                          <td class="column duration" id="listproctime62">1시간</td>
                                          <td class="column number" id="listproctime62">30</td>
                                          <td class="column width-xxlarge price" id="listamt62">15,000원</td>
                                          </td>
                                       </tbody>
                                       <tbody>
                                         <td>
                                          <input type="hidden" id="lname62"value="~5kg 미만 목욕"> 
                                          <input type="hidden" id="lamt62" value="15000"> 
                                          <input type="hidden" id="lproctime62" value="0100"> 
                                          <input type="hidden" id="lcategory62" value="애견"> 
                                          <input type="radio">
                                          <td class="column program">요가A</td>
                                          <td class="column name">이광현</td>
                                          <td class="column duration" id="listproctime62">1시간</td>
                                          <td class="column number" id="listproctime62">30</td>
                                          <td class="column width-xxlarge price" id="listamt62">15,000원</td>
                                          </td>
                                       </tbody>
                                       <tbody>
                                        <td>
                                          <input type="hidden" id="lname62"value="~5kg 미만 목욕"> 
                                          <input type="hidden" id="lamt62" value="15000"> 
                                          <input type="hidden" id="lproctime62" value="0100"> 
                                          <input type="hidden" id="lcategory62" value="애견"> 
                                          <input type="radio">
                                          <td class="column program">요가A</td>
                                          <td class="column name">이광현</td>
                                          <td class="column duration" id="listproctime62">1시간</td>
                                          <td class="column number" id="listproctime62">30</td>
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
