<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//메소드 방식이 post일 때는 인코딩이 꼭 필요합니다.
	request.setCharacterEncoding("UTF-8");
	String cusnto = request.getParameter("custno");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
	String grade = request.getParameter("grade");
	String citycode = request.getParameter("citycode");
	
	
%>