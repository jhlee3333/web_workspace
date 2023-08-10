<%@page import="sample.dto.MemberDto" %>
<%@page import="java.util.List" %>
<%@page import="sample.dao.MemberDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원목록조회/수정</title>
<!-- 아래 href의 주소는 애플리케이션 이름(context)를 기준으로 하는 절대 주소입니다. -->
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Layout.css?v=3">
<!-- el로 표기할 때에는 현재 페이지의 request를 가져와야 합니다.(pageContext.request) -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/MemberList.css?v=3">
</head>
<body>
	<header>
		<!-- header -->
	</header>
<hr>
<!-- request.getAttribute("list") 실행 + List<MemberDto> 타입 변환 + 출력 -->
<!-- 출력을 반복해서 테이블 tr 태그에 넣기 : jstl. 애트리뷰트(자바빈)은 자바for로는 못함. -->
<ul>	<!-- list 애트리뷰트는 컬렉션이므로 하나씩 가져와서 vo에 저장 -->
<c:forEach items="${list}" var="vo">
	<li>${vo}</li>
	
	<li>${vo.custno}</li>	<!-- vo.getCustno() -->
	<li>${vo.custname}</li>
	<li>${vo.phone}</li>
	<li>${vo.address}</li>
	<!-- 아래 코드는 없는 필드이므로 오류 -->
	<%-- <li>${vo.citycode}</li> --%>
</c:forEach>
</ul>
<hr>
</body>
</html>