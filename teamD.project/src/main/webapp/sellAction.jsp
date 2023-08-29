<%@page import="teamD.project.dao.MproductDao"%>
<%@page import="teamD.project.dto.MproductDto"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 처리기능 -->
<%
	String path = "D:\\iclass0419\\web_workspace\\teamD\\src\\main\\webapp\\projectJSP\\images";
	int size = 10*1024*1024;		//파일 전송 용량 최대 크기
	
	//파일업로드에서는 일반적인 request 가 아닌 MultipartRequest 를 사용합니다.
	//								--> 외부 라이브러리 필요합니다.
	MultipartRequest multiRequest = new MultipartRequest(
			request,						//원래의 요청 객체
			path,							//업로드 경로
			size,							//파일 최대 크기
			"UTF-8",						//파일명 인코딩
			new DefaultFileRenamePolicy()	//중복된 파일이름 변경 정책
			);
	
	String pname = multiRequest.getParameter("pname");
	String pcode = multiRequest.getParameter("pcode");
	String price = multiRequest.getParameter("price");
	String brand = multiRequest.getParameter("brand");
	String psize = multiRequest.getParameter("psize");
	String category = multiRequest.getParameter("category");
	//파일을 전송 받아 path 경로에 저장하고. 리턴은 받은 파일의 파일명
	
	MproductDto dto = new MproductDto(pname,
				Integer.parseInt(pcode),
				null,
				Integer.parseInt(price),
				brand,
				Integer.parseInt(psize),
				category,
				null,
				null);
	MproductDao dao = MproductDao.getInstance();
	
	int result = dao.insert(dto);
	
%>
<script type="text/javascript">
	alert('상품 등록이 완료 되었습니다.');
	location.href='productListAction.jsp';


</script>

</html>