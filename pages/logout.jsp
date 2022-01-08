<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<% 
session.removeAttribute("uaccount");

out.println("<SCRIPT>alert('完成登出！');");
    out.println("window.location='login.html'");
    out.println("</SCRIPT>");
%>
