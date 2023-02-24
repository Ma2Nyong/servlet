<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<a href='main.html'>메인</a>
<% // cookie 삭제도 덮어쓰기로 한다. 덮어쓰기 후에 유효기간을 0 을 준다.
	Cookie cookie = new Cookie("age", "");
	cookie.setMaxAge(0); // 유효기간 설정 API.
	
	response.addCookie(cookie);
%>