<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>OrderForm.jsp</title>
</head>
<body>
<h3>주문 입력</h3>
<hr>
<form action="OrderConfirm.jsp">
	<input type="text" name="eamil" placeholder="고객이 메일을 입력하세요.">
	<input type="text" name="pcode" placeholder="상품코드 입력하세요.">
	<input type="number" name="quantity" placeholder="수량을 입력하세요.">
	<button>주문</button>
	<!-- 문제1:form 태그는 get, post 방식을 지정하고, 1번은 post 메소드를 지정하여 전송 -->
	<!-- 문제2:form 태그 안에 있을 때는 type을 생략한다. 그러면 button에서 아무 값도 지정하지 않았기 때문에 submit 생략 -->
	<!-- 문제3:email, pcode, quantity가 orderConfirm.jsp 에서 전송받는다. -->
</form>
</body>
</html>