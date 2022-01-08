<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>addcar</title>
</head>
<body>
<%
if(session.getAttribute("uaccount") !=null && !session.getAttribute("uaccount").equals(""))
 {
try {
    Class.forName("com.mysql.jdbc.Driver");
    try {	
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {
			String b="",account="",f="";
			Integer zzz,kkk;
			f=request.getParameter("quantity");
			zzz=Integer.valueOf(f);
			Object id=session.getAttribute("id");
			Object c=session.getAttribute("uaccount");
			
				b=id.toString();
				account=c.toString();
			
			sql="use choco";
			con.createStatement().execute(sql);
			sql = "SELECT * FROM `product` WHERE `id`='"+ b +"'" ;
				ResultSet tmp =  con.createStatement().executeQuery(sql);                 
				tmp.next();
				int price = tmp.getInt(5)*zzz;		
					
				sql = "INSERT car(`uaccount`,`proid`,`proname`,`img`,`price`,`pronum`,`xx`) VALUES ('"+account+"','"+b+"','"+tmp.getString(2)+"','"+tmp.getString(3)+"',"+price+","+ f +",'1')" ;
				con.createStatement().execute(sql);
					
			
				
				
				out.println("<SCRIPT>alert('已加入購物車！');");
				out.println("window.location='allproduction.html'");
				out.println("</SCRIPT>");
				//response.sendRedirect("allproduction.html");
					con.close();
       }
    }
    catch (SQLException sExec) {
           out.println("SQL錯誤"+sExec.toString());
    }
}
catch (ClassNotFoundException err) {
   out.println("class錯誤"+err.toString());
}
}
		
else{
	out.println("<SCRIPT>alert('請先登入！');");
    out.println("window.location='login.html'");
    out.println("</SCRIPT>");
	//response.sendRedirect("login.html");
	//con.close();
	
}
%>
</body>
</html>
