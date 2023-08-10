<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정</title>
<link rel="stylesheet" href="../css/Layout.css?v=3">
<link rel="stylesheet" href="../css/MemberUpdate.css?v=3">
</head>
<body>
<!-- 정보 수정 화면은 현재값을 먼저 보여주고 수정할 수 있게 합니다. custno 즉 PK 값으로
	 db에서 select한 결과를 화면에 표시하는 코드가 필요합니다. -->
<!-- MemberList.jsp에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 그리고 value에서 출력하기 -->

<header>	<!-- header -->
	<h2>쇼핑몰 회원관리 ver 1.0</h2>
</header>
<nav>	<!-- nav -->
		<ul>
			<li><a href="./MemberRegister.html">회원등록</a></li>
			<li><a href="./MemberList.html">회원목록조회/수정</a></li>
			<li><a href="./MemberSales.html">회원매출조회</a></li>
			<li><a href="./Layout.html">홈으로.</a></li>
		</ul>
</nav>
<section>
		<h3>홈쇼핑 회원 정보 수정</h3>
<!-- 이 예제는 ${}를 사용해서 값을 출력하고자 일반변수 dto로는 할 수 없으므로
	 자바빈을 만든 후에 자바빈 객체에 dto의 각 필드값을 전달한 것입니다.
	 => 매우 비효율적. 그래서 forward로 해결해 보겠습니다.
-->
	<jsp:useBean id="member" class="sample.dto.MemberDto"/>
<%
String custno = request.getParameter("custno");
MemberDao dao = MemberDao.getMemberDao();
MemberDto dto = null;
if(custno !=null) {
	dto = dao.selectOne(Integer.parseInt(custno));
	member.setCustname(dto.getCustname());
	member.setPhone(dto.getPhone());
	member.setAddress(dto.getAddress());
	member.setGrade(dto.getGrade());
	member.setCity(dto.getCity());
}
%>
<form action="UpdateSave.jsp" method="post">
<table>
		<tr>
			<td><label for="lblcustno">회원번호</label></td>
			<!-- param은 getParameter() 동작의 el에서 사용하는 객체입니다. -->
			<td><input type="number" id="lblno" value="${param.custno}"
				disabled="disabled"></input></td>
			<input type="hidden" name="customNo" value="${param.custno}">
		</tr>
		<tr>		
			<td><label for="lblcustame">회원성명</label></td>
			<td><input type="text" id="lblname" name="name" value="${member.custname}"></input></td>
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