<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OrderResult.jsp</title>
</head>
<body>
<h3>주문 확인</h3>
<hr>
<ul>
	<li>고객 이메일:${order.email}</li>
	<li>상품코드:${order.pcode}</li>
	<li>주문수량:${order.quantity}</li>
</ul>
<hr>
<button onclick="#">추가 주문</button>
<script type="text/javascript">alert('주문완료 되었습니다.')</script>
<!-- 문제10 : OrderConfirm2가 받은 request를 OrderResult.jsp로 전달 -->
</body>
</html>
<!-- 문제11:${order.email}은 EL을 사용한 표현식이다.
			이 표현식은 orderBean 객체의 email 속성을 표시한다.
			여기서 order는 orderConfirm2.jsp에서 useBean과 setProperty를 통해
			생성된 OrderDto 객체를 나타낸다. 그러므로 이 표현식은 해당 주문의 이메일 값을 표시한다.
-->