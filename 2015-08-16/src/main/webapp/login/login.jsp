<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登录页面</title>
</head>
<script type ="text/javascript">
	<%
	String msg = "";
	msg=(String)session.getAttribute("flag");
	if(msg!=null&&msg.equals("error"));{%>
		alert("你未登录，请先登录再操作");
	<%}%>
	
</script>
<body>
	<form action="<%= request.getContextPath()%>\LoginCheckServlet" method="post">
		用户名：<input type="text" name="cname">
		<input type="submit" name="submit" value="提交">
	</form>
</body>

</html>