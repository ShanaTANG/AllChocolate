<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>add</title>
</head>
<body>
<%
if(session.getAttribute("uaccount") !=null && !session.getAttribute("uaccount").equals(""))
 {
	try {
		Class.forName("com.mysql.jdbc.Driver");
		try {	
			String url="jdbc:mysql://localhost/?serverTimezone=UTC";
			String sql="",proid="";
			Connection con=DriverManager.getConnection(url,"root","1234");
			if(con.isClosed())
			out.println("連線建立失敗");
			else {
				sql="use choco";
				con.createStatement().execute(sql);
						   //out.println(request.getParameter("mcontent"));
						   //String new_name=request.getParameter("name".getBytes("ISO-8859-1"),"UTF-8");
				Object a=session.getAttribute("id");
				String id=a.toString();
				Object b=session.getAttribute("proname");
				String proname=b.toString();
				String new_content=new String(request.getParameter("mcontent"));
				
				
				
				//String star=new String(request.getParameter("star"));
								//String new_subject=new String(request.getParameter("subject").getBytes("ISO-8859-1"),"UTF-8");
								//java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
			   sql="INSERT board (`proname`,`mcontent`,`proid`) ";
			   sql+="VALUES ('"+proname+"',' ";
			   sql+=new_content+"','"+id+"') ";         
			   con.createStatement().execute(sql);
			  // out.println(star);
			   con.close();
			out.println("<SCRIPT>alert('感謝評價！');");
			out.println("window.location='allproduction.html'");
			out.println("</SCRIPT>");
			   //response.sendRedirect("allproduction.html");
				}
			}
		catch (SQLException sExec) {
			   out.println("SQL錯誤"+sExec.toString());
		}
		}
	catch (ClassNotFoundException err) {
	   out.println("class錯誤"+err.toString());
}
%>
</body>
</html>
<%
}
		
else{
	out.println("<SCRIPT>alert('請先登入！');");
    out.println("window.location='login.html'");
    out.println("</SCRIPT>");
	//response.sendRedirect("login.html");
	//con.close();
	
}
%>