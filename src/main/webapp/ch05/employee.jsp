<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='com.my.hr.service.EmployeeService,com.my.hr.service.EmployeeServiceImpl'%>
<%
	EmployeeService employeeService = new EmployeeServiceImpl();
%>

<%= employeeService.getEmployee(100) %>
