<%@page import="sample.dto.OrderDto"%>
<%@page import="java.util.List"%>
<%@page import="sample.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OrderDetail.jsp</title>
</head>
<body>
<%
	String email = request.getParameter("email");
	OrderDao dao = OrderDao.getOrderDao();
	List<OrderDto> list = dao.selectByEmail(email);
%>
<!-- 문제7:주문 현황은 특정 고객의 이메일 주소를 기반으로 가져오기 위해 사용되고, 이를 위해 실제 이메일 주소를 써야 한다.
	 그러므로 request.getParameter('email')을 사용하여 이메일을 불러온다.
-->
<h3><%= email %>고객 주문 현황</h3>
<hr>
<table style="width:500px;">
<tr><th style="width:200px;">상품코드</th><th style="width:100px;">수량</th>
	<th style="width:200px;">주문날짜</th>
</tr>
<% 
for (OrderDto dto : list) {
%>
<!-- 문제8: list 변수에 저장된 각 OrderDto 객체의 정보를 테이블 형태로 출력한다. 이를 위해 for(OrderDto dto : list) 사용 -->
<tr>	<td style="text-align:center;"><%=dto.getPcode() %></td>
		<td style="text-align:center;"><%=dto.getQuantity() %></td>
		<td style="text-align:center;"><%=dto.getOrderdate() %></td>
</tr>
<%
	}
%>
</table>
</body>
</html>