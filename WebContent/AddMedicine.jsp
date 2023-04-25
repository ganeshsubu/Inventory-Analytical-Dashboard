<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.text.DateFormat" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="au theme template">
<meta name="author" content="Hau Nguyen">
<meta name="keywords" content="au theme template">

<!-- Title Page-->
<title>Dashboard 3</title>

<!-- Fontfaces CSS-->
<link rel="stylesheet"
	href="vendor/fontawesome-free-6.3.0-web/css/all.min.css" media="all">

<!-- Bootstrap CSS-->
<link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet"
	media="all">

<!-- Vendor CSS-->
<link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<link href="css/theme.css" rel="stylesheet" media="all">
<link href="css/style.css" rel="stylesheet" media="all">

<style>
@media ( max-width : 991px) {
	/* Modify the header-desktop3 styles to become the mobile header */
	.header-desktop3 {
		display: none;
	}
	.header-mobile {
		display: block;
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
	.navbar-mobile__list li:last-child {
		border-bottom: none;
	}
}

@media ( min-width : 992px) {
	/* Modify the header-desktop3 styles to become the desktop header */
	.header-desktop3 {
		display: block;
	}
	.header-mobile {
		display: none;
	}
}
</style>

</head>

<body class="animsition">
	<!-- HEADER DESKTOP-->
	<header class="header-desktop3 d-none d-lg-block">
		<div class="section__content section__content--p35">
			<div class="header3-wrap">
				<div class="header__logo">
					<a href="#">
						<h1 style="color: aliceblue;">PMS</h1>
					</a>
				</div>
				<div class="header__navbar">
				<ul class="list-unstyled">
					<li class="has-sub"><a href="#"> <i
							class="fas fa-tachometer-alt"></i>Dashboard <span
							class="bot-line"></span></a></li>
					<li><a href="Total books.html"> <i class="fa-solid fa-house-medical"></i> <span class="bot-line"></span>Add medicine
					</a></li>
					<li><a href="table.html"> <i class="fa-solid fa-house-medical-circle-check"></i></span>Total Medicine
					</a></li>
					<li class="has-sub"><a href="form.html"><i class="fa-solid fa-clipboard-list"></i> <span class="bot-line"></span>Stock list
					</a></li>
					<li class="has-sub"><a href="#"><i class="fa-solid fa-truck-medical"></i> <span class="bot-line"></span>Delivered list
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
					<a class="logo" href="index.html">
						<h1 style="color: aliceblue;">LBM</h1>
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
			<li class="has-sub"><a class="js-arrow" href="#"> <i class="fa-solid fa-gauge"></i>Dashboard</a></li>
			<li><a href="chart.html"> <i class="fa-solid fa-book"></i>Total Books
			</a></li>
			<li><a href="table.html"> <i
					class="fa-solid fa-book-medical"></i>Add Books
			</a></li>
			<li><a href="form.html"> <i class="fa-solid fa-book-atlas"></i>Issue
					Books
			</a></li>
			<li><a href="calendar.html"> <i class="fa-solid fa-users"></i>Members
			</a></li>
		</ul>
	</div>
	</nav> 
	</header>
	
	<header>
      <h1>Add Medicine Page</h1>
    </header>
    <div class="container">
      <form action="addmedicine"  method="post">
        <label for="medicine-name">Medicine Name:</label>
        <input type="text" id="medicine-name" name="medicine-name" placeholder="Enter medicine name" required>

        <label for="medicine-type">Medicine Type:</label>
        <select id="medicine-type" name="medicine-type" required>
          <option value="">Select medicine type</option>
          <option value="Tablet">Tablet</option>
          <option value="Capsule">Capsule</option>
          <option value="Syrup">Syrup</option>
        </select>

        <label for="medicine-quantity">Quantity:</label>
        <input type="number" id="medicine-quantity" name="medicine-quantity" placeholder="Enter quantity" required>

        <label for="medicine-price">Price:</label>
        <input type="number" id="medicine-price" name="medicine-price" placeholder="Enter price" required>

        <label for="medicine-expiry">Expiry Date:</label>
        <input type="date" id="medicine-expiry" name="medicine-expiry" required>

        <label for="medicine-current-date">Current Date:</label>
        <input type="date" id="medicine-current-date" name="medicine-current-date" required>

        <input type="submit" class="btn btn-dark btn-lg" value="Add Medicine">
      </form>
    </div>
    <script>
      // Set the current date as the default value of the current date field
      const currentDateField = document.getElementById("medicine-current-date");
      const currentDate = new Date();
      currentDateField.valueAsDate = currentDate;
    </script>
	
	</div>

	<!-- Jquery JS-->
	<script src="vendor/jquery-3.2.1.min.js"></script>
	<!-- Vendor JS-->
	<script src="vendor/animsition/animsition.min.js"></script>

	<!-- Main JS-->
	<script src="js/main.js"></script>

</body>
</html>