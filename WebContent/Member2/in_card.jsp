<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ include file="../common/JEasyUICommon.jsp"%>
    
    
    
    
    
    
 <ul>
              <!-- Loop -->     
    <%
    	List<Map<String,Object>> bhSelList = (List<Map<String,Object>>)request.getAttribute("bhSelList");
    	int size=0;
    	if(bhSelList!=null){
    		size = bhSelList.size();
    	}
    
    
    %>          
    
    
    <%
    
    	for(int i=0; i<size; i++){
    		Map<String,Object> rMap = bhSelList.get(i);
    	
    
    %>
 
              <li >
                  <div class="profile">
                      <p class="pic" id="pic">
                      <img src="../img/smile.png"></p>
                      <p class="name" id="name"><%=rMap.get("MEM_NAME") %></p>
                      <p><%=rMap.get("MEM_HP") %></p>
                      <p class="info" style="float: right;"><%=rMap.get("MEM_BIRTH") %>/<%=rMap.get("MEM_GENDER") %></p>
                  </div>
                  <div class="card_itm" id="card_itm">
                      <p class="unit">
								<label>최근 결제 상품</label>				
                              <span class="letter_crap wd_add">락카 12개월</span>
				               <i class="expired">만료일 : 2020-09-25</i>  
                      </p>
                      
                  </div>
                  
                  <div class="function_btn" >
                      <input type="checkbox" id="check" onclick="eqch('<%=rMap.get("MEM_NUM") %>')"  name="check" class="checkBox"  data-sms-agree="Y" >
                      		<label for="member_1">회원 선택</label>	  
						  <a  class="btn green small cart">상품판매</a>
					  
                      <a  class="btn blue small view" >상세보기</a>
                  </div>
              </li>
              <%
             	 }
              %>
              <!-- //Loop  -->
          </ul>