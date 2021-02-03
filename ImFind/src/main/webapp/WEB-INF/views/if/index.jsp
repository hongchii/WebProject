<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<title>분실물 조회</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- <link type="text/css" href="style/jquery.jscrollpane.css" rel="stylesheet" media="all" />
 -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/if/css/style.css?after">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Poor+Story&display=swap"
	rel="stylesheet">

</head>
<body>

	<nav class="logonav" role="logonavrole">
		<div class="top-logoset">
			<div class="container-logoset">
				<div class="logoset">
					<div class="logorow">
						<div class="logoimfind">
							<div id="logoimfindid" style="width: 90px;">
								<a href="./home.do"> IMFIND <span id="imfindspan">.</span>
							</div>
						</div>
					</div>
					<div class="logomenuifelse">
						<div class="logopolice">
							<a href="index.if">경찰청</a>
						</div>
						<div class="logoetc">
							<a href="etc_index.if">etc</a>
						</div>
						<div class="logoselect">
							<a href="select.if">조회</a>
						</div>
						<div class="logophone">
							<a href="#"
								onclick="window.open('https://www.handphone.or.kr/','','height=800px, width=800px')">핸드폰</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<div class="wrapper d-flex align-items-stretch">
		<!-- style="background-image: url(${pageContext.request.contextPath}/resources/if/images/bg_1.jpg); -->
		<nav id="sidebar" class="order-last" class="img">
			
				<!-- 조회 리스트 뿌려줄 공간 -->
				<!-- 구역 표시때문에 border색 지정해줌 바꾸삼 -->
				<div class="nav-content">
					<div class="manual">
						<h4 class="h2o2">이용방법</h4>
						<ul>
							<li>주소 옆 이미지를 누르면 쉽게 길을 찾을 수 있어요.</li>
							<li>이미지를 클릭하면 공공기관 이름이 나와요.</li>
							<li>공공 기관명을 클릭하면 분실물 정보와 해당 기관을 확인할 수 있어요.</li>
							<li>분실물을 선택하면 해당 분실물의 상세정보를 알 수 있어요.</li>
						</ul>
					</div>
					<div class="movie">
						<iframe width="450" height="315"
							src="https://www.youtube.com/embed/3XYyHq2JBn4" frameborder="0"
							allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
							allowfullscreen></iframe>
						</table>
					</div>
					<div align="center" class="police"></div>
					<div class="tableif"></div>
				</div>
			
		</nav>
		<!-- Page Content  -->
		<div id="content">
			<!-- 지도 -->
			<div id="map" style="width: 100%; height: 86.5%;"></div>
		</div>
	</div>

	<!-- footer 시작 -->
	<footer id="fh5co-footer" role="contentinfo"
		style="position: fixed; bottom: 0; width: 100%; padding-top: 0px;padding-bottom: 0px;background-color: #efefef;height: 130px;">
		<div class="container" style="padding-bottom: 0px;height: 130px;">
		<img style="height: 130px;" id="imfindlogo" src="${pageContext.request.contextPath}/resources/el/img/55.PNG"/>
			
		</div>
		<div class="iseouluset"
						style="box-shadow: 0 2px 4px 0 hsl(0deg 0% 81%/ 50%);">
						<div class="iseoulu" style="padding-left: 30px;">
							<img style="cursor: pointer;"
								onclick="window.open('https://www.lost112.go.kr/','','height=800px, width=800px')"
								width="45%" height="80px" src="./resources/if/images/p_mark.PNG"
								title="경찰청 분실물 홈페이지로 이동합니다"> <img style="cursor: pointer;"
								onclick="window.open('https://www.seoul.go.kr/main/index.jsp','','height=800px, width=800px')"
								width="45%" height="80px" src="./resources/if/images/s_mark.PNG"
								title="대중교총 분실물 홈페이지로 이동합니다">
						</div>
					</div>
	</footer>
	<!-- footer 끝 -->

	<!--End Modal-->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5e9646f261380e768a278eb16f4f6768&libraries=clusterer"></script>
	<script
		src="${pageContext.request.contextPath}/resources/if/js/police.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/if/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/if/js/main.js"></script>

</body>
</html>