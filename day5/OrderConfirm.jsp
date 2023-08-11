<%@page import="sample.dao.OrderDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OrderConfirm.jsp</title>
</head>
<body>
<h3>주문 확인</h3>
<hr>
<jsp:useBean id="order" class="sample.dto.OrderDto"/>
<jsp:setProperty property="*" name="order"/>
<ul>
	<li>고객 이메일:<jsp:getProperty property="email" name="order"/></li>
	<li>상품코드:<jsp:getProperty property="pcode" name="order"/></li>
	<li>주문수량:<jsp:getProperty property="quantity" name="order"/></li>
	<!-- 문제4: name, param이 공통으로 들어간다. -->
</ul>
<hr>
<button onclick="location.href='OrderConfirm.jsp'">추가 주문</button>
<!-- 문제5: location.href='orderConfirm.jsp을 사용하여 추가 주문 버튼 클릭 시 화면1로 갈 수 있게 한다.-->
<%
	OrderDao dao = OrderDao.getOrderDao();
		if(dao.insert(order)==1){
%>
		<script type="text/javascript">
			alert('주문완료 되었습니다.')
		</script>
<% 
		}
%>
</body>
</html>