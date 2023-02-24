<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%
	pageContext.setAttribute("one", "페이지"); // null, 스콥이 현재페이지에 실행되는 동안,
	request.setAttribute("two", "리퀘스트"); // null, 하나의 작업이 실행되는 동안, reponse를 client에게 보내기 직전까지 존재한다.
	session.setAttribute("three", "세션"); // 세션, session을 종료하기 전까지 남아있다. 클라이언트와 서버가 논리적인 연결이 유지되는 동안.
	application.setAttribute("four", "애플리케이션"); // 애플리케이션, 앱이 시작하면 존재하고 종료하면 사라진다, 앱이 작동하는 동안,
%> <!-- 작업별로는 request, 유저 별로는 session이다 유저ID 가 대표적이다. -->
<!-- 제일 많이 사용하는것은 request 이다. n명이 사용하기에 짧게 짧게 사용하는것이 맞다.-->
<c:redirect url='1.scopeB.jsp'/>