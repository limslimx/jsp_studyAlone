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
	String adminId;
	String adminPw;
	
	String imgDir;
	String testServerIP;
	String realServerIP;
	
	String connectedIP;
	String connectedUser;
%>

<%
	adminId = config.getInitParameter("adminId");
	adminPw = config.getInitParameter("adminPw");
%>

<%
	application.setAttribute("connectedIP", "165.62.58.23");
	application.setAttribute("connectedUser", "hong");
%>

<p>adminId: <%=adminId %></p>
<p>adminPw: <%=adminPw %></p>

<%
	imgDir = application.getInitParameter("imgDir");
	testServerIP = application.getInitParameter("testServerIP");
	realServerIP = application.getInitParameter("realServerIP");	
%>

<p>imgDir: <%=imgDir %></p>
<p>testServerIP: <%=testServerIP %></p>
<p>realServerIP: <%=realServerIP %></p>

<%
	connectedIP = (String)application.getAttribute("connectedIP");
	connectedUser = (String)application.getAttribute("connectedUser");
%>

<p>connectedIP: <%=connectedIP %></p>
<p>connectedUser: <%=connectedUser %></p>

<%
	out.print("<h1>Hello World</h1>");
%>
</body>
</html>