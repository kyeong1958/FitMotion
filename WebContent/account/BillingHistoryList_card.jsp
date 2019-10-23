<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
		List<Map<String,Object>> ProbuySel = (List<Map<String,Object>>)request.getAttribute("ProbuySel");
		
		int size=0;
		if(ProbuySel!=null){
			size = ProbuySel.size();
		}
		
%>    
    
    

    
    
    
 <ul>
 
 <%
 		for(int i=0; i<size; i++){
				Map<String,Object> rMap = ProbuySel.get(i);
 %>
                    <!-- Loop -->
                    <!-- 상품 별 디자인 클래스가 다르게 적용되어 있습니다. -->
                    
                        <li>
                            <div class="service_itm" >
                                <p>
                                    <span><%=rMap.get("MEM_NAME") %></span>
                                    <i><%=rMap.get("PROM_NAME") %></i>
                                    <strong class="cost">
                                              <%=rMap.get("PROM_DIS_PRICE") %>
                                    </strong>
                                </p>
                            </div>
                            <div class="card_point_txt">
                                        <p class="use_service">이용중</p>
                            </div>

                            <div class="service_detail" >
                                <div class="use_service">
                                            <p class="pr_pt ">
                                                <span>개인레슨</span>
                                                <i><%=rMap.get("PROM_START_DATE") %> - <%=rMap.get("PROM_END_DATE") %></i>
                                                <strong class="use_tool">
                                                    
														<!-- 
															<a >
                                                                이용권 기간 수정
                                                            </a>
														 -->
                                                    
                                                </strong>                                                                                    
                                            </p>
                                        
       
                                </div>

                                <div class="use_itm">
                                    <p>
                                        <span>상품금액</span>
                                        <i><%=rMap.get("PROM_DIS_PRICE") %>원</i>
                                    </p>
                                    <p>
                                        <span>결제금액</span>
                                        <i>          
                                                    <%=rMap.get("TICP_PAYMENT") %> 원 
                                        </i>
                                    </p>          
                                       
                                        <p>
                                            <span>결제일자</span>
                                            <i><%=rMap.get("TICP_REG_DATE") %></i>
                                        </p>
                                </div>

                                <div class="service_price btn_add">
                                    <p>
									<span class="fr btn_line_add">
													<a class="btn red"  data-toggle="modal" data-target="#ST-Modal">중지</a>
													<a class="btn red"  data-toggle="modal" data-target="#YD-Modal" > 양도</a>
                                                    <a type="button" class="btn red">환불</a>
                                    </span>
                                    </p>
                                </div>
                            </div>
                        </li>
                    <%
 						}
                    
                    %>
                </ul>