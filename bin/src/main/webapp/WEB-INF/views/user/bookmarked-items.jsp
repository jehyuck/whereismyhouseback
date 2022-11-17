<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0072)https://demo.graygrids.com/themes/classigrids-demo/profile-settings.jsp -->
<html class="no-js" lang="zxx">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Profile Settings</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="shortcut icon" type="image/x-icon"
	href="../assets/images/logo/logo.svg" />

<link href="../assets/css/" rel="stylesheet" />


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

	<!-- Start Header Area -->
	<%@ include file="/WEB-INF/views/common/header.jsp" %>
	<!-- End Header Area -->

	<!-- 메인 시작 -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6 col-12">
					<div class="breadcrumbs-content">
						<h1 class="page-title">관심 지역 조회</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="breadcrumb-nav">
						<li><a href="${root}/index">Home</a></li>
						<li>Bookmarked</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<section class="dashboard section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-4 col-12">
					<div class="dashboard-sidebar">
						<div class="user-image">
							<img src="${root}/assets/images/items-grid/author-1.jpg" alt="#" />
							<h3>
								${userInfo.name} <span><a href="javascript:void(0)">@${userInfo.id}</a></span>
							</h3>
						</div>
						<div class="dashboard-menu">
							<ul>
								<li><a href="${root}/user/update"><i
										class="lni lni-pencil-alt"></i>회원정보 조회/수정</a></li>
								<li><a class="active" href="${root}/bookmark/selectAll"><i
										class="lni lni-bookmark"></i>관심 지역 조회</a></li>
								<li><a href="${root}/user/remove"><i
										class="lni lni-trash"></i>회원 탈퇴</a></li>
							</ul>
							<div class="button">
								<a class="btn" href="${root}/user/logout">Logout</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-9 col-md-8 col-12">
					<form action="${root}/bookmark/insert" method="post" id="searchForm">
						<div class="search-form wow" data-wow-delay=".7s">
							<div class="row mt-2">
								<div class="col-lg-3 col-md-3 col-12 p-0">
									<div class="search-input">
										<label for="sido"><i
											class="lni lni-map-marker theme-color"></i></label> <select
											name="sido" id="sido">
											<option value="none" selected disabled>도/광역시</option>
										</select>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-12 p-0">
									<div class="search-input">
										<label for="gugun"><i
											class="lni lni-map-marker theme-color"></i></label> <select
											name="gugun" id="gugun">
											<option value="none" selected disabled>시/구/군</option>
										</select>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-12 p-0">
									<div class="search-input">
										<label for="dong"><i
											class="lni lni-map-marker theme-color"></i></label> <select
											name="dong" id="dong">
											<option value="none" selected disabled>동</option>
										</select>
									</div>
								</div>
								<div class="col-lg-3 col-md-3 col-12 p-0 search-btn button">
									<button class="btn" type="submit" form="searchForm">
										<i class="lni lni-search-alt"></i> Add
									</button>
								</div>
							</div>
						</div>
					</form>

					<div class="col-lg-12 col-md-12 col-12">
						<div class="main-content">
							<div class="dashboard-block mt-0">
								<h3 class="block-title">관심 지역 목록</h3>

								<div class="my-items">
									<div class="item-list-title">
										<div class="row align-items-center">
											<div class="col-lg-3 col-md-3 col-12">
												<p>도/광역시</p>
											</div>
											<div class="col-lg-3 col-md-3 col-12">
												<p>시/구/군</p>
											</div>
											<div class="col-lg-2 col-md-2 col-12">
												<p>동</p>
											</div>
											<div class="col-lg-2 col-md-2 col-12 align-right">
												<p>Action</p>
											</div>
										</div>
									</div>
									<c:forEach items="${bookmarks}" var="bookmark">
										<div class="single-item-list">
											<div class="row align-items-center">
												<div class="col-lg-3 col-md-3 col-12">
													<p>${bookmark.sidoName}</p>
												</div>
												<div class="col-lg-3 col-md-3 col-12">
													<p>${bookmark.gugunName}</p>
												</div>
												<div class="col-lg-2 col-md-2 col-12">
													<p>${bookmark.dongName}</p>
												</div>
												<div class="col-lg-2 col-md-2 col-12 align-right">
													<ul class="action-btn">
														<li><a
															href="${root}/bookmark/search?id=${bookmark.id}&userid=${bookmark.userid}"><i
																class="lni lni-eye"></i></a></li>
														<li><a href="${root}/bookmark/remove?id=${bookmark.id}"><i
																class="lni lni-trash"></i></a></li>
													</ul>
												</div>
											</div>
										</div>
									</c:forEach>

								</div>
								<!-- <div class="col">
                      <div class="button">
                        <a href="javascript:void(0)" class="btn">추가</a>
                      </div>
                    </div> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		</div>
	</section>
	<!-- 메인 끝 -->

	<!-- Start Footer Area -->
	<%@ include file="/WEB-INF/views/common/footer.jsp" %>
	<!--/ End Footer Area -->

	<a href="bookmarked-items.jsp" class="scroll-top btn-hover"
		style="display: none"> <i class="lni lni-chevron-up"></i>
	</a>

	<script src="${root}/assets/js/bootstrap.min.js"></script>
	<script src="${root}/assets/js/wow.min.js"></script>
	<script src="${root}/assets/js/tiny-slider.js"></script>
	<script src="${root}/assets/js/glightbox.min.js"></script>
	<script src="${root}/assets/js/main.js"></script>
	<script src="${root}/assets/js/selectbox-search.js"></script>
</body>
</html>
