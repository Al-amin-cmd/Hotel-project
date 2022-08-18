<?php
require_once 'class.user.php';
session_start();
$user = new USER();
if (isset($_SESSION['userSession'])) {
	$stmt = $user->runQuery("SELECT * FROM tbl_users WHERE userID=:userid");
	$stmt->execute(array(":userid"=>$_SESSION['userSession']));
	$row=$stmt->fetch(PDO::FETCH_ASSOC);

}



?>
<!DOCTYPE html>
<html>
<head>
	<title>About Hotel</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
	<link href='https://fonts.googleapis.com/css?family=Roboto:400,300,700' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script> 
</head>
<body>
	<div class="container">
		<div class="row">
			<div style="background: #08062e;" class="col-md-12 col-sm-12 col-lg-12  p-2 mt-1">
				<div class="row">
					<div class=" col-lg-4 col-md-4">
						<p class="text-white"><i class="fas fa-map-marker"></i>Dhaka</p>
					</div>
					<div class=" col-lg-4 col-md-4">
						<p class="text-white"><i class="fas fa-envelope-open"></i> hotel@gmail.com</p>
					</div>
					<div class=" col-lg-4 col-md-4">
						<?php
						if (isset($_SESSION['userSession'])) 
						{
							?>

							<span class="text-white"><i class="fas fa-user"></i> &nbsp;&nbsp;<?php echo $row['userName'];?></span><a class="btn btn-primary float-right" href="logout.php">Logout</a>
							<?php

						}
						else
						{
							?>
							<a class="btn btn-primary float-right" href="login.php">Login</a>
							<?php
						}
						?>
						
						
					</div>
				</div>
			</div>
		</div>
		

		<!-- <div class="col-lg-12"> -->
			<?php
			include_once 'menu_bar.php';
				//include_once 'menu.php';
			?>

<div id="carouselExampleIndicators" class="carousel slide mt-2 aaa" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
					<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
						<img style="height: 500px;" class="d-block w-100 " src="image/readisson.jpg" alt="First slide">
						<div class="carousel-caption d-none d-md-block">
						<h1 style="font-size:30px; color: Red;">Radisonal Blue</h1>
						<p>Radisonal Blue super hotel of Bangladesh</p>
						</div>
					</div>
					<div class="carousel-item">
						<img style="height: 500px;" class="d-block w-100 " src="image/Pan Pacific Sonargaon Dhaka.jpg" alt="Second slide">
						<div class="carousel-caption d-none d-md-block">
						<h1 style="font-size:30px; color: Red;">Pan Pacific Sonargaon</h1>
						<p>Pan Pacific Sonargaon Dhaka</p>
						</div>
					</div>
					<div class="carousel-item">
						<img style="height: 500px;" class="d-block w-100" src="image/amari-dhaka-arial-shot.jpg" alt="Third slide">
						<div class="carousel-caption d-none d-md-block">
						<h1 style="font-size:30px; color: Red;">Amari Dhaka Bangladesh</h1>
						<p>Amari Dhaka Bangladesh the best hotel</p>
						</div>
					</div>

					<div class="carousel-item">
						<img style="height: 500px;" class="d-block w-100" src="image/Renaissance Dhaka Gulshan Hotel.jpg" alt="Third slide">
						<div class="carousel-caption d-none d-md-block">
						<h1 style="font-size:30px; color: Red;">Renaissance Dhaka Gulshan Hotel</h1>
						<p>Renaissance Dhaka Gulshan Hotel of bangladesh</p>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
			<div class=row>
				<div class="col-md-12 pb-4">
					
				</div>
				<div class="col-md-6 col-sm-6 shadow p-3 mb-5 bg-white rounded pt-4 pe-2">
				<h2 style="font-size:35px; color:red;">About my Services</h2>
					<p class="mt-2" align="center">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				</div>

				<div class="col-md-6 col-sm-6 shadow p-3 mb-5 bg-white rounded pt-4 ps-2">
				<h2 style="font-size:35px; color:red;">About my Services</h2>
					<p class="mt-2" align="center">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				</div>
			</div>

			<?php 
			include ('footer.php');
			?>
	</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
	<script type="text/javascript">
		$(function () {
			$('.toggle-menu').click(function(){
				$('.exo-menu').toggleClass('display');

			});

		});
	</script>