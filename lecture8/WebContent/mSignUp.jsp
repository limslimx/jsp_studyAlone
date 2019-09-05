<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
	String name;
	String password;
	String[] hobby;
%>

<%
	name = request.getParameter("m_name");
	password = request.getParameter("m_pass");
	hobby = request.getParameterValues("m_hobby");
%>
	name : <%=name %>
	password : <%=password %>
	hobby :
	<%
		for(int i=0;i<hobby.length;i++){
	%>
	<%=hobby[i] %>
	<%
		}
	%>
</body>
</html>