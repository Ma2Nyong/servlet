<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%! // declaration 멤버변수를 선언하다.
	public int add(int num1, int num2) {
		return num1 + num2;
	}

	int num1 = 1;
%>
<%
	int num2 = 2;
%>
<%= num1 %> + <%= num2 %> = <%= add(num1, num2) %>