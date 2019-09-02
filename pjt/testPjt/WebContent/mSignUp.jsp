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
		String m_name;
		String m_passwd;
		String[] m_hobby;
	%>
	
	<%
		m_name = request.getParameter("m_name");
		m_passwd = request.getParameter("m_passwd");
		m_hobby = request.getParameterValues("m_hobby");
	%>
	
	m_name: <%=m_name %><br>
	m_passwd: <%=m_passwd %><br>
	m_hobby:
	<%
		for(int i=0;i<m_hobby.length;i++){
	%>
	<%=m_hobby[i] %>
	<%} %>
</body>
</html>