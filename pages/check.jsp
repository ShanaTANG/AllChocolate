<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%

if(request.getParameter("uaccount") !=null && !request.getParameter("uaccount").equals("") 
	&& request.getParameter("psw") != null && !request.getParameter("uaccount").equals(""))
{
	String uaccount=new String(request.getParameter("uaccount"));
	String psw=new String(request.getParameter("psw"));
	String a="0505",b="0929";
	if(uaccount.equals(a)&&psw.equals(b))
		{
			out.println("h");
			response.sendRedirect("back1.html");
		}
	else{
		sql = "SELECT * FROM `member` WHERE `uaccount`='" +request.getParameter("uaccount") + "'  AND `psw`='" + request.getParameter("psw") + "'"  ; 
		ResultSet rs =con.createStatement().executeQuery(sql);
    
		if(rs.next())
			{            
				session.setAttribute("uaccount",request.getParameter("uaccount"));
				//session.setAttribute("psw",request.getParameter("psw"));
				//session.setAttribute("uphone",request.getParameter("uphone"));
				con.close();//結束資料庫連結
				response.sendRedirect("client1.jsp") ;
				
			}
		else
			{
				con.close();//結束資料庫連結
				out.println("<SCRIPT>alert('密碼錯誤！請重新登入');");
				out.println("window.location='login.html'");
				out.println("</SCRIPT>");
				//out.println("密碼帳號不符 !! <a href='login.html'>按此</a>重新登入") ;
			}
		}
}
else
	response.sendRedirect("login.html");
	
%>
