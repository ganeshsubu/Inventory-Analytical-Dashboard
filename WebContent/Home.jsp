<%@page import="com.controller.Controller"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">
<title>Home</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.1/css/fontawesome.min.css" integrity="sha384-QYIZto+st3yW+o8+5OHfT6S482Zsvz2WfOzpFSXMF9zqeLcFV0/wlZpMtyFcZALm" crossorigin="anonymous">
<!-- Bootstrap CSS-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link href=" vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all" type="text/css">
<!-- Vendor CSS-->

<link href=" vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all" type="text/css">
<!-- Main CSS-->
<link href=" css/theme.css" rel="stylesheet" media="all" type="text/css">
<link href=" css/theme1.css" rel="stylesheet" media="all"
	type="text/css">

<!-- Swiper link -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

<style>
@media ( max-width : 991px) {
	/* Modify the header-desktop3 styles to become the mobile header */
	.header-desktop3 {
		display: none;
	}

	/* Modify the navbar styles to fit the mobile screen */
	.header-mobile__bar {
		background-color: #333;
	}
	.navbar-mobile {
		background-color: #333;
	}
	.navbar-mobile__list {
		padding-top: 20px;
	}
}

@media ( min-width : 992px) {
	/* Modify the header-desktop3 styles to become the desktop header */
	.header-desktop3 {
		display: block;
	}
}

h1 {
	color: aliceblue;
}
</style>

</head>

<body>
<body class="animsition">
	<!-- HEADER DESKTOP-->
	<header class="header-desktop3 d-none d-lg-block">
	<div class="section__content section__content--p35">
		<div class="header3-wrap">
			<div class="header__logo">
				<a href="#">
					<h1>Pharmacy Management System</h1>
				</a>
			</div>
			<div class="header__navbar">
				<ul class="list-unstyled">
					<li class="has-sub1"><a href="Login.jsp"> <i
							class="fa-solid  fa-user"></i><span class="bot-line"></span>SIGN
							IN
					</a></li>
					<li class="has-sub1"><a href="Register.jsp"> <i
							class="fa-solid fa-right-to-bracket"></i><span class="bot-line"></span>SIGN
							UP
					</a></li>
				</ul>
			</div>
		</div>
	</div>
	</header>
	<!-- END HEADER DESKTOP-->

	<!-- HEADER MOBILE-->
	<header class="header-mobile header-mobile-2 d-block d-lg-none">
	<div class="header-mobile__bar">
		<div class="container-fluid">
			<div class="header-mobile-inner">
				<a class="logo" href="#">
					<h1>PMS</h1>
				</a>
				<button class="hamburger hamburger--slider" type="button">
					<span class="hamburger-box"> <span class="hamburger-inner"></span>
					</span>
				</button>
			</div>
		</div>
	</div>
	<nav class="navbar-mobile">
	<div class="container-fluid">
		<ul class="navbar-mobile__list list-unstyled">
			<li><a href="Login.jsp"><i class="fa-solid fa-user"></i>SIGN
					IN</a></li>
			<li><a href="Register.jsp"><i
					class="fa-solid fa-right-to-bracket"></i>SIGN UP</a></li>
		</ul>
	</div>
	</nav> </header>

	<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="..." class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

	<script
		src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

	<script>
  var swiper = new Swiper('.swiper', {
	 loop: true,
    autoplay: {
      delay: 5000, // milliseconds
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
    pagination: {
      el: '.swiper-pagination',
    },
  });
</script>

	<!-- Swiper JS -->


	<!-- Jquery JS-->
	<script src="vendor/jquery-3.2.1.min.js"></script>
	<script src="vendor/animsition/animsition.min.js"></script>

	<!-- Main JS-->
	<script src="js/main.js"></script>

</body>
</html>