<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>
 
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>結帳</title>
    <style>
        @import "../assets/css/index.css";
        @import "../assets/css/pay.css";
    </style>
</head>

<body>

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


            <!----購物車置底按鈕---->
            <aside>
                <a href="shoppingcar.jsp">
                    <img src="../assets/images/購物車1.jpg" class="shoppingcar">
                </a>
            </aside>
            <!----------搜尋框---------
            <div class="sbox">
                <div class="searchbox">
                    <span class="icon"><a href=""><img src="../assets/images/搜尋.png"></a></span>
                    <input type="search" id="search" placeholder="Search..." />
                </div>
            </div--->

            <div class="paybox"> vb

                <p class="paytitle">結帳</p>

                <div class="paycontainer">

			<%
				String b="",d="";
				Object a=session.getAttribute("uaccount");
				Object id=session.getAttribute("id");
				d=id.toString();
				b=a.toString();
				
				sql="SELECT SUM(price),SUM(pronum) FROM car WHERE uaccount = '"+b+"'";
			ResultSet rs1 =  con.createStatement().executeQuery(sql);                 
				rs1.next();
				int totoprice=rs1.getInt(1);
				int totonum=rs1.getInt(2);
				
				

			%>
				
                    <!--<div class="paycheck">
                        <input type="checkbox" value="1" name="" class="checkbox"><b class="checkboxword">和會員資料相同</b>
					</div>-->
                    <form action="addbus.jsp">
						<label for="text" class="logintext"><b>商品件數：<%=totonum%></b></label><br />
						<label for="text" class="logintext"><b>總金額：<%=totoprice%></b></label><br />
                    <label for="uname" class="logintext"><b>訂購人姓名：</b></label>
                    <input type="text" placeholder="請打本名" name="uname" required class="payinput1"><br />

                    <label for="phone" class="logintext"><b>訂購人手機號碼：</b></label>
                    <input type="text" placeholder="" name="phone" required class="payinput1"><br />

                    <label for="gmail" class="logintext"><b>付款方式：</b></label>
                    <input type="text" placeholder="" name="pay" required class="payinput1"><br />

                    <label for="address" class="logintext"><b>運送方式：</b></label>
                    <input type="text" placeholder="" name="address" required class="payinput1"><br />
					
                    <!--<label for="psw" class="logintext"><b>寄送方式：</b></label>
                    <select size="1" name="where" class="paywhere">
                        <option>宅配</option>
                        <option>7-11</option>
                        <option>全家</option>
                        <option>OK</option>
                        <option>萊爾富</option>
                    </select></br>-->

                    <label for="say" class="logintext"><b>備註：</b></label><br />
                    <textarea name="say" cols="40" rows="5" wrap="hard" class="saybox"></textarea><br />

                    <label for="where" class="logintext"><b>知道隱藏版商品嗎：</b></label>
                    <select size="1" name="where" class="paywhere">
                        <option>知道</option>
                        <option>不知道</option>
                        <option>公鯊小</option>
                    </select></br>
					
				
                </div>
                <input type="button" value="   返回   " onclick="location.href='shoppingcar.jsp';" class="pay2">
                <input type="submit" value="確認送出" class="pay">

				</form>
	
            </div>


            <!----置底內容---->
            <footer>
                <p>♥ 版權皆為黑金團隊所有 ♥</p>
            </footer>
    </body>

</body>

</html>