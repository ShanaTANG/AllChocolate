<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>
<%
if(session.getAttribute("uaccount") !=null && !session.getAttribute("uaccount").equals(""))
 {

 
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>購物車</title>
    <style>
        @import "../assets/css/shoppingcar.css";
        @import "../assets/css/index.css";
    </style>
</head>

<body>
    <!----置頂內容---->
    <header>
        <div id="top">
            <a href="../index.jsp" style="text-decoration: none" class="Chocolate">黑金 Chocolate</a>
        </div>
    </header>

    <main>
        <!----上方菜單---->
        <div class="menu">
            <ul>
                <li class="menu1">
                    <div class="dropdown">
                        <button class="dropbtn">商品分類</button>
                        <div class="dropdown-content">
                            <a href="allproduction.html#top">全部商品</a>
                            <a href="allproduction.html#alcohol">大人口味<br>(含酒)</a>
                            <a href="allproduction.html#childhood">童年回憶</a>
                            <a href="allproduction.html#festival">節慶活動<br>(送禮)</a>
                            <a href="allproduction.html#adult">成長滋味<br>(%數較高)</a>
                        </div>
                    </div>
                </li>
                <li class="menu1">
                    <div class="dropdown">
                        <button class="dropbtn">常見問題</button>
                        <div class="dropdown-content">
                            <a href="questions.html">Q&A</a>
                            <a href="how.html">如何挑選</a>
                        </div>
                    </div>
                </li>
                <li class="menu1"> <a href="member.html" style="text-decoration: none" class="menubtn">認識我們</a>

                </li>
                <li class="menu1">
                    <a href="client1.jsp" style="text-decoration: none;" class="menubtn">會員專區</a>
                </li>
                <li class="menu1">
                    <a href="login.html" style="text-decoration: none" class="menubtn">會員登錄/註冊</a>
                </li>
            </ul>
        </div>


        <!----購物車置底按鈕----
        <aside>
            <a href="shoppingcar.html">
                <img src="../assets/images/購物車1.jpg" class="shoppingcar">
            </a>
        </aside>
        <!----------搜尋框--------
        <div class="sbox">
            <div class="searchbox">
                <span class="icon"><a href=""><img src="../assets/images/搜尋.png"></a></span>
                <input type="search" id="search" placeholder="Search..." />
            </div>
        </div>

        <!----------購物車內頁--------->
        <div class="shopping_car">
            <div class="car1">
                <p class="car2">購 物 車</p>
				<%
				String account="",id="";
				Object c=session.getAttribute("uaccount");
				account=c.toString();
				Object idd=session.getAttribute("id");
				id=idd.toString();
				
					
					sql = "SELECT *FROM `car` WHERE `uaccount`='"+account+"'" ;
					ResultSet rs1 =  con.createStatement().executeQuery(sql);
					while(rs1.next())
					{		
						sql = "SELECT *FROM `product` WHERE `id`='"+rs1.getString(3)+"'" ;
						ResultSet rs =  con.createStatement().executeQuery(sql);
						if(rs.next())
					{
						Integer pronum=rs1.getInt("pronum");
						out.println("<div class='carhouse'>");
						out.println("<div class='car_picture'>");
						out.println(" <img src='../assets/images/"+rs1.getString(5)+"'alt=''width='350'>");
						out.println("</div>");
						out.println("<div class='car_content'>");
						out.println(" <p>"+rs1.getString(4)+"</p>");
						out.println(" <p>購買件數"+rs1.getString(7)+"</p>");
						out.println(" <p>價錢：NT"+rs1.getString(6)+"</p>");
						out.println(" <p>剩餘數量:"+rs.getInt(8)+"</p>");
						out.println("</div>");
						//out.println("<span class='car_x'><a href='' style='text-decoration:none;'>&times;</a></span>");
						out.println("<form action='delete.jsp'>");
						out.println("<input type='submit' value='刪除 'class='delete'>");
						out.println("<input type='hidden' name='delete' value='"+rs1.getString(1)+"' >");
						out.println("</form>");
						out.println("</div>");
					}
					}
				%>
					
               
               

                <input type="button" value="再去逛逛" onclick="location.href='../pages/allproduction.html#top';" class="car3">
                <input type="button" value="  結帳  " onclick="location.href='pay.jsp';" class="car4">
            </div>
        </div>


    </main>

    <!----置底內容---->
    <footer>
        <p>♥ 版權皆為黑金團隊所有 ♥</p>
    </footer>
</body>

</html>
<%
}
		
else{
	//con.close();
    out.println("<SCRIPT>alert('請先登入！');");
    out.println("window.location='login.html'");
    out.println("</SCRIPT>");
	//response.sendRedirect("login.html");
}
%>
