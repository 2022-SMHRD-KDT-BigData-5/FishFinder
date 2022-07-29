<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Aerial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Aerial by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="resources/assets/css/main.css" />
		<link rel="stylesheet" href="resources/assets/css/join.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<!-- fontawesome token -->
		<script src="https://kit.fontawesome.com/e340e95114.js" crossorigin="anonymous"></script>
		<!--main js-->
		<script src="resources/assets/js/main.js"></script>
		
	</head>
	<body class="is-preload">
		<div id="wrapper">
			<div id="bg"></div>
			<div id="overlay"></div>
			<div id="main">
				<!-- Header -->
				<header id="header">
					<!-- <a href="kakaolink://launch">카카오톡앱</a> -->
					<img src="resources/assets/css/images/logo2.png" alt="">
					<div class="joinbox">
						<a href="https://kauth.kakao.com/oauth/authorize?client_id=594ae1b3ed146deb6d74549625ebeb66&redirect_uri=http://121.147.52.236:8083/fish/login&response_type=code" class="kakaoLogin"><img src="resources/assets/css/images/kakaoLogin.png"></a>
					</div>
				</header>
				<!-- Footer -->
	            <footer id="footer">
	               <span class="copyright"><a href="join.html">Logout</a>.</span>
	               <!-- 관리자 로그인 시 이동 가능한 버튼 -->
	               <span class="copyright"><a href="admin.html">Admin</a>.</span>
	            </footer>
			</div>
		</div>
	</body>
	<script>
		window.onload = function() { document.body.classList.remove('is-preload'); }
		window.ontouchmove = function() { return false; }
		window.onorientationchange = function() { document.body.scrollTop = 0; }
		</script>
		<script>		
		function login() {
	           window.location.href = "https://kauth.kakao.com/oauth/authorize?client_id=594ae1b3ed146deb6d74549625ebeb66&redirect_uri=http://localhost:8083/fish/login&response_type=code"
	       }
			
	</script>
</html>