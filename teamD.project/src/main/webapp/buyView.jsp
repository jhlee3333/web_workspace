<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body class="is-preload">

		<!-- Header -->
			<header id="header">
				<a class="logo" href="index.html">당신마켓 <span>by koreait.project.teamD</span></a>
				<nav>
					<a href="login.jsp">로그인</a>
					<a href="join.jsp">회원가입</a>
					<a href="#menu">메뉴</a>
				</nav>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="index.jsp">홈</a></li>
					<li><a href="buy.jsp">판매상품</a></li>
					<li><a href="sell.jsp">판매등록</a></li>
					<li><a href="community.jsp">커뮤니티</a></li>
					<li><a href="service.jsp">고객센터</a></li>
				</ul>
			</nav>
		<!-- section -->
         <section id="two" class="wrapper style1">
            <div class="inner">
               <header class="heading major">
                  <h2>판매 상품</h2>
               </header>
               <div class="spotlights">
                  	<c:forEach var="dto" items = "${list }">
                  <div class="spotlight">
                     <article>
                        <a href="#" class="image fit"><img src="images/${dto.pname}.png" alt="" /></a>
                        <div class="content">
                           <h3><c:out value="${dto.pname }" /></h3>
                           <p><c:out value="${dto.brand }" /></p>
                           <p><c:out value="${dto.price }" /></p>
                           <p><c:out value="${dto.psize }" /></p>
                           <ul class="actions special">
                              <li><a href="#" class="button primary">구매하기</a></li>
                           </ul>
                        </div>
                     </article>
                  </div>
             </c:forEach>
               </div>
            </div>
         </section>

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
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>