<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<% // 덮어쓰기를 한다, cookie name 값을 동일하게 하면 자동으로 덮어쓰기가 된다.
	Cookie cookie = new Cookie("age", "34");
	response.addCookie(cookie);
%>