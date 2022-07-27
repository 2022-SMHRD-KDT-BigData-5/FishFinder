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
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/result.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
		<!-- fontawesome token -->
		<script src="https://kit.fontawesome.com/e340e95114.js" crossorigin="anonymous"></script>
		<!--main js-->
		<script src="assets/js/main.js"></script>
	</head>
	<body class="is-preload">
		<div id="wrapper">
			<div id="bg"></div>
			<div id="overlay"></div>
			<div id="main">
				<!-- Header -->
				<header id="header">
					<h1>RESULT</h1>
					<!-- <a href="kakaolink://launch">카카오톡앱</a> -->
                    <div class="container">
					    <img class="result" src="assets/css/images/fish.jpg" alt="">
					</div>
					<!-- <div class="meter1">
                    	<meter class="meter" value="0.8" low="0.31" optimum="0.61" high="0.81"></meter><br>
                    	<span>감성돔과 X % 일치합니다.</span>
					</div> -->
					<div class="progress-bar" style="--width:10" data-label="n%..."></div>
					<br>
					<!-- 결과 안내 창 -->
					<div class = "card">
						<div class="result_font"> 80% 감성돔입니다.</div>				
						표준어로는 '넙치'이고 '광어'가 사투리였지만 광어라는 이름으로 널리 불리면서 광어도 표준말로 대접받게 되었다.
						<br>
						생김새가 비슷한 어종으로는 도다리와 가자미가 있다.
						<br>
						광어의 특징 :
						<br>
						가슴지느러미를 아래로 향했을 때, 얼굴이 왼쪽 방향이다.
						<br>
						얼굴을 아래로 향하게 했을 때, 눈이 왼쪽으로 몰려있다.
						<br>
						입이 크고 이빨이 발달했다.
					</div>
					<nav>
						<ul>
							<li><a href="#" class="fa-solid fa-link" style="color: #fff;"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="fa-solid fa-floppy-disk" style="color: #fff;"><span class="label">Facebook</span></a></li>
						</ul>
					</nav>
					

					<nav>
						<ul>
							<li><a href="index.html" class="icon solid fa-home"><span class="label">Home</span></a></li>
							<li><a href="history.html" class="icon solid fa-history"><span class="label">History</span></a></li>
							<li><a href="board.html" class="icon solid fa-list"><span class="label">Board</span></a></li>
							<li><a href="qna.html" class="icon solid fa-question"><span class="label">Q&A</span></a></li>
						</ul>
					</nav>
				</header>
				<footer id="footer">
	               <span class="copyright"><a href="join.html">Logout</a>.</span>
	               <!-- 관리자 로그인 시 이동 가능한 버튼 -->
	               <span class="copyright"><a href="admin.html">Admin</a>.</span>
	            </footer>
			</div>
		</div>
		<script>
			const progressBar = document.getElementsByClassName('progress-bar')[0]
			setInterval(() => {
			const computeredStyle = getComputedStyle(progressBar)
			const width = parseFloat(computeredStyle.getPropertyValue('--width')) || 0
			progressBar.style.setProperty('--width',width + .1)
			}, 5)
		</script>
	</body>
	<script>
		window.onload = function() { document.body.classList.remove('is-preload'); }
		window.ontouchmove = function() { return false; }
		window.onorientationchange = function() { document.body.scrollTop = 0; }
	</script>
	
</html>