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
    <link rel="shortcut icon" type="image/x-icon" href="../assets/images/favicon.svg" />

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
          <span></span>
          <span></span>
        </div>
      </div>
    </div>

    <!-- Start Header Area -->
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <!-- End Header Area -->
    
    <div class="breadcrumbs">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 col-md-6 col-12">
            <div class="breadcrumbs-content">
              <h1 class="page-title">회원 탈퇴</h1>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-12">
            <ul class="breadcrumb-nav">
              <li>
                <a href="${root}/index">Home</a>
              </li>
              <li>Close Account</li>
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
                  ${userInfo.name}
                  <span><a href="javascript:void(0)">@${userInfo.id}</a></span>
                </h3>
              </div>
              <div class="dashboard-menu">
                <ul>
                  <li>
                    <a href="${root}/user/update"
                      ><i class="lni lni-pencil-alt"></i>회원정보 조회/수정</a
                    >
                  </li>
                  <li>
                    <a href="${root}/bookmark/selectAll"
                      ><i class="lni lni-bookmark"></i>관심 지역 조회</a
                    >
                  </li>
                  <li>
                  	<a class="active" href="${root}/user/remove"
      				><i class="lni lni-trash"></i>회원 탈퇴</a
                    >
                  </li>
                </ul>
                <div class="button">
                  <a class="btn" href="${root}/user/logout">Logout</a>
                </div>
              </div>
            </div>
          </div>

          <!-- 회원 탈퇴 -->
          <div class="col-lg-9 col-md-8 col-12">
            <div class="main-content">
              <div class="dashboard-block close-content mt-0">
                <h2>회원 탈퇴</h2>
                <h4>이 작업은 되돌릴 수 없습니다. 정말 회원탈퇴 하시겠습니까?</h4>
                <div class="button">
                	<form action="${root}/user/remove" method="post" class=".form-inline">
	                	<button type="submit" class="btn">탈퇴</button>
                	</form>
                  	<a href="${root}/user/update" class="btn btn-alt">취소</a>
                </div>
              </div>
            </div>
          </div>
          <!-- 회원 탈퇴 END -->
        </div>
      </div>
    </section>

    <!-- Start Footer Area -->
  <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <!--/ End Footer Area -->

    <a href="./delete-account.jsp#" class="scroll-top btn-hover" style="display: none">
      <i class="lni lni-chevron-up"></i>
    </a>

    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/wow.min.js"></script>
    <script src="../assets/js/tiny-slider.js"></script>
    <script src="../assets/js/glightbox.min.js"></script>
    <script src="../assets/js/main.js"></script>
  </body>
</html>
