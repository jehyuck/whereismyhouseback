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

    <!-- 메인 섹션 -->
    <div class="breadcrumbs">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 col-md-6 col-12">
            <div class="breadcrumbs-content">
              <h1 class="page-title">회원 정보 조회 및 수정</h1>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-12">
            <ul class="breadcrumb-nav">
              <li>
                <a href="${root}/index">Home</a>
              </li>
              <li>Profile Settings</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <section class="dashboard section">
      <div class="container">
        <div class="row">
          <!-- 사이드바 -->
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
                    <a class="active" href="${root}/user/update"
                      ><i class="lni lni-pencil-alt"></i>회원정보 조회/수정</a
                    >
                  </li>
                  <li>
                    <a href="${root}/bookmark/selectAll"
                      ><i class="lni lni-bookmark"></i>관심 지역 조회</a
                    >
                  </li>
                  <li>
                    <a href="${root}/user/remove"><i class="lni lni-trash"></i>회원 탈퇴</a>
                  </li>
                </ul>
                <div class="button">
                  <a class="btn" href="${root}/user/logout">Logout</a>
                </div>
              </div>
            </div>
          </div>
          <!-- 사이드바 END -->

          <!-- 회원 정보 조회/수정 -->
          <div class="col-lg-9 col-md-8 col-12">
            <div class="main-content">
              <div class="dashboard-block mt-0 profile-settings-block">
                <h3 class="block-title">회원 정보 조회 및 수정</h3>
                <div class="inner-block">
                  <div class="image">
                    <img src="${root}/assets/images/items-grid/author-1.jpg" alt="#" />
                  </div>
                  <form class="profile-setting-form" method="post" action="${root}/user/update">
                    <div class="row">
                      <div class="col-12">
                        <div class="form-group">
                          <label>아이디*</label>
                          <input name="id" type="text" value="${user.id}" readOnly/>
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="form-group">
                          <label>이름*</label>
                          <input name="name" type="text" value="${user.name}"/>
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="form-group">
                          <label>비밀번호*</label>
                          <input name="pass" type="password" value="${user.pass}" />
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="form-group">
                          <label>주소*</label>
                          <input name="address" type="text" value="${user.address}" />
                        </div>
                      </div>
                      <div class="col-12">
                        <div class="form-group">
                          <label>전화번호*</label>
                          <input name="phone" type="text" value="${user.phone}" />
                        </div>
                      </div>
                      
                      <div class="col-12">
                        <div class="form-group button mb-0">
                          <button type="submit" class="btn">수정</button>
                        </div>
                      </div>
                    </div>
                  </form>
                </div>

              </div>
            </div>
          </div>
          <!-- 회원 정보 수정 END -->
        </div>
      </div>
    </section>
    <!-- 메인 섹션 END -->

    <!-- Start Footer Area -->
  <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <!--/ End Footer Area -->

    <a href="./profile-settings.jsp#" class="scroll-top btn-hover" style="display: none">
      <i class="lni lni-chevron-up"></i>
    </a>

    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/wow.min.js"></script>
    <script src="../assets/js/tiny-slider.js"></script>
    <script src="../assets/js/glightbox.min.js"></script>
    <script src="../assets/js/main.js"></script>
  </body>
</html>
