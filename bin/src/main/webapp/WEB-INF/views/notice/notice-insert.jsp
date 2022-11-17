<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
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

	
	
	<form id="updateForm" method='post' action='${root}/notice/insert'>
		<div class="container">
			<div class="top-area">
					<div class="row">
						<div class="mb-3">
							 <div class="form-group  class="col-12">
								<label>제목: </label>
								<input type="text" name="title"/>
							</div>
							<div class="mt-3 mb-1 border-bottom">
								<div class="form-group">
									작성자: <input type="text" name="author" value="${userInfo.id}" readOnly/> |
									작성일: <input type="text" name="createdTime"/>
								</div>
							</div>
					  </div>
					</div>
					
					<div class="col-lg-12 col-md-12 col-12">
						<textarea type="text" name="content" class="col-lg-12 col-md-12 col-12" >${notice.content}</textarea>
					</div>
			</div>
					
			<div class="mt-3">
				<span class="button">
		    		<button type="submit" class="btn">저장</button>
				</span>
				<span class="button">
		    		<a class="btn" href="${root}/notice/selectAll" >취소</a>
				</span>
			</div>
		</div>
	</form>
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
