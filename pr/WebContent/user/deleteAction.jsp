<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "user.UserDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = (String)session.getAttribute("userID");
		String pw = request.getParameter("userPassword");
		
		UserDAO udao = new UserDAO();
		int result = udao.userDelete(id, pw);
		if(result == 1){
			session.invalidate();
		 	PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('회원 탈퇴 되었습니다.')");
            script.println("location.href = '/pr/main.jsp'");    // 메인 페이지로 이동
            script.println("</script>");
		}else if(result == 0){
			PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('비밀번호가 일치하지 않습니다.')");
            script.println("history.back()");    
            script.println("</script>");
		}else{
			PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('db오류.')");
            script.println("</script>");
		}
	%>
</body>
</html>