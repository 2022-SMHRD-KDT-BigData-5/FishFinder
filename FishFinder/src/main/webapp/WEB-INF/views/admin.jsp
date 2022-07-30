<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>암행漁사</title>
    <link rel="stylesheet" href="assets/css/admin.css" />
</head>
<body>
    <div class="container">
        <div class="navigation">
            <ul>
                <li>
                    <a href="#">
                        <span class="icon"><img src="assets/css/images/logo3.png"></span>
                        <span class="title1"><img src="assets/css/images/logo4.png"></span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="home-outline"></ion-icon></span>
                        <span class="title">홈</span>
                    </a>
                </li>
                <!-- <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="person-outline"></ion-icon></ion-icon></span>
                        <span class="title">Customers</span>
                    </a>
                </li> -->
                <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="receipt-outline"></ion-icon></span>
                        <span class="title">게시판</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="help-outline"></ion-icon></ion-icon></span>
                        <span class="title">질문</span>
                    </a>
                </li>
                <!-- <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="settings-outline"></ion-icon></span>
                        <span class="title">Settings</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="lock-closed-outline"></ion-icon></span>
                        <span class="title">Password</span>
                    </a>
                </li> -->
                <li>
                    <a href="#">
                        <span class="icon"><ion-icon name="log-out-outline"></ion-icon></span>
                        <span class="title">로그아웃</span>
                    </a>
                </li>
            </ul>
        </div>

        <!-- main -->
        <div class="main">
            <div class="topbar">
                <div class="toggle">
                    <ion-icon name="menu-outline"></ion-icon>
                </div>
                <!-- search -->
                <div class="search">
                    <label>
                        <input type="text" placeholder="Search here">
                        <ion-icon name="search-outline"></ion-icon>
                    </label>
                </div>
                <!-- user -->
                <div class="user">
                    <img src="assets/css/images/user.jpg">
                </div>
            </div>

            <!-- cards -->
            <div class="cardBox">
                <div class="card">
                    <div>
                        <div class="numbers">1,504</div>
                        <div class="cardName">회원</div>
                    </div>
                    <div class="iconBx">
                        <ion-icon name="people-circle-outline"></ion-icon>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers">80</div>
                        <div class="cardName">검색량</div>
                    </div>
                    <div class="iconBx">
                        <ion-icon name="search-outline"></ion-icon>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers">284</div>
                        <div class="cardName">게시글</div>
                    </div>
                    <div class="iconBx">
                        <ion-icon name="reader-outline"></ion-icon>
                    </div>
                </div>
                <div class="card">
                    <div>
                        <div class="numbers">42</div>
                        <div class="cardName">질문</div>
                    </div>
                    <div class="iconBx">
                        <ion-icon name="help-circle-outline"></ion-icon>
                    </div>
                </div>
            </div>
        
        
        <div class="details">
            <!-- order details list -->
            <div class="recentOrders">
                <div class="cardHeader">
                    <h2>통계</h2>
                    <a href="#" class="btn">View All</a>
                </div>
            <div>
                <!-- 여따 넣고싶다 -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
		    	<canvas id="line-chart" width="250" height="200"></canvas>
                <script src="assets/js/Chart.min.js"></script>
            </div>
            </div>

            <!-- New Customer -->
            <div class="recentCustomers">
                <div class="cardHeader">
                    <h2>최근 질문</h2>
                </div>
                <table>
                    <tr>
                        <td width="60px"><div class="imgBx"><img src="assets/css/images/user.jpg"></div></td>
                        <td><h4>David<br><span>Italy</span></h4></td>
                    </tr>
                </table>
            </div>
        </div>


        </div>  
    </div>
    

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

    <script>
        // MenuToggle
        let toggle = document.querySelector('.toggle');
        let navigation = document.querySelector('.navigation');
        let main = document.querySelector('.main');
        // 클릭시 @ active 클래스로 변경 
        toggle.onclick = function(){
            navigation.classList.toggle('active')
            main.classList.toggle('active')
        }
        
        // add hovered class in selected list item
        let list = document.querySelectorAll('.navigation li');
        function activeLink(){
            list.forEach((item) =>
            item.classList.remove('hovered'));
            this.classList.add('hovered')
        }
        list.forEach((item) =>
        item.addEventListener('mouseover',activeLink));
        </script>
</body>
</html>