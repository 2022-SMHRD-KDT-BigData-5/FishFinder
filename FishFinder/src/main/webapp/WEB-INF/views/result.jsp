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
		<link rel="stylesheet" href="/fish/assets/css/main.css" />
		<link rel="stylesheet" href="/fish/assets/css/result.css" />
		<noscript><link rel="stylesheet" href="/fish/assets/css/noscript.css" /></noscript>
		<!-- fontawesome token -->
		<script src="https://kit.fontawesome.com/e340e95114.js" crossorigin="anonymous"></script>
		<!--main js-->
		<script src="/fish/assets/js/main.js"></script>
		<script type="text/JavaScript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
		

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
                    <img id="fishImg" class="result" src="${pageContext.request.contextPath}/image/${his_vo.fish_img }?v=1" alt="">
					
					</div>
					<!-- <div class="meter1">
                    	<meter class="meter" value="0.8" low="0.31" optimum="0.61" high="0.81"></meter><br>
                    	<span>감성돔과 X % 일치합니다.</span>
					</div> -->

					<div class="progress-bar" style="--width:${his_vo.accuracy }" data-label="${his_vo.accuracy }%..."></div>
					<!-- 결과 안내 창 -->
					<div class = "card">
						<div class="result_font"> ${his_vo.accuracy }%, ${his_vo.result }입니다.</div>			

						${fish_vo.fish_kind }
						${fish_vo.fish_spec }
					</div>
					<nav>
						<ul>
							<li><a href="#" class="fa-solid fa-link" onclick="sendLinkDefault()" style="color: #fff;"><span class="label">Kakao</span></a></li>
							<li><a href="#" class="fa-solid fa-floppy-disk" style="color: #fff;"><span class="label">Facebook</span></a></li>

						</ul>
            
					</nav>
					

					<nav>
						<ul>
		                     <li><a href="/fish/index" class="icon solid fa-home"><span class="label">Home</span></a></li>
		                     <li><a href="/fish/history" class="icon solid fa-history"><span class="label">History</span></a></li>
		                     <li><a href="/fish/view" class="icon solid fa-list"><span class="label">Board</span></a></li>
		                     <li><a href="/fish/qna" class="icon solid fa-question"><span class="label">Q&A</span></a></li>
		                 </ul>
					</nav>
				</header>
				<footer id="footer">
	               <span class="copyright"><a href="/fish/logout">Logout</a>.</span>
	               <!-- 관리자 로그인 시 이동 가능한 버튼 -->
					<c:if test="${sessionScope.user_type == 1}">
		               	<span class="copyright"><a href="/fish/admin">Admin</a>.</span>
		            </c:if>
	            </footer>
			</div>
		</div>
	<!-- 	<script>
			const progressBar = document.getElementsByClassName('progress-bar')[0]
			setInterval(() => {
			const computeredStyle = getComputedStyle(progressBar)
			const width = parseFloat(computeredStyle.getPropertyValue('--width')) || 0
			progressBar.style.setProperty('--width',width + .1)
			}, 5)
		</script>  -->
	</body>
	<script>
		window.onload = function() { document.body.classList.remove('is-preload'); }
		window.ontouchmove = function() { return false; }
		window.onorientationchange = function() { document.body.scrollTop = 0; }
	</script>
	<script type="text/javascript">    

	  function sendLinkDefault() {
		// 사용할 앱의 JavaScript 키 설정
		  Kakao.init('1164def143509ff0c0d32517fc31f7de');
		 
		  // 카카오링크 버튼 생성
		  Kakao.Share.sendDefault({
			  objectType: 'feed',
			  content: {
			    title: ${his_vo.accuracy } + '%'+ ${his_vo.result } + '입니다.',
			    imageUrl:
			    	"http://121.147.52.236:8083/fish/image/" + ${his_vo.fish_img },
			  },
			  buttons: [
			    {
			      title: '웹으로 이동',
			      link: {
			        mobileWebUrl: 'http://121.147.52.236:8083/fish/result/' + ${his_vo.his_seq},
			      },
			    },
			  ]
			});
	 }
</script>
	
</html>