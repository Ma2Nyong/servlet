<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<% // cookie를 만드는 방법은 담아서 reponse를 만들면 된다?
	Cookie cookie1 = new Cookie("userName", "john"); // cookie name (String) / cookie value (String)
	Cookie cookie2 = new Cookie("age", "32");
	
	response.addCookie(cookie1);
	response.addCookie(cookie2);
%>