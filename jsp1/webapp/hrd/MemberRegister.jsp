<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 등록</title>
<link rel="stylesheet" href="../css/MemberRegister.css">
</head>
<body>
	<div class="header"></div>
<header>
	<h2>쇼핑몰 회원관리 ver 1.0</h2>
</header>
	<div class="nav"></div>
<nav>
		<ul>
			<li><a href="">회원등록</a></li>
			<li><a href="">회원목록조회/수정</a></li>
			<li><a href="">회원매출조회</a></li>
			<li><a href="">홈으로.</a></li>
		</ul>
</nav>
<section>
	<table style="height: 100%;">
		<h3>홈쇼핑 회원 등록</h3>
		<form action="RegisterSave.jsp" method="post">
		<tr>
				<td><label for="lblCustno">회원번호(자동발생)</label></td>
				<th><input type="text" name="custno"></input></th>
		</tr>
		<tr>		
				<td><label for="lblCustame">회원성명</label></td>
				<th><input type="text" name="custname"></input></th>
		</tr>	
		<tr>		
				<td><label for="lblPhone">회원전화</label></td>
				<th><input type="text" name="phone"></input></th>
		</tr>
		<tr>			
				<td><label for="lblAddress">회원주소</label></td>
				<th><input type="text" name="address"></input></th>
		</tr>
		<tr>		
				<td><label for="lblJoindate">가입일자</label></td>
				<th><input type="text" name="joindate"></input></th>
		</tr>
		<tr>		
				<td><label for="lblGrade">고객등급[A:VIP,B:일반,C:직원]</label></td>
				<th><input type="text" name="grade"></input></th>
		</tr>
		<tr>		
				<td><label for="lblCity">도시코드</label></td>
				<th><input type="text" name="city"></input></th>
		</tr>
		<tr>		
				<td><button>등록</button></td>
				<td><button>조회</button></td>
		</tr>
		</form>
	</table>
</section>
<footer>
		<h4>HRDKOREA Copyright &copy;2022 All rights reserved. Human Resources Development Service
			of Korea.</h4>
			</footer>
</body>
</html>