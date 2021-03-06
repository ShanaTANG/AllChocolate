<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>
<%
if(session.getAttribute("uaccount") !=null && !session.getAttribute("uaccount").equals(""))
 {
%>
<html lang="en">
<%
if(session.getAttribute("uaccount") != null ){
    sql = "SELECT * FROM `member` WHERE `uaccount`='" +session.getAttribute("uaccount")+"';"; 
	ResultSet rs =con.createStatement().executeQuery(sql);
	String uaccount="", psw="",uname="",uphone="",uadress="";
	while(rs.next()){
	    uaccount=rs.getString("uaccount");
		psw=rs.getString("psw");
		
		uphone=rs.getString("uphone");
		uadress=rs.getString("uadress");
	}
    con.close();//結束資料庫連結
%>


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員專區</title>
    <style>
        @import "../assets/css/index.css";
        @import "../assets/css/client.css";
    </style>
</head>

<body>
    <!----置頂內容---->
    <header>
        <div id="top">
            <a href="../index.html" style="text-decoration: none" class="Chocolate">黑金 Chocolate</a>
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
                            <a href="">Q&A</a>
                            <a href="">如何挑選</a>
                        </div>
                    </div>
                </li>
                <li class="menu1"> <a href="member.html" style="text-decoration: none" class="menubtn">認識我們</a>

                </li>
                <li class="menu1">
                    <a href="client.html" style="text-decoration: none;" class="menubtn">會員專區</a>
                </li>
                <li class="menu1">
                    <a href="login.html" style="text-decoration: none" class="menubtn">會員登錄/註冊</a>
                </li>
            </ul>
        </div>


        <main>
            <div class="clientbox">
                <div class="client1">
                    <p class="client2">會 員 專 區</p>
                    <div class="clienttextbox">
                        <label for="uname" class="clienttext"><b>姓名 Name：</b></label>
                        <input type="text" placeholder="<%=uname%>" name="uname" required class="clientunformation"> <br />

                        <label for="uphone" class="clienttext"><b>電話 Phone：</b></label>
                        <input type="text" placeholder="<%=uphone%>" name="uphone" required
                            class="clientunformation"><br />

                        <label for="uadress" class="clienttext"><b>地址 Adress：</b></label>
                        <input type="text" placeholder="<%=uadress%>" name="uadress" required
                            class="clientunformation"><br />

                        <label for="uaccount" class="clienttext"><b>帳號 Account：</b></label>
                        <input type="text" placeholder="<%=uaccount%>" name="uaccount" required
                            class="clientunformation"><br />

                        <label for="psw" class="clienttext"><b>密碼 Password：</b></label>
                        <input type="password" placeholder="<%=psw%>" name="psw" required class="clientunformation"><br />

                        <label for="psw" class="clienttext"><b>再次確認密碼：</b></label>


                        <input type="password" placeholder="再次確認密碼 " name="psw" required
                            class="clientunformation"><br />
                        <input type="button" value="更改資料" onclick="location.href='';" class="cbutton1">
                        <input type="button" value="  登出  " onclick="location.href='';" class="cbutton2"></div>

        </main>

        <!----------搜尋框--------->
        <div class="sbox">
            <div class="searchbox">
                <span class="icon"><a href=""><img src="../assets/images/搜尋.png"></a></span>
                <input type="search" id="search" placeholder="Search..." />
            </div>
        </div>

        <!----購物車置底按鈕---->
        <aside>
            <a href="shoppingcar.html">
                <img src="../assets/images/購物車1.jpg" class="shoppingcar">
            </a>
        </aside>
        <!----置底內容---->
        <footer>
            <p>♥ 版權皆為黑金團隊所有 ♥</p>
        </footer>
</body>

</html>
<%
}
else{
	con.close();
	}
%>
<%

session.setAttribute("uaccount",request.getParameter("uaccount"));
		con.close();//結束資料庫連結
 }
		
else{
	con.close();
	response.sendRedirect("pro3.jsp");
}
%>