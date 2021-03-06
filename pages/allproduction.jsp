<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="config.jsp"%>
<%
if(session.getAttribute("uaccount") !=null && !session.getAttribute("uaccount").equals(""))
 {
%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>全部商品</title>
    <style>
        @import "../assets/css/index.css";
        @import "../assets/css/login.css";
        @import "../assets/css/allproduction.css";
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
                    <a href="client1.jsp" style="text-decoration: none;" class="menubtn">會員專區</a>
                </li>
                <li class="menu1">
                    <a href="login.html" style="text-decoration: none" class="menubtn">會員登錄/註冊</a>
                </li>
            </ul>
        </div>


        <!----------搜尋框--------->
        <div class="sbox">
            <div class="searchbox">
                <span class="icon"><a href=""><img src="../assets/images/搜尋.png"></a></span>
                <input type="search" id="search" placeholder="Search..." />
            </div>
        </div>

        <!----購物車置底按鈕---->
        <aside>
            <a href="shoppingcar.jsp">
                <img src="../assets/images/購物車1.jpg" class="shoppingcar">
            </a>
        </aside>

        <!------------商品架構--------------->
        <!----酒心巧克力---->
        <div id="alcohol">
            <div class="head1">
                <div>大人口味(酒心巧克力)</div>
            </div>
        </div>
        <div class="content">
            <div class="box">
                <a href="pro1.jsp" style="text-decoration:none">
                    <div class="title">
                        <img src="../assets/images/酒心1.png" class="picture">
                    </div>
                    <div class="chocolate_word1">芬蘭Fazer伏特加酒心巧克力</div>
                </a>
            </div>

            <div class="box">
                <a href="pro2.jsp" style="text-decoration:none">
                    <div class="title">
                        <img src="../assets/images/酒心2.png" class="picture">
                    </div>
                    <div class="chocolate_word1">義大利萊卡Laica綜合酒心巧克力</div>
                </a>
            </div>

            <div class="box">
                <a href="pro31.jsp" style="text-decoration:none">
                    <div class="title">
                        <img src="../assets/images/酒心3.png" class="picture">
                    </div>
                    <div class="chocolate_word1">The CHOYA梅酒酒瓶造型黑巧克力</div>
                </a>
            </div>
        </div>

        <!----童年巧克力---->
        <div id="childhood">
            <div class="head2">
                <div>童年巧克力</div>
            </div>
        </div>
        <div class="content">
            <div class="box">
                <a href="pro4.jsp" style="text-decoration:none">
                    <div class="title">
                        <img src="../assets/images/童年1.png">
                    </div>
                    <div class="chocolate_word">SNEAKER巧克力</div>
                </a>
            </div>

            <div class="box">
                <a href="pro5.jsp" style="text-decoration:none">
                    <div class="title">
                        <img src="../assets/images/童年2.png">
                    </div>
                    <div class="chocolate_word">M&M巧克力</div>
                </a>
            </div>

            <div class="box">
                <a href="pro6.jsp" style="text-decoration:none">
                    <div class="title">
                        <img src="../assets/images/童年3.png">
                    </div>
                    <div class="chocolate_word">義美QQ巧克力球</div>
                </a>
            </div>


            <div class="content2">
                <div class="box">
                    <a href="pro7.jsp" style="text-decoration:none">
                        <div class="title">
                            <img src="../assets/images/童年4.png">
                        </div>
                        <div class="chocolate_word">大波露巧克力

                        </div>
                    </a>
                </div>

                <div class="box">
                    <a href="pro8.jsp" style="text-decoration:none">
                        <div class="title">
                            <img src="../assets/images/童年5.png">
                        </div>
                        <div class="chocolate_word">健達繽紛樂</div>
                    </a>
                </div>

                <div class="box">
                    <a href="pro9.jsp" style="text-decoration:none">
                        <div class="title">
                            <img src="../assets/images/童年6.png">
                        </div>
                        <div class="chocolate_word">77乳加巧克力</div>
                    </a>
                </div>
            </div>

            <!----節慶巧克力---->
            <div id="festival">
                <div class="head3">
                    <div>節慶巧克力</div>
                </div>
            </div>
            <div class="content">
                <div class="box">
                    <a href="pro10.jsp" style="text-decoration:none">
                        <div class="title">
                            <img src="../assets/images/節1.jpg">
                        </div>
                        <div class="chocolate_word">OREO巧克力夾心蛋</div>
                    </a>
                </div>


                <div class="box">
                    <a href="pro11.jsp" style="text-decoration:none">
                        <div class="title">
                            <img src="../assets/images/節2.jpg">
                        </div>
                        <div class="chocolate_word">巨蛋金莎</div>
                    </a>
                </div>

                <div class="box">
                    <a href="pro12.jsp" style="text-decoration:none">
                        <div class="title">
                            <img src="../assets/images/節3.png">
                        </div>
                        <div class="chocolate_word">萬聖節南瓜巧克力</div>
                    </a>
                </div>
            </div>

            <!----成長滋味(%數較高)---->
            <div id="adult">
                <div class="head4">
                    <div>成長滋味(%數較高)</div>
                </div>
            </div>
            <div class="content">
                <div class="box">
                    <a href="pro13.jsp" style="text-decoration:none">
                        <div class="title">
                            <img src="../assets/images/苦1.png">
                        </div>
                        <div class="chocolate_word1">歐維氏72％醇黑巧克力</div>
                    </a>
                </div>

                <div class="box">
                    <a href="pro14.jsp" style="text-decoration:none">
                        <div class="title">
                            <img src="../assets/images/苦2.png">
                        </div>
                        <div class="chocolate_word1">歐維氏85％醇黑巧克力</div>
                    </a>
                </div>

                <div class="box">
                    <a href="pro15.jsp" style="text-decoration:none">
                        <div class="title">
                            <img src="../assets/images/苦3.png">
                        </div>
                        <div class="chocolate_word1">CACAO 86%黑巧克力</div>
                    </a>
                </div>
            </div>

            <div class="content3">
                <div class="box">
                    <a href="pro16.jsp" style="text-decoration:none">
                        <div class="title">
                            <img src="../assets/images/苦4.png">
                        </div>
                        <div class="chocolate_word1">CACAO 95%黑巧克力</div>
                    </a>
                </div>

                <div class="box">
                    <a href="pro17.jsp" style="text-decoration:none">
                        <div class="title">
                            <img src="../assets/images/苦5.png">
                        </div>
                        <div class="chocolate_word1">明治 代可可脂黑巧克力</div>
                    </a>
                </div>

                <div class="box">
                    <a href="pro18.jsp" style="text-decoration:none">
                        <div class="title">
                            <img src="../assets/images/苦6.png">
                        </div>
                        <div class="chocolate_word1">Lindt瑞士蓮 極醇系列78%巧克力片</div>
                    </a>
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

session.setAttribute("uaccount",request.getParameter("uaccount"));
		con.close();//結束資料庫連結
 }
		
else{
	con.close();
	response.sendRedirect("login.html");
}
%>