<%-- page directive --%>
<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<% //scriptlet 스크립트 조각, java언어로 작성된 script 조각이다.
	int num1 = 1;
	int num2 = 2;
%>
<h2>더하기</h2>
<%= num1 %> + <%= num2 %> = <%= num1 + num2 %> <%-- expresion, html 문서에 java를 쓰고싶다. --%>
