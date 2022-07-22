<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="com.smhrd.web.SessionUserCounter" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
		<noscript><link rel="stylesheet" href="resources/assets/css/noscript.css" /></noscript>
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
					<img src="/assets/css/images/logo.png" alt="">
					<!-- &nbsp;&bull;&nbsp; : 중앙 점 하나 -->
					<h1>암행漁사</h1>
					<form>
						전체 : ${sessionScope.userId }   
						<br>    
						오늘 : ${sessionScope.todayCount }      
						<br>
						현재 접속자 수 : <%=SessionUserCounter.getCount()%>
					</form>					
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
							<li><a href="/fish/communityList.do?viewPage=1" class="icon solid fa-list"><span class="label">Board</span></a></li>
							<li><a href="#" class="icon solid fa-question"><span class="label">Q&A</span></a></li>
						</ul>
					</nav>
				</header>
				<!-- Footer -->
				<footer id="footer">
					<span class="copyright"><a href="/join">Logout</a>.</span>
				</footer>
			</div>
		</div>
	</body>
	<script>
		window.onload = function() { document.body.classList.remove('is-preload'); }
		window.ontouchmove = function() { return false; }
		window.onorientationchange = function() { document.body.scrollTop = 0; }
	</script>
=======
   <head>
      <title>Aerial by HTML5 UP</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="resources/assets/css/main.css" />
      <noscript><link rel="stylesheet" href="resources/assets/css/noscript.css" /></noscript>
      <!-- fontawesome token -->
      <script src="https://kit.fontawesome.com/e340e95114.js" crossorigin="anonymous"></script>
   </head>
   <body class="is-preload">
      <div id="wrapper">
         <div id="bg"></div>
         <div id="overlay"></div>
         <div id="main">
            <!-- Header -->
            <header id="header">
               <!-- <a href="kakaolink://launch">카카오톡앱</a> -->
               <img src="resources/assets/css/images/logo.png" alt="">
               <!-- &nbsp;&bull;&nbsp; : 중앙 점 하나 -->
               <h1>암행漁사</h1>
               <form>
						전체 : ${sessionScope.userId }   
						<br>    
						오늘 : ${sessionScope.todayCount }      
						<br>
						현재 접속자 수 : <%=SessionUserCounter.getCount()%>
				</form>
               <div class="preview_container" id="imagePreview">
                  <img class="img_thumbnail" id="show-picture" src="">
               </div>
               <nav>
                  <ul>                  
                     <!-- 카메라 호출 -->
                     <li>
                        <a><label class="input-file-button" for="inputFile"><i class="icon solid fa-camera"></i></label></a>
                        <input type="file" accept="image/*" capture="camera" id="inputFile" style="display:none"/>
                     </li>
                     <!-- 이미지 호출 -->
                     <li>
                        <a><label class="input-file-button2" for="images" id="call_image"><i class="icon solid fa-image"></i></label></a>
                        <!-- <input type="file" accept="image/*" id="input-file" style="display:none"/> -->
                        <input type="file" name="images[]" id="images" accept="image/*" multiple="multiple" style="display:none">
                     </li>
                     <!-- 이미지 전송 -->
                     <li>
                        <a><label class="input-file-button2" for="submit_img" id="submit_image"><i class="icon solid fa-check"></i></label></a>
                        <input type="submit" id="submit_img" style="display: none;">
                     </li>
                  </ul>
                  <br>
                  <ul>
                     <li><a href="index.html" class="icon solid fa-home"><span class="label">Home</span></a></li>
                     <li><a href="history.html" class="icon solid fa-history"><span class="label">History</span></a></li>
                     <li><a href="/fish/communityList.do?viewPage=1" class="icon solid fa-list"><span class="label">Board</span></a></li>
                     <li><a href="qna.html" class="icon solid fa-question"><span class="label">Q&A</span></a></li>
                  </ul>
               </nav>
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
   <script src="https://code.jquery.com/jquery-3.6.0.slim.js" integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
   <script src="resources/assets/js/main.js"></script>
   	<script>
		window.onload = function() { document.body.classList.remove('is-preload'); }
		window.ontouchmove = function() { return false; }
		window.onorientationchange = function() { document.body.scrollTop = 0; }
	</script>
</html>