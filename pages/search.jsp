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
				
				//String proname=new String(request.getParameter("search"));
				sql="USE `choco`";
				con.createStatement().execute(sql);
				
				sql = "SELECT * FROM `product` WHERE `name`='" +request.getParameter("name") + "'"  ; 
				ResultSet rs =con.createStatement().executeQuery(sql);

			   
			   
			   if(rs.next())
			{           
				sql = "SELECT * FROM `product` WHERE `name`='" +request.getParameter("search") + "'"  ; 
				ResultSet rs1 =con.createStatement().executeQuery(sql);
				rs1.next();
				String searchid=rs1.getString("id");
				session.setAttribute("id",searchid);
				//out.println("<SCRIPT>alert('完！');");
				//out.println("window.location=''");
				//out.println("</SCRIPT>");
				response.sendRedirect("product.jsp") ;
				}
			}
		else
			{
				con.close();//結束資料庫連結
				out.println("找不到喔!") ;
			}
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