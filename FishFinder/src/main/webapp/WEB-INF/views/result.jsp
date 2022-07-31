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
					div class="progress-bar" style="--width:${his_vo.accuracy }" data-label="${his_vo.accuracy }%..."></div>
					<br>
					<!-- 결과 안내 창 -->
					<div class = "card">
						<div class="result_font"> ${his_vo.accuracy }%, ${his_vo.result }입니다.</div>			

						${fish_vo.fish_kind }
						${fish_vo.fish_spec }
					</div>
					<nav>
						<ul>
							<li><a href="#" class="fa-solid fa-link" onclick="sendLinkDefault()" style="color: #fff;"><span class="label">Twitter</span></a></li>
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
	               <span class="copyright"><a href="/join">Logout</a>.</span>
	               <!-- 관리자 로그인 시 이동 가능한 버튼 -->
	               <span class="copyright"><a href="/admin">Admin</a>.</span>
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
			    title: '오늘의 디저트',
			    description: '아메리카노, 빵, 케익',
			    imageUrl:
			      'https://mud-kage.kakao.com/dn/NTmhS/btqfEUdFAUf/FjKzkZsnoeE4o19klTOVI1/openlink_640x640s.jpg',
			    link: {
			      mobileWebUrl: 'https://developers.kakao.com',
			      androidExecutionParams: 'test',
			    },
			  },
			  itemContent: {
			    profileText: 'Kakao',
			    profileImageUrl: 'https://mud-kage.kakao.com/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
			    titleImageUrl: 'https://mud-kage.kakao.com/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
			    titleImageText: 'Cheese cake',
			    titleImageCategory: 'Cake',
			    items: [
			      {
			        item: 'Cake1',
			        itemOp: '1000원',
			      },
			      {
			        item: 'Cake2',
			        itemOp: '2000원',
			      },
			      {
			        item: 'Cake3',
			        itemOp: '3000원',
			      },
			      {
			        item: 'Cake4',
			        itemOp: '4000원',
			      },
			      {
			        item: 'Cake5',
			        itemOp: '5000원',
			      },
			    ],
			    sum: '총 결제금액',
			    sumOp: '15000원',
			  },
			  social: {
			    likeCount: 10,
			    commentCount: 20,
			    sharedCount: 30,
			  },
			  buttons: [
			    {
			      title: '웹으로 이동',
			      link: {
			        mobileWebUrl: 'https://developers.kakao.com',
			      },
			    },
			    {
			      title: '앱으로 이동',
			      link: {
			        mobileWebUrl: 'https://developers.kakao.com',
			      },
			    },
			  ]
			});
	 }
</script>
	
</html>