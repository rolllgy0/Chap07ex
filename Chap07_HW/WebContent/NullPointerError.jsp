<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>의도된 에러 페이지</title>
</head>
<body>
<%
	try{
		String nullString = null;
%>
	<%=nullString.length() %>
<%
	}catch(NullPointerException e) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("NullPointerExceptionHandling.jsp");
		dispatcher.forward(request, response);
	}
%>
</body>
</html>