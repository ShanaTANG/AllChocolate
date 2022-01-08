<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%
		
	try {
		Class.forName("com.mysql.jdbc.Driver");
		try {	
			String url="jdbc:mysql://localhost/?serverTimezone=UTC";
			String sql="",proid="";
			Connection con=DriverManager.getConnection(url,"root","1234");
			if(con.isClosed())
			out.println("連線建立失敗");
			else {
				sql="USE `choco`";
				con.createStatement().execute(sql);
				sql = "INSERT `product`(`name`,`img`,`content`,`price`,`figure`,`sub`,`num`) VALUES('"+request.getParameter("name")+"','"+request.getParameter("file")+"','"+request.getParameter("content")+"'," +request.getParameter("price")+",'dd','dd',"+ request.getParameter("num") + ")"; 
				con.createStatement().execute(sql);
			out.println("<SCRIPT>alert('完成新增！');");
			out.println("window.location='allproduction.html'");
			out.println("</SCRIPT>");
			   con.close();
			   
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