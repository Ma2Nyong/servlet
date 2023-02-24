<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='5.main.jsp'>main</a>
<% //session 객체를 없앤다. logout을 하고 B로 이동하면 null값이 나온다.
	session.invalidate();
%>
