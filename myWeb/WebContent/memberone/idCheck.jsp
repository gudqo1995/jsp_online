<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="memberone.StudentDAO"/>
<%
	String id = request.getParameter("id");
	boolean check = dao.idCheck(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 체크</title>
<link href="style.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript" src="script.js"></script>
</head>
<body bgcolor="#FFFFCC">
	<br>
	<center>
		<b><%=id %></b>
		<%
			if(check) out.println("은/는 이미 존재하는 ID 입니다.<br><br>");
			else out.println("은/는 사용 가능합니다!<br><br>");
		%>
		<a href="#" onClick="javascript:self.close()">닫기</a>
	</center>
</body>
</html>