<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="room_detail.aspx.cs" Inherits="SunRise.admin.room_detail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ROOM DETAIL</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">
    <script src="https://kit.fontawesome.com/ee589ab6b5.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css-second/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="./css-second/animate.css">
    
    <link rel="stylesheet" href="css-second/owl.carousel.min.css">
    <link rel="stylesheet" href="css-second/owl.theme.default.min.css">
    <link rel="stylesheet" href="css-second/magnific-popup.css">

    <link rel="stylesheet" href="css-second/aos.css">

    <link rel="stylesheet" href="css-second/css/ionicons.min.css">

    <link rel="stylesheet" href="css-second/bootstrap-datepicker.css">
    <link rel="stylesheet" href="css-second/jquery.timepicker.css">

    
    <link rel="stylesheet" href="css-second/flaticon.css">
    <link rel="stylesheet" href="css-second/icomoon.css">
    <link rel="stylesheet" href="css-second/style.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg   ftco-navbar-light" style="background-color: #0f2453 !important; top:0%;" id="ftco-navbar">
	    <div class="container" >
	      <a class="navbar-brand" href="../index.aspx">SUNRISE </a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="../index.php" class="nav-link">Home</a></li>
	          <li class="nav-item active"><a href="room_detail.aspx" class="nav-link">Rooms</a></li>
	          <li class="nav-item"><a href="#" class="nav-link">About</a></li>
	          <li class="nav-item"><a href="../index.php" class="nav-link menu__link scroll">Contact Us</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->
		<div class="hero-wrap" style="background-image: url('images-second/bg_1.jpg');">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
          <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
          	<div class="text">
	            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.aspx">Home</a></span></p>
	            <h1 class="mb-4 bread"><%=room %></h1>
            </div>
          </div>
        </div> 
      </div>
    </div>

		<section class="ftco-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8">
          	<div class="row">
          		<div class="col-md-12 ftco-animate">
          			<div class="single-slider owl-carousel">
          				<div class="item">
          					<div class="room-img" style="background-image: url(images-second/room-4.jpg);"></div>
          				</div>
          				<div class="item">
          					<div class="room-img" style="background-image: url(images-second/room-5.jpg);"></div>
          				</div>
          				<div class="item">
          					<div class="room-img" style="background-image: url(images-second/room-9.jpg);"></div>
          				</div>
          				<div class="item">
          					<div class="room-img" style="background-image: url(images-second/room-7.jpg);"></div>
          				</div>
          				<div class="item">
          					<div class="room-img" style="background-image: url(images-second/room-8.jpg);"></div>
          				</div>
          			</div>
          		</div>
          		<div class="col-md-12 room-single mt-4 mb-5 ftco-animate">
          			<h2 class="mb-4">Deluxe Room <span>- (6 Available rooms)</span></h2>
    						<p>Our Deluxe Room is minimalist chic, with a predominantly white interior complemented with some marble furnishings. Classy, elegant and cosy – it is located on the higher floors, where you’ll get to enjoy a view of either the hotel pool or city skyline from your windows.</p>
    						<div class="d-md-flex mt-5 mb-5">
    							<ul class="list">
	    							<li><span>Max:</span> 3 Persons</li>
	    							<li><span>Size:</span> 45 m2</li>
	    						</ul>
	    						<ul class="list ml-md-5">
	    							<li><span>View:</span> Sea View</li>
	    							<li><span>Bed:</span> 1</li>
	    						</ul>
    						</div>
    						
          		</div>
          		

          		<div class="col-md-12 properties-single ftco-animate mb-5 mt-4">
          			<h4 class="mb-4 ">Review &amp; Ratings</h4>
          			<div class="row">
          				<div class="col-md-6">
          					<form method="post" class="star-rating">
										  <div class="form-check">
												<input type="checkbox" class="form-check-input" id="exampleCheck1">
												<label class="form-check-label" for="exampleCheck1">
													<p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i> 100 Ratings</span></p>
												</label>
										  </div>
										  <div class="form-check">
									      <input type="checkbox" class="form-check-input" id="exampleCheck1">
									      <label class="form-check-label" for="exampleCheck1">
									    	   <p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-o"></i> 30 Ratings</span></p>
									      </label>
										  </div>
										  <div class="form-check">
									      <input type="checkbox" class="form-check-input" id="exampleCheck1">
									      <label class="form-check-label" for="exampleCheck1">
									      	<p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-o"></i><i class="fa-solid fa-star-o"></i> 5 Ratings</span></p>
									     </label>
										  </div>
										  <div class="form-check">
										    <input type="checkbox" class="form-check-input" id="exampleCheck1">
									      <label class="form-check-label" for="exampleCheck1">
									      	<p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-o"></i><i class="fa-solid fa-star-o"></i><i class="fa-solid fa-star-o"></i> 0 Ratings</span></p>
									      </label>
										  </div>
										  <div class="form-check">
									      <input type="checkbox" class="form-check-input" id="exampleCheck1">
									      <label class="form-check-label" for="exampleCheck1">
									      	<p class="rate"><span><i class="fa-solid fa-star"></i><i class="fa-solid fa-star-o"></i><i class="fa-solid fa-star-o"></i><i class="fa-solid fa-star-o"></i><i class="fa-solid fa-star-o"></i> 0 Ratings</span></p>
										    </label>
										  </div>
										</form>
          				</div>
          			</div>
          		</div>
          	</div>
          </div> <!-- .col-md-8 -->
          <div class="col-lg-4" style="font-size: 15px; margin-bottom:25px;">
            <div class="sidebar-boxx">
              
              
              <div  style="font-size: 15px; color: #FFCE14 !important; background-color: #143a8f;color: text-item:center;text-align:center;border-radius:5px"
               class="sidebar-boxx">
								<a href="reservation.aspx" ><span style="color:#fcc900; font-size: 25px;" > BOOK NOW</span></a>
							</div>
              <div style="margin: 20px 0 10px 0;text-align:center;">
                <h4>PRICE: 320$</h4>
              </div>
            </div>
            
            </div>           
          </div>
        </div>
      </div>
    </section> <!-- .section -->


  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="js-second/jquery.min.js"></script>
  <script src="js-second/jquery-migrate-3.0.1.min.js"></script>
  <script src="js-second/popper.min.js"></script>
  <script src="js-second/bootstrap.min.js"></script>
  <script src="js-second/jquery.easing.1.3.js"></script>
  <script src="js-second/jquery.waypoints.min.js"></script>
  <script src="js-second/jquery.stellar.min.js"></script>
  <script src="js-second/owl.carousel.min.js"></script>
  <script src="js-second/jquery.magnific-popup.min.js"></script>
  <script src="js-second/aos.js"></script>
  <script src="js-second/jquery.animateNumber.min.js"></script>
  <script src="js-second/jquery.mb.YTPlayer.min.js"></script>
  <script src="js-second/bootstrap-datepicker.js"></script>
  <!-- // <script src="js-second/jquery.timepicker.min.js"></script> -->
  <script src="js-second/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js-second/google-map.js"></script>
  <script src="js-second/main.js"></script>
</body>
</html>
