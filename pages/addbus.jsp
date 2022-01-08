<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>addbus</title>
</head>
<body>
<%
if(session.getAttribute("uaccount") !=null && !session.getAttribute("uaccount").equals(""))
 {
	try {
		Class.forName("com.mysql.jdbc.Driver");
		try {	
			String url="jdbc:mysql://localhost/?serverTimezone=UTC";
			String sql="",proname="";
			Connection con=DriverManager.getConnection(url,"root","1234");
			if(con.isClosed())
			out.println("連線建立失敗");
			else {
				sql="use choco";
				con.createStatement().execute(sql);
				Object c=session.getAttribute("uaccount");
				String account="";
				account=c.toString();	   

			sql="SELECT SUM(price),SUM(pronum) FROM car WHERE uaccount = '"+account+"'";
			ResultSet rs1 =  con.createStatement().executeQuery(sql);                 
				rs1.next();
				int totoprice=rs1.getInt(1);
				int totonum=rs1.getInt(2);
				
				String uname=request.getParameter("uname");
				String uphone=request.getParameter("phone");
				String gmail=request.getParameter("pay");
				String uadress=request.getParameter("address");
				String say=request.getParameter("say");
					
				sql="INSERT bus (`uaccount`, `uname`, `phone`,`gmail`,`address`,`say`,`where`,`totonum`,`totoprice`)";
				   sql+="VALUES ( ";
				   sql+="'"+account+"', ";
				   sql+="'"+uname+"', ";
				   sql+="'"+uphone+"', ";
				   sql+="'"+gmail+"', "; 
				   sql+="'"+uadress+"','"+say+"','1',"+totonum+","+totoprice+")";
				con.createStatement().execute(sql);
				
				
			   
			
			sql="SELECT * FROM car WHERE uaccount = '"+account+"'";
			ResultSet rs2 =  con.createStatement().executeQuery(sql);
			while(rs2.next())
			{
				sql="SELECT *FROM car WHERE proid = '"+rs2.getString(3)+"'";
				ResultSet rs3 = con.createStatement().executeQuery(sql);
				rs3.next();
				
					sql="SELECT *FROM product WHERE id = '"+rs2.getString(3)+"'";
					ResultSet rs4 =  con.createStatement().executeQuery(sql);
					rs4.next();
					
						int r=rs3.getInt("pronum");
						int y=rs4.getInt("num");
						int z=y-r;
						sql="UPDATE product SET num="+z+" WHERE id='"+rs2.getString(3)+"'";
						con.createStatement().execute(sql);
					
				
			}
			
			out.println("<SCRIPT>alert('完成訂單！');");
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
<%
}
		
else{
	response.sendRedirect("login.html");
	//con.close();
	
}
%>