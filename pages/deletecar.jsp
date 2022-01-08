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
			//zzz=f.toInt();
			Object id=session.getAttribute("id");
			Object c=session.getAttribute("uaccount");
				b=id.toString();
				account=c.toString();
			
			sql="use choco";
			con.createStatement().execute(sql);
			sql = "SELECT *FROM `product` WHERE `id`='"+b+"'" ;
			ResultSet tmp =  con.createStatement().executeQuery(sql);
				while(tmp.next())
					{		

				sql = "INSERT car(`uaccount`,`proid`,`proname`,`img`,`price`,`pronum`,`xx`) VALUES ('"+account+"','"+b+"','"+tmp.getString(2)+"','"+tmp.getString(3)+"','"+tmp.getString(5)+"',"+f+",'1')" ;
				con.createStatement().execute(sql);
					
					}
				sql = "SELECT *FROM `car` WHERE `proid`='"+b+"'" ;
				ResultSet rs1 =  con.createStatement().executeQuery(sql);
				while(rs1.next())
				{
					Integer hh=rs1.getInt("price");
					Integer kk=rs1.getInt("pronum");
					zzz=hh*kk;
					sql = "UPDATE `car` SET `price`='"+zzz+"' WHERE `proid`='"+b+"'" ;
					con.createStatement().executeUpdate(sql);
					
					
				}
			
			//out.println("<SCRIPT LANGUAGE ='JavaScript'>");
			//out.println("alert('已加入購物車!':location.href='pro"+b+".jsp';)");
			//out.println("history.back");
			//out.println("</SCRIPT>");
				response.sendRedirect("allproduction.html");
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
	response.sendRedirect("login.html");
	//con.close();
	
}
%>
</body>
</html>
