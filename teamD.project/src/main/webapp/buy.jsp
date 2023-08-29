<%@page import="java.util.List"%>
<%@page import="teamD.project.dto.MproductDto"%>
<%@page import="teamD.project.dao.MproductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
MproductDao dao = MproductDao.getInstance();
MproductDto dto = new MproductDto();

List<MproductDto> list = dao.list();    

request.setAttribute("list", list);

request.getRequestDispatcher("buyView.jsp").forward(request, response);

%>