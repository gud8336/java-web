<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<%
            session.invalidate(); // 세션값 제거
	%>
	<script>
            location.href = '/pr/main.jsp'; 
	</script>
</body>
</html>