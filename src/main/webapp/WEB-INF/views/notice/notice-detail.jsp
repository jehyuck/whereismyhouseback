<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0068)https://demo.graygrids.com/themes/classigrids-demo/item-details.jsp -->
<html class="no-js" lang="zxx">
<!-- Start Header Area -->
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<!-- End Header Area -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Where is my house</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon"
	href="https://demo.graygrids.com/themes/classigrids-demo/assets/images/favicon.svg" />

<link rel="stylesheet" href="/happyhouse/assets/css/kakaomap.css" />
</head>

<body>
	<!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and
        security.
      </p>
    <![endif]-->

	<div class="preloader" style="opacity: 0; display: none">
		<div class="preloader-inner">
			<div class="preloader-icon">
				<span></span> <span></span>
			</div>
		</div>
	</div>

	<div class="breadcrumbs">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6 col-12">
					<div class="breadcrumbs-content">
						<h1 class="page-title">Notice</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="breadcrumb-nav">
						<li><a
							href="${root}/index">Home</a>
						</li>
						<li>Notice</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<section class="item-details section">
		<div class="container">
			<div class="top-area">
				<div class="row">
					<div class="mb-3" style="">
						<h3>${notice.title}</h3>
						<div class="mt-3 mb-1 border-bottom">
						작성자: ${notice.author}  |  작성일: ${notice.createdTime}
						</div>
					</div>
					<div class="col-lg-12 col-md-12 col-12">
						<p>${notice.content}</p>
					</div>
				</div>
			</div>
			
			<div class="mt-3">
				<span class="button">
		    		<a class="btn" href="${root}/notice/selectAll" >back</a>
				</span>
			</div>
		</div>
		
	</section>

	<!-- Start Footer Area -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	<!--/ End Footer Area -->

	<a href="item-details.jsp#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<script src="${root}/assets/js/bootstrap.min.js"></script>
	<script src="${root}/assets/js/wow.min.js"></script>
	<script src="${root}/assets/js/tiny-slider.js"></script>
	<script src="${root}/assets/js/glightbox.min.js"></script>
	<script src="${root}/assets/js/main.js"></script>
	<script type="text/javascript">
      const current = document.getElementById("current");
      const opacity = 0.6;
      const imgs = document.querySelectorAll(".img");
      imgs.forEach((img) => {
        img.addEventListener("click", (e) => {
          //reset opacity
          imgs.forEach((img) => {
            img.style.opacity = 1;
          });
          current.src = e.target.src;
          //adding class
          //current.classList.add("fade-in");
          //opacity
          e.target.style.opacity = opacity;
        });
      });
    </script>
</body>
</html>
