<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Venue by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>당신마켓</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<meta name="description" content="" />
		<meta name="keywords" content="" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<link rel="stylesheet" href="../assets/css/login.css" />
	</head>
	<body class="is-preload">
	<%
	String temp=request.getParameter("back");
	if(temp!=null && temp.equals("w")) 
		session .setAttribute("back","index.jsp");
	%>

		<!-- Header -->
			<header id="header">
				<a class="logo" href="index.html"> 당신마켓 </a>
				<nav>
					<a href="join.jsp">회원가입</a>
					<a href="#menu">메뉴</a>
				</nav>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="${pageContext.request.contextPath}">홈</a></li>
					<li><a href="${pageContext.request.contextPath}/product/buy.jsp">판매상품</a></li>
					<li><a href="${pageContext.request.contextPath}/sell.jsp">판매등록</a></li>
					<li><a href="${pageContext.request.contextPath}/community.jsp">커뮤니티</a></li>
					<li><a href="${pageContext.request.contextPath}/service.jsp">고객센터</a></li>
				</ul>
			</nav>
		<!-- sction -->
		
		<div class="row" >
			<form action="loginAction.jsp" method="post">
			
			<div class="col-6 col-12-medium">
			<span>"hi"</span>
			<img src="images/pic01.jpg" id="Login_page_side_image" alt="그냥 이미지">
			</div>
			<div class="box" style=" display:inline-grid; width: 32em; margin: 30rem auto 30rem auto; box-shadow: 6px 6px 10px lightblue; padding : 3rem">
			<h2 style="display:flex; justify-content: center; margin-top: 50px;">당신마켓</h2>
			<div class="col-6 col-12-medium">
				<div class="col-6 col-12-xsmall">
					<input type="text" name="demo-name" id="demo-name" placeholder="id" required="required">
				</div>
				<div class="col-6 col-12-xsmall">
				
				<input type="password" name="demo-password" id="demo-password" placeholder="password" style="margin-bottom: 30px;" required="required">
				</div>
				<button type="submit" class="button primary fit">Login</button>
			</div>
			</div>
			</form>
		</div>
		
		<!-- Footer -->
			<section id="footer">
				<div class="inner">
					<ul class="icons">
						<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon solid fa-map-marker-alt"><span class="label">Location</span></a></li>
						<li><a href="#" class="icon solid fa-phone"><span class="label">Phone</span></a></li>
						<li><a href="#" class="icon solid fa-envelope"><span class="label">Email</span></a></li>
					</ul>
				</div>
				<div class="copyright">
					&copy; Untitled. All rights reserved.
				</div>
			</section>
		
		<!-- Scripts -->
		<script type="text/javascript">
		  	console.log('${param.incorrect}')
		  	if('${param.incorrect}'==='y')
	  		document.getElementById('incorrect').style.display='inline-block'
		</script>
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>