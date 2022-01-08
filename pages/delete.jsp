<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
		String de=request.getParameter("delete");
        sql = "DELETE  FROM `car` WHERE `idcar`='"+de+"'";
		con.createStatement().execute(sql);
		response.sendRedirect("shoppingcar.jsp");  
%>