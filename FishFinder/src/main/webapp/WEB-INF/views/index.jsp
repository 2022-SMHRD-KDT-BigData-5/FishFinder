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
					<!-- <a href="kakaolink://launch">카카오톡앱</a> -->
					<img src="/assets/css/images/logo.png" alt="">
					<!-- &nbsp;&bull;&nbsp; : 중앙 점 하나 -->
					<h1>암행漁사</h1>
					<nav>
						<ul>
							<!-- <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li> -->
							<!-- <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li> -->
							<!-- <li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li> -->
							<li>
								<a><label class="input-file-button" for="input-file"><i class="icon solid fa-camera"></i></label></a>
								<input type="file" accept="image/*" capture="camera" id="input-file" style="display:none"/>
							</li>
							<li>
								<a><label class="input-file-button2" for="images"><i class="icon solid fa-image"></i></label></a>
								<!-- <input type="file" accept="image/*" id="input-file" style="display:none"/> -->
								<input type="file" name="images[]" id="images" accept="image/*" multiple="multiple" style="display:none">
							</li>
						</ul>
						<br>
						<ul>
							<li><a href="index.html" class="icon solid fa-home"><span class="label">Home</span></a></li>
							<li><a href="history.html" class="icon solid fa-history"><span class="label">History</span></a></li>
							<li><a href="board.html" class="icon solid fa-list"><span class="label">Board</span></a></li>
							<li><a href="#" class="icon solid fa-question"><span class="label">Q&A</span></a></li>
						</ul>
					</nav>
				</header>
				<!-- Footer -->
				<footer id="footer">
					<span class="copyright"><a href="join.html">Logout</a>.</span>
				</footer>
			</div>
		</div>
	</body>
	<script>
		window.onload = function() { document.body.classList.remove('is-preload'); }
		window.ontouchmove = function() { return false; }
		window.onorientationchange = function() { document.body.scrollTop = 0; }
	</script>
</html>