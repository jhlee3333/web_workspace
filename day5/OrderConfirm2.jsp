<%@page import="sample.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OrderConfirm2.jsp</title>
</head>
<body>
<jsp:useBean id="order" class="sample.dto.OrderDto"/>
<jsp:setProperty property="*" name="order"/>
<%
	OrderDao dao = OrderDao.getOrderDao();
		if(dao.insert(order)==1){
%>
	<jsp:forward page="orderResult.jsp"/>
<%
		}
%>
</body>
</html>
<!-- 문제9: scope="request"일 때는 forward가 같이 사용된다.
			scope는 데이터를 사용할 수 있는 범위/영역이다.
-->