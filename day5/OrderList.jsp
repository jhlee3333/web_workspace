<%@page import="sample.dao.OrderDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OrderList.jsp</title>
</head>
<body>
<h3>고객 주문 현황</h3>
<hr>
	<ul>
		<%
			OrderDao dao = OrderDao.getOrderDao();
			List<String> list = dao.selectOrderByEmail();
			for(String email : list) {
		%>
			<li><a href="orderDetail.jsp?email=<%=email%>"><%=email%></a></li>
			<!-- 문제6: 이메일을 불러오기 위해 OrderDao에서 불러와 사용하고,
						selectOrderByEmail 태그에서 String 문자열로 이메일을 불러온다.
						그래서 String list를 쓰고, 표현식을 사용하여 <%=email%>이라고 쓴다.
			 -->
		<%
			}
		%>
	</ul>
</body>
</html>