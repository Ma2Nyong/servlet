<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<ul>
	<li><%= request.getRequestURL() %><!-- 주소 -->
	<li><%= request.getProtocol() %> <!-- HTTP/1.1 -->
	<li><%= request.getServerName() %> <!-- localgost -->
	<li><%= request.getContextPath() %> <!-- /servlet -->
	<li><%= request.getRequestURI() %> <!-- /servlet/ch03/ex02/1.request.jsp -->
	<li><%= request.getQueryString() %> <!-- null -->
	<li><%= request.getMethod() %> <!-- GET -->
</ul>