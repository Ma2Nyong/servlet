<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='com.my.hr.service.TodayService,com.my.hr.service.TodayServiceImpl'%>
<%
	TodayService todayService = new TodayServiceImpl();
%>

<%= todayService.getToday() %>
