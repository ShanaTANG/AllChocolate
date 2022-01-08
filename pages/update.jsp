<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>

<%
    

	
    sql = "UPDATE `member` SET `psw`='"+request.getParameter("psw")+"' WHERE `uaccount`='"+session.getAttribute("uaccount")+"'";
	con.createStatement().execute(sql);
	sql="UPDATE`member`SET`uname`='"+request.getParameter("uname")+"'WHERE `uaccount`='"+session.getAttribute("uaccount")+"'";
	con.createStatement().execute(sql);	
	sql = "UPDATE `member` SET `uphone`='"+request.getParameter("uphone")+"' WHERE `uaccount`='"+session.getAttribute("uaccount")+"'";
	con.createStatement().execute(sql);	
	sql = "UPDATE `member` SET `uadress`='"+request.getParameter("uadress")+"' WHERE `uaccount`='"+session.getAttribute("uaccount")+"'";
	con.createStatement().execute(sql);	
	sql = "UPDATE `member` SET `uaccount`='"+request.getParameter("uaccount")+"' WHERE `uaccount`='"+session.getAttribute("uaccount")+"'";
	con.createStatement().execute(sql);	
	con.close();//結束資料庫連結
	out.println("更新成功!! 請<a href='client1.jsp'>按此</a>回會員頁面!!");
	
	
		//con.close();//結束資料庫連結	
		//out.print("更新失敗!!!!");
	


%>
