<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0061)https://demo.graygrids.com/themes/classigrids-demo/login.jsp -->
<html class="no-js" lang="zxx">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Login - ClassiGrids Classified Ads and Listing Website Template</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="https://demo.graygrids.com/themes/classigrids-demo/assets/images/favicon.svg"
    />

    <link
      href="./Login - ClassiGrids Classified Ads and Listing Website Template_files/css2"
      rel="stylesheet"
    />
    <link
      href="./Login - ClassiGrids Classified Ads and Listing Website Template_files/css2(1)"
      rel="stylesheet"
    />


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

    <!-- 메인 섹션 START -->
    <div class="breadcrumbs">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 col-md-6 col-12">
            <div class="breadcrumbs-content">
              <h1 class="page-title">비밀번호 찾기</h1>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-12">
            <ul class="breadcrumb-nav">
              <li><a href="${root}/index">Home</a></li>
              <li>Find Password</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <section class="login section">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 offset-lg-3 col-md-8 offset-md-2 col-12">
            <div class="form-head">
              <h4 class="title">비밀번호 찾기</h4>
              <form action="${root}/user/find" method="post">
                <div class="form-group">
                  <label>id*</label>
                  <input name="id" type="text" />
                </div>
                <div class="form-group">
                  <label>이름*</label>
                  <input name="name" type="text" />
                </div>
                <div class="form-group">
                  <label>전화번호*</label>
                  <input name="phone" type="text" />
                </div>
                <div class="button">
                  <button type="submit" class="btn">비밀번호 찾기</button>
                </div>
                <div class="row align-items-center">
                  <div class="col-lg-6 col-md-6 col-12">
                    <p class="outer-link">
                      <a href="${root}/user/login">로그인</a>
                    </p>
                  </div>
                  <div class="col-lg-6 col-md-6 col-12">
                    <p class="outer-link">
                      <a href="${root}/user/regist">회원가입</a>
                    </p>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- 메인 섹션 END -->

    <!-- Start Footer Area -->
  <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <!--/ End Footer Area -->

    <a href="login.jsp#" class="scroll-top btn-hover">
      <i class="lni lni-chevron-up"></i>
    </a>

    <script src="./Login - ClassiGrids Classified Ads and Listing Website Template_files/bootstrap.min.js.다운로드"></script>
    <script src="./Login - ClassiGrids Classified Ads and Listing Website Template_files/wow.min.js.다운로드"></script>
    <script src="./Login - ClassiGrids Classified Ads and Listing Website Template_files/tiny-slider.js.다운로드"></script>
    <script src="./Login - ClassiGrids Classified Ads and Listing Website Template_files/glightbox.min.js.다운로드"></script>
    <script src="./Login - ClassiGrids Classified Ads and Listing Website Template_files/main.js.다운로드"></script>
  </body>
</html>
