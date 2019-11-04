<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<script>
/*양도버튼 클릭후 모달과직원이름*/
	function give(ticp_num){
		$("#YD-Modal").modal();
		$("#mticp_num").val(ticp_num);
			$.ajax({
		  method:"POST"
			,url:"/account/PROSEL2.fm"
			,success:function(data){
				//alert("성공");
				$("#selectpro2").html(data);
		}
	  }); 
	}
/*양도버튼 클릭후 모달과직원이름*/
 /* 환불 */
 	function back(tcip_num){
 	$.ajax({
		  method:"POST"
			,url:"/account/proback.fm?tcip_num="+tcip_num
			,success:function(data){
				alert("환불 처리중 입니다.");
				$("#BHLgrid").html(data);
		}
	  }); 
	}
</script>    
    
    
<%
		DecimalFormat df = new DecimalFormat("###,###,###");
		List<Map<String,Object>> ProbuySel = (List<Map<String,Object>>)request.getAttribute("ProbuySel");
		int size=0;
		String status = null;
		if(ProbuySel!=null){
			size = ProbuySel.size();
		}
%>    
 <ul style="flex-flow: wrap-reverse;">
 <%
 		for(int i=0; i<size; i++){
				Map<String,Object> rMap = ProbuySel.get(i);
				status = rMap.get("TICP_STATE").toString();
 %>
                    <!-- Loop -->
                    <!-- 상품 별 디자인 클래스가 다르게 적용되어 있습니다. -->

                    
       

                        <li style="  width: calc((100% - 50px) / 4)">

                            <div class="service_itm" >
                                <p>
                                    <span><%=rMap.get("MEM_NAME") %></span>
                                    <i><%=rMap.get("PROM_NAME") %></i>
                                    <strong class="cost">
                                              <%=df.format(Integer.parseInt(rMap.get("PROM_DIS_PRICE").toString())) %>
                                    </strong>
                                </p>
                            </div>
                            <%
                            	if("이용중".equals(status)){
                            %>
                            <div class="card_point_txt">
                                        <p class="use_service"><%=rMap.get("TICP_STATE") %></p>
                            </div>
							<%
                            	}
							%>
							<%
								if("만료".equals(status)){
							
							%>
							<div class="card_point_txt">
                                   <p class="use_finish" style="background-color: #ff6f69"><%=rMap.get("TICP_STATE") %></p>
                            </div>
							<%
							
								}
							%>
							<%
								if("양도".equals(status)){
									
							%>
							<div class="card_point_txt">
                                   <p class="use_rent" style="background-color: #88d8b0"><%=rMap.get("TICP_STATE") %></p>
                            </div>
                            <%
								}
                            %>
							
							<%
								if("환불".equals(status)){
									
							%>
							<div class="card_point_txt">
                                   <p class="use_out" style="background-color: 	#79b2ce"><%=rMap.get("TICP_STATE") %></p>
                            </div>
                            <%
								}
                            %>
							
							<%
								if("중지".equals(status)){
									
							%>
							<div class="card_point_txt">
                                   <p class="use_stop" style="background-color: #eaadbd"><%=rMap.get("TICP_STATE") %></p>
                            </div>
                            <%
								}
                            %>
							
							
                            <div class="service_detail" style="background-color: white;" >
                                <div class="use_service">
                                            <p class="pr_pt ">
                                                <span>개인레슨</span>
                                                <i><%=rMap.get("PROM_START_DATE") %> - <%=rMap.get("PROM_END_DATE") %></i>
                                                <strong class="use_tool">
                                                </strong>                                                                                    
                                            </p>
                                </div>
                                <div class="use_itm">
                                    <p>
                                        <span>상품금액</span>
                                        <i><%=df.format(Integer.parseInt(rMap.get("PROM_DIS_PRICE").toString()))%>원</i>
                                    </p>
                                    <p>
                                        <span>결제금액</span>
                                        <i>          
                                                    <%=rMap.get("TICP_PAYMENT")%> 원 
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
													<a class="btn red"  data-toggle="modal" data-target="#ST-Modal" >중지</a>
													<a class="btn red"  onclick="give(<%=rMap.get("TICP_NUM")%>)"> 양도</a>
                                                    <a type="button" class="btn red" onclick="back(<%=rMap.get("TICP_NUM")%>)">환불</a>
                                    </span>
                                    </p>
                                </div>
                            </div>
                        </li>
                    <%
 						}
                    %>
                    
                  
                </ul>
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                