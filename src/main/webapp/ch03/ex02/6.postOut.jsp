<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%= request.getParameter("userName") %>

<!-- 
개발자 도구로 확인해보았을 때
get과 post의 공통점은 parameter가 headers에 저장된다.

request method 가 get 일때는
parameter는 query string으로써 url의 일부로 들어가며
request header에 저장되기에
Content-Type 값 자체가 없다.

request method 가 post 일때는
parameter를 request body안에 들어가며
Content-Type: application/x-www-form-urlencoded
 -->