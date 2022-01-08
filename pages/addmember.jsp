
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>addmem</title>
</head>
<body>
<%
try {
    Class.forName("com.mysql.jdbc.Driver");
    try {
        String url="jdbc:mysql://localhost/?serverTimezone=UTC";
        String sql="";
        Connection con=DriverManager.getConnection(url,"root","1234");
        if(con.isClosed())
           out.println("連線建立失敗");
        else {  
			
		   sql="USE choco";
           con.createStatement().execute(sql);
           String uaccount=request.getParameter("uaccount");
		   String uname=request.getParameter("uname");
           String psw=request.getParameter("psw");
		   String uphone=request.getParameter("uphone");
		   String uadress=request.getParameter("uadress");
		   
           //有時間再新增會員加入時間java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());

           sql="INSERT member (`uaccount`, `psw`, `uname`, `uphone`,`uadress`) ";
           sql+="VALUES ( ";
		   sql+="'"+uaccount+"', ";
           sql+="'"+psw+"', ";
           sql+="'"+uname+"', ";
           sql+="'"+uphone+"', "; 
		   sql+="'"+uadress+"')";
           con.createStatement().execute(sql);
//Step 6: 關閉連線
           con.close();
//Step 5: 顯示結果 
          //直接顯示最新的資料
           response.sendRedirect("login.html");
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
