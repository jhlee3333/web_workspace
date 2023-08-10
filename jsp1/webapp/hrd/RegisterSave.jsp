<%@ page import="sample.dto.MemberDto" %>
<%@ page import="sample.dao.MemberDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%    
    // 파라미터 가져오기
    request.setCharacterEncoding("UTF-8");		//UTF-8 불러오기

	String temp = request.getParameter("custno");
	
	String name = request.getParameter("custname");
	
	String phone = request.getParameter("phone");
	
	String address = request.getParameter("address");
	
	String joindate = request.getParameter("joindate");
	
	String grade = request.getParameter("grade");
	
	String city = request.getParameter("city");
    
    
	MemberDao dao = MemberDao.getMemberDao();
	int custno=0;		//custno는 int이므로 이렇게 한다.
	if(temp !=null)
		custno = Integer.parseInt(temp);
	MemberDto dto = new MemberDto(custno,name,phone,address,null,grade,city);
	//joindate는 string이 아닌 date이므로 null로 퉁친다.
	dao.insert(dto);		// db 테이블에 반영된 것 확인하세요.
%>