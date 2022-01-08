<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>黑金 Chocolate</title>
    <style>
        @import "assets/css/index.css";
        @import "assets/css/login.css";
        @import "assets/css/allproduction.css";
        @import "assets/css/shoppingcar.css";
    </style>
    <script src="" type="text/javascript"></script>
</head>

<body>
    <!----置頂內容---->
    <header>
        <div id="top">
            <a href="index.jsp" style="text-decoration: none" class="Chocolate">黑金 Chocolate</a>
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
                            <a href="pages/allproduction.html#top">全部商品</a>
                            <a href="pages/allproduction.html#alcohol">大人口味<br>(含酒)</a>
                            <a href="pages/allproduction.html#childhood">童年回憶</a>
                            <a href="pages/allproduction.html#festival">節慶活動<br>(送禮)</a>
                            <a href="pages/allproduction.html#adult">成長滋味<br>(%數較高)</a>
                        </div>
                    </div>
                </li>
                <li class="menu1">
                    <div class="dropdown">
                        <button class="dropbtn">常見問題</button>
                        <div class="dropdown-content">
                            <a href="pages/questions.html">Q&A</a>
                            <a href="pages/how.html">如何挑選</a>
                        </div>
                    </div>
                </li>
                <li class="menu1"> <a href="pages/member.html" style="text-decoration: none" class="menubtn">認識我們</a>

                </li>
                <li class="menu1">
                    <a href="pages/client1.jsp" style="text-decoration: none;" class="menubtn">會員專區</a>
                </li>
                <li class="menu1">
                    <a href="pages/login.html" style="text-decoration: none" class="menubtn">會員登錄/註冊</a>
                </li>
            </ul>
        </div>

        <!----------搜尋框---------
          <div class="sbox">
        <div class="searchbox">
            
			<span class="icon"><a href=""><img src="../assets/images/搜尋.png"></a></span>
			<form action="search.jsp">
            <input type="text"  placeholder="Search..." name="search" />
			</form>
		</div>
    </div--->

        <!----購物車置底按鈕----
        <aside>
            <a href="pages/shoppingcar.jsp">
                <img src="assets/images/購物車1.jpg" class="shoppingcar">
            </a>
        </aside>

        <!-------輪播圖-------->
        <div class="carousel">
            <div>
                <a href="https://www.instagram.com/c_yu.11/">
                    <img src="assets/images/海報1.png">
                    <span class="poster_introduction">Image Description 1</span>
                </a>
            </div>

            <div>
                <a href="pages/login.html">
                    <img src="assets/images/海報1.png" />
                    <span class="poster_introduction">Image Description 2</span>
                </a>
            </div>

            <div>
                <a href="pages/allproduction.html#childhood">
                    <img src="assets/images/海報3.png">
                    <span class="poster_introduction">坐上時光機，用巧克力再次回味童年的好滋味</span>
                </a>
            </div>

            <div>
                <a href="pages/allproduction.html#alcohol">
                    <img src="assets/images/海報2.png">
                    <span class="poster_introduction">酒心巧克力隆重登場，獻給成為大人的你</span>
                </a>
            </div>

            <div>
                <a href="pages/allproduction.html#top">
                    <img src="assets/images/海報1.png" class="picture1">
                    <span class="poster_introduction">歡迎來到黑金，按下圖片壤我們告訴您如何挑選適合自己的巧克力吧！</span>
                </a>
            </div>
        </div>

        <!-------排行榜-------->
        <div class="allcharts">
            <p class="chartstitle">排行榜</p>
            <div class="charts">

                <a href="pages/allproduction.html#alcohol">
                    <img src="assets/images/排行2.png" class="charts2">
                </a>


                <a href="pages/allproduction.html#childhood">
                    <img src="assets/images/排行1.png" class="charts1">
                </a>


                <a href="pages/allproduction.html#adult">
                    <img src="assets/images/排行3.png" class="charts3">
                </a>

            </div>
        </div>

    </main>

    <!----置底內容---->
    <footer>
        <p>♥您是第<%	
try { // 例外處理
    Class.forName("com.mysql.jdbc.Driver"); // 啟動 JDBC 驅動程式
    try {	// 例外處理
        String url="jdbc:mysql://localhost/?useUnicode=true&characterEncoding=utf-8&serverTimezone=UTC"; // url 是連接 MySQL 的位址（IP 或網域）
        String sql=""; // 建立字串變數 sql
        Connection con=DriverManager.getConnection(url,"root","1234"); // 連接 MySQL 資料庫（帳號：root；密碼：1234）
        if(con.isClosed()) // con.isClosed() 回傳 ture 代表連線關閉
           out.println("警告：連線建立失敗！"); // 連線關閉代表連線沒有被建立
        else { // 連線成功建立就可以開始取得與更新資料庫的資料
				sql="use choco"; // SQL 語法：使用 cych 資料庫
				con.createStatement().execute(sql); // 執行上一行的 SQL
				sql="select * from counter"; // SQL 語法：取得 counter 資料表中的所有資料
				ResultSet rs=con.createStatement().executeQuery(sql); // ResultSet 用來儲存查詢結果 (*註解1)，將上一行 SQL 執行後並儲存結果
			while(rs.next()) // 一筆一筆讀取資料，回傳 false 表示讀取結束
				{
				String c_S= rs.getString(1); // 取得資料表第一個欄位的資料到 c_S 這個字串中
				int c=Integer.parseInt(c_S); // 將 c_S 這個字串轉成 int 整數並存至 c 變數
				if (session.isNew()) { // 如果使用者是使用新的 Session 連入
					c++; // c 變數 +1
					out.print(c); // 印出 c 變數
									}
				else  // 如果使用者不是使用新的 Session 連入
					{
				out.print(c); // 直接印出 c 變數
					} 
			sql="update counter set counter=\'" + c + "\'"; // SQL 語法：將 c 的數字更新到 counter 資料表中的 count 欄位
				}
			con.createStatement().execute(sql); // 執行剛剛的 SQL 語法
			con.close(); // 關閉 MySQL 連線
			}
		}
    catch (SQLException sExec) {
           out.println("警告：MySQL 錯誤！"+sExec.toString()); // MySQL 錯誤警告
    }
}
catch (ClassNotFoundException err) {
   out.println("警告：class 錯誤！"+err.toString()); // JDBC 錯誤警告
}
%>個顧客♥ 版權皆為黑金團隊所有 ♥</p>
    </footer>

</body>

</html>