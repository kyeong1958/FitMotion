<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Map, java.util.List" %>
<%@ include file="/common/JEasyUICommon.jsp"%>
<%
	List<Map<String,Object>> taList = 
		(List<Map<String,Object>>)request.getAttribute("taList");
	int size = 0;
	if(taList!=null){
		size = taList.size();
	}
%>
<%
	for(int i=0;i<size;i++){
		Map<String,Object> rMap = taList.get(i); 

%> 
      <div class="column col_span width_right_add" style="width: calc(((115% - 15px) / 3) * 2);">
         <div class="grid_list over_view">
            <ul data-template="products">
            <li class="text-border /*purple c_purple*/">
               <div class="service_itm">
                  <p>
                     <span class="purple c_purple"><%=rMap.get("TICKET_NAME")%>
                        <em class="fr">
                           최근수정일 : 2019-09-23
                        </em>
                     </span>
                     <i><%=rMap.get("TICKET_NAME")%></i>
                  </p>
               </div>
               <div class="service_detail text-border /*purple c_purple*/" style="margin: 0 -1px; width: calc(100% + 2px); border-top: none !important;">
                  <div class="service_price">
                     <p><%=rMap.get("TICKET_PRICE")%></p>
                     <p style="display: block;">
                        <a  class="btn blue">결제하기</a>
                     </p>
                  </div>
               </div>
            </li>

       
             </ul>
            </div>
          </div>




<%
	}
%> 