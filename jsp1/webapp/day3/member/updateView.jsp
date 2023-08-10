<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정</title>
<link rel="stylesheet" href="../../css/Layout.css?v=3">
<link rel="stylesheet" href="../../css/MemberUpdate.css?v=3">
</head>
<body>
<header>	<!-- header -->
	<h2>쇼핑몰 회원관리 ver 1.0</h2>
</header>
<nav>	<!-- nav -->
		<ul>
			<li><a href="MemberRegister.html">회원등록</a></li>
			<li><a href="MemberList.html">회원목록조회/수정</a></li>
			<li><a href="MemberSales.html">회원매출조회</a></li>
			<li><a href="Layout.html">홈으로.</a></li>
		</ul>
</nav>
<section>
		<h3>홈쇼핑 회원 정보 수정</h3>
<!-- el을 ${}을 쓰면 getAttribute() 역할을 합니다. -->
<%-- <jsp:useBean id="member" class="sample.dto.MemberDto" scope="request"/> --%>
<form action="UpdateSave.jsp" method="post">
<table>
		<tr>
			<td><label for="lblcustno">회원번호</label></td>
			<!-- param은 getParameter() 동작의 el에서 사용하는 객체입니다. -->
			<td><input type="number" id="lblno" value="${param.custno}"
				></input></td>
			<td><input type="hidden" name="custno" value="${param.custno}"></td>
		</tr>
		<tr>		
			<td><label for="lblcustame">회원성명</label></td>
			<td><input type="text" id="lblname" name="custname" value="${member.custname}"></input></td>
		</tr>	
		<tr>		
			<td><label for="lblphone">회원전화</label></td>
			<td><input type="text" id="lblphone" name="phone" value="${member.phone}"></input></td>
		</tr>
		<tr>			
			<td><label for="lbladdr">회원주소</label></td>
			<td><input type="text" id="lbladdr" name="address" value="${member.address}"></input></td>
		</tr>
		<tr>		
			<td><label for="lbljoin">가입일자</label></td>
			<td><input type="text" id="lbljoin" name="joindate" value="${member.joindate}"></input></td>
		</tr>
		<tr>		
			<td><label for="lblgrade">고객등급[A:VIP,B:일반,C:직원]</label></td>
			<td><input type="text" id="lblgrade" name="grade" value="${member.grade}"></input></td>
		</tr>
		<tr>		
			<td><label for="lblcity">도시코드</label></td>
			<td><input type="text" id="lblcity" name="city" value="${member.city}"></input></td>
		</tr>
		<tr>
			<td colspan="2">
				<button>수정</button>
				<button>조회</button>
		</tr>
	</table>
	</form>
</section>
<footer>
		<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human Resources Development Service
			of Korea.</h4>
			</footer>
</body>
</html>