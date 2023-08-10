<%@page import="sample.dto.MemberDto"%>
<%@page import="sample.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 수정</title>
<link rel="stylesheet" href="../Layout.css?v=3">
<link rel="stylesheet" href="../MemberUpdate.css?v=3">
</head>
<body>
<!-- 정보 수정 화면은 현재값을 먼저 보여주고 수정할 수 있게 합니다. custno 즉 PK 값으로
	 db에서 select한 결과를 화면에 표시하는 코드가 필요합니다. -->
<!-- MemberList.jsp에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 그리고 value에서 출력하기 -->
<%
String custno = request.getParameter("custno");
MemberDao dao = MemberDao.getMemberDao();
MemberDto dto = null;
if(custno !=null)	/* 수정할 데이터를 가져오기. (참고:custno가 테이블 PK 값) */
	dto = dao.selectOne(Integer.parseInt(custno));
%>

<header>	<!-- header -->
	<h2>쇼핑몰 회원관리 ver 1.0</h2>
</header>
<nav>	<!-- nav -->
		<ul>
			<li><a href="MemberRegister.html">회원등록</a></li>
			<li><a href="MemberList.html">회원목록조회/수정</a></li>
			<li><a href="">회원매출조회</a></li>
			<li><a href="">홈으로.</a></li>
		</ul>
</nav>
<section>
		<h3>홈쇼핑 회원 정보 수정</h3>
<!-- action은 input 데이터를 전달받고 처리할 url입니다.
	 MemberSave.jsp를 만드세요. 그리고 전달받은 파라미터로 update 실행하도록 하세요.
	 		ㄴ 이 파일에는 자바코드만 작성하고 태그는 필요 없습니다.
	 MemberUpdate.jsp에서 보내는 파라미터 이름은 input 태그의 name 속성입니다.
	 -->
<form action="UpdateSave.jsp" method="post">
<table>
		<tr>
				<td><label for="lblcustno">회원번호</label></td>
				<!-- MemberList.jsp에서 보낸 파라미터를 받아 custno 변수에 저장합니다. 그리고 value에서 출력하기 -->
				<th><input type="number" id="lblno" value=<%= custno %> disabled="disabled"></input></th>
				<input type="hidden" name="customNo" value="<%= custno %>">
				<!-- disabled로 설정된 것은 파라미터 전달이 안 됩니다. readonly로 바꾸세요. -->
		</tr>
		<tr>		
				<td><label for="lblcustame">회원성명</label></td>
				<th><input type="text" id="lblname" name="name" value="<%= dto.getCustname() %>"></input></th>
		</tr>	
		<tr>		
				<td><label for="lblphone">회원전화</label></td>
				<th><input type="text" id="lblphone" name="phone" value="<%= dto.getPhone() %>"></input></th>
		</tr>
		<tr>			
				<td><label for="lbladdr">회원주소</label></td>
				<th><input type="text" id="lbladdr" name="address" value="<%= dto.getAddress() %>"></input></th>
		</tr>
		<tr>		
				<td><label for="lbljoindate">가입일자</label></td>
				<th><input type="text" name="joindate"></input></th>
		</tr>
		<tr>		
				<td><label for="lblgrade">고객등급[A:VIP,B:일반,C:직원]</label></td>
				<th><input type="lblgrade" name="grade" value="<%= dto.getGrade() %>"></input></th>
		</tr>
		<tr>		
				<td><label for="lblcity">도시코드</label></td>
				<th><input type="lblcity" name="city" value="<%= dto.getCity() %>"></input></th>
		</tr>
		<tr>
			<td colspan="2">
				<button>수정</button>
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