<%@page import="User.userDAO"%>
<%@page import="User.iuserDAO"%>
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
String id = request.getParameter("id");
String email = request.getParameter("email");

System.out.println("af id:" + id);
System.out.println("af email:" + email);


iuserDAO dao = userDAO.getInstance();
String finded_pw = dao.findPw(id, email);

boolean isS = false;
String find_mg = "";

if(finded_pw==null){
	find_mg = "정보를 다시 확인해 주세요";
}else{
	isS = dao.pwd_send_email(id, email, finded_pw);
	find_mg = "가입시 입력된 메일로 발송 되었습니다";
}


if(isS){
%>
<script type="text/javascript">
</script>
<%=find_mg %>
<%	}else{	%>
alert("메일 발송 실패")
<%	}	%>

</body>
</html>