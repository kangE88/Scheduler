<<<<<<< HEAD
<%@page import="User.userDAO"%>
<%@page import="User.iuserDAO"%>
<%@page import="User.userDTO"%>


=======
<%@page import="User.userDTO"%>
<%@page import="User.userDAO"%>
<%@page import="User.iuserDAO"%>
>>>>>>> a2fec2cc6ee2aa098b00676840e756e1c2c8fbc4
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String id = request.getParameter("input_id");
String pw = request.getParameter("input_pw");
<<<<<<< HEAD
String save_login = request.getParameter("save_login");



iuserDAO dao = userDAO.getInstance();
userDTO user = dao.login(new userDTO(0, id, pw, null, null, null, null, 0));
System.out.println("save_login: " + save_login);
=======

iuserDAO dao = userDAO.getInstance();
userDTO user = dao.login(new userDTO(0, id, pw, null, null, null, null, 0));
>>>>>>> a2fec2cc6ee2aa098b00676840e756e1c2c8fbc4

if(user != null && !user.getId().equals("")){
	session.setAttribute("login", user);
	session.setMaxInactiveInterval(30*60);
%>
	<script type="text/javascript">
	alert("어서오세요<%=user.getId()%>님");
<<<<<<< HEAD
	
=======
	location.href = "../NewFile.jsp";
>>>>>>> a2fec2cc6ee2aa098b00676840e756e1c2c8fbc4
	<%
	session.setAttribute("login", user);
	%>
	
<<<<<<< HEAD
	<%
	if(save_login != null){
	%>
	alert("if문탔니?");
	<%
	Cookie cookie = new Cookie("loginCookie",user.getId());
	cookie.setPath("/");
	cookie.setMaxAge(60*60*6);
	response.addCookie(cookie);
	
	System.out.println(cookie.getValue());
	}
	%>
	
	location.href = "../NewFile.jsp";
	</script>
	
=======
	</script>

>>>>>>> a2fec2cc6ee2aa098b00676840e756e1c2c8fbc4

<%	}else{	%>
	<script type="text/javascript">
	alert("아이디와 패스워드를 확인해주세요");
	location.href = "login.jsp";
	</script>
<%	}	%>


</body>
</html>