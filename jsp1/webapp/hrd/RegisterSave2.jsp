<%@page import="sample.dto.MemberDto" %>
<%@page import="sample.dao.MemberDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="dto" class="sample.dto.MemberDto"/>
<jsp:setProperty property="*" name="dto"/>
<hr>
<jsp:setProperty property="custname" name="dto"/><br>
<jsp:setProperty property="phone" name="dto"/><br>
<jsp:setProperty property="address" name="dto"/><br>
<%
	out.print(dto);
	
	//파라미터 값으로 dto 객체 생성
	MemberDao dao = MemberDao.getMemberDao();
	dao.insert(dto);		//db 테이블에 반영된 것 확인하세요.
%>
<script type="text/javascript">
	alert('회원 등록이 완료되었습니다.')
	location.href='MemberList.jsp'
</script>