<!DOCTYPE html>
<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>訂單查詢</title>
    <style>     @import "../assets/css/check.css";
   
    </style>
</head>


<body>
    <!------菜單------>
    <header class="header">
        <div class="ckeckboss">
            <ul class="flevbox">
                <li>
                    <p class="titlename">後台管理</p>
                </li>
                <li class="flex">
                    <ul class="flex-nav">
                        <li class="flexword"><a href="back1.html" style="color: white;text-decoration: none;">商品管理</a>
                        </li>
                        <li class="flexword"><a href="" style="color: white;text-decoration: none;">商品清單</a>
                        </li>
                        <li class="flexword"><a href="list1.jsp" style="color: white;text-decoration: none;">訂單查詢</a>
                        </li>
                        <li class="flexword"> <a href="logout.jsp" style="color: white;text-decoration: none;">登出帳號</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </header>

    <!------內容------>
    
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
				out.println("<main>");
				sql="SELECT* FROM`bus`" ;
				ResultSet rs=con.createStatement().executeQuery(sql);
				while(rs.next()){
					//uaccount=rs.getString(2);
					//name=rs.getString(3);
					//phone=rs.getString(4);
					//pay=rs.getString(5);
					//how=rs.getString(6);
					//how=rs.getString(8);
					//num=rs.getString(9);
					//price=rs.getString(10);
				

			out.println("<div class='ckeckboss'>");
            out.println("<ul class='checkbox1'>");
                
			out.println("<li class='checktext'>購買人帳號："+rs.getString(2)+"</li>");
            out.println("<li class='checktext'>購買人姓名："+rs.getString(3)+"</li>");
            out.println("<li class='checktext'>購買人電話："+rs.getString(4)+"</li>");
            out.println("<li class='checktext'>付款方式："+rs.getString(5)+"</li>");
            out.println("<li class='checktext'>運送方式："+rs.getString(6)+"</li>");
            out.println("<li>總件數："+rs.getString(9)+"</li>");
            out.println("<li>總價錢："+rs.getString(10)+"</li>");
				      
			out.println("</ul>");
            out.println("<hr>");
			out.println("</div>");
				}
			out.println("</main>");
		%>

	<%
				con.close();
			   out.println("<a href='back.html'>返回</a>") ;
			   //response.sendRedirect("");
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