<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	pageContext.setAttribute("one", "페이지");
	request.setAttribute("two", "리퀘스트");
	session.setAttribute("three", "세션2"); // 1.scopeB 로 보냈을경우 동일한 ID값을 가지고 있으면 write 한다.
	application.setAttribute("four", "애플리케이션2"); // 세션2와 애플리케이션2가 return 된다. 
%>

<c:redirect url='1.scopeB.jsp'/>