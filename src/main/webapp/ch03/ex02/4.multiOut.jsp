<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<% // parameter 는 하나인데 value는 n개이다, 이럴땐 배열을 쓴다.
	String[] letters = request.getParameterValues("letter"); 
	String gender = request.getParameter("gender");
	String[] jobs = request.getParameterValues("job");
%>
<%-- 과제: letters를 iteration 해서 출력하라. --%>
<% 
	if(letters != null)
		for(String letter: letters) {
%>		
		<%= letter %>&nbsp;
<%			
	}
%> <br>

<%= gender %> <br>

<% 
	if(jobs != null)
		for(String job: jobs) {
%>

		<%= job %>&nbsp;
<%
		}
%>