<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Where is my house</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="../assets/images/favicon.svg" />
    <!-- Place favicon.ico in the root directory -->

    <!-- Web Font -->
    <link
      href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
      rel="stylesheet"
    />
    <link href="https://fonts.googleapis.com/css2?family=Lato&display=swap" rel="stylesheet" />

  </head>

  <body>
    <!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and
        security.
      </p>
    <![endif]-->

    <!-- Preloader -->
    <div class="preloader">
      <div class="preloader-inner">
        <div class="preloader-icon">
          <span></span>
          <span></span>
        </div>
      </div>
    </div>
    <!-- /End Preloader -->

    <!-- Start Header Area -->
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <!-- End Header Area -->

    <!-- Start Breadcrumbs -->
    <div class="breadcrumbs">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 col-md-6 col-12">
            <div class="breadcrumbs-content">
              <h1 class="page-title">About Us</h1>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-12">
            <ul class="breadcrumb-nav">
              <li><a href="${root}/index">Home</a></li>
              <li>About Us</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <!-- End Breadcrumbs -->

    <!-- Start About Area -->
    <section class="about-us section">
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-lg-6 col-md-12 col-12">
            <div class="content-left wow fadeInLeft" data-wow-delay=".3s">
              <img src="../assets/images/about/choose-left.jpg" alt="#" />
              <a
                href="https://www.youtube.com/watch?v=r44RKWyfcFw&fbclid=IwAR21beSJORalzmzokxDRcGfkZA1AtRTE__l5N4r09HcGS5Y6vOluyouM9EM"
                class="glightbox video"
                ><i class="lni lni-play"></i
              ></a>
            </div>
          </div>
          <div class="col-lg-6 col-md-12 col-12">
            <!-- content-1 start -->
            <div class="content-right wow fadeInRight" data-wow-delay=".5s">
              <!-- Heading -->
              <span class="sub-heading">About</span>
              <h2>Where is My House?</h2>
              <p>
                Where is My House는 고객에게 맞춤형 부동산 거래 정보를 알려주는 웹 서비스입니다. 아파트/주택 별, 매매/전월세 별 거래내역을 제공합니다.
              </p>
              <h3>What We Do</h3>
              <p>
                관심지역 북마크 기능을 지원하여 고객이 조금 더 편리하게 사이트를 이용할 수 있도록 돕고 있습니다. 
                Free, Standartd, Premium의 다양한 요금제 선택하여 서비스를 이용해 보세요.
              </p>
              <!-- End Heading -->
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End About Area -->

    <!-- Start How Works Area -->
    <section class="how-works section">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title">
              <h2 class="wow fadeInUp" data-wow-delay=".4s">How it Works</h2>
              <p class="wow fadeInUp" data-wow-delay=".6s">
                There are many variations of passages of Lorem Ipsum available, but the majority
                have suffered alteration in some form.
              </p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-4 col-12">
            <!-- Start Single Work -->
            <div class="single-work wow fadeInUp" data-wow-delay=".2s">
              <span class="serial">01</span>
              <h3>Create Account</h3>
              <p>
                Lorem ipsum dolor sit amet constur adipisicing sed do eiusmod tempor incididunt
                labore.
              </p>
            </div>
            <!-- End Single Work -->
          </div>
          <div class="col-lg-4 col-md-4 col-12">
            <!-- Start Single Work -->
            <div class="single-work wow fadeInUp" data-wow-delay=".4s">
              <span class="serial">02</span>
              <h3>Post Your Trades</h3>
              <p>
                Lorem ipsum dolor sit amet constur adipisicing sed do eiusmod tempor incididunt
                labore.
              </p>
            </div>
            <!-- End Single Work -->
          </div>
          <div class="col-lg-4 col-md-4 col-12">
            <!-- Start Single Work -->
            <div class="single-work wow fadeInUp" data-wow-delay=".6s">
              <span class="serial">03</span>
              <h3>Sell Your Item</h3>
              <p>
                Lorem ipsum dolor sit amet constur adipisicing sed do eiusmod tempor incididunt
                labore.
              </p>
            </div>
            <!-- End Single Work -->
          </div>
        </div>
      </div>
    </section>
    <!-- End How Works Area -->

    <!-- Start Achievement Area -->
    <section class="our-achievement section">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-3 col-12">
            <div class="single-achievement wow fadeInUp" data-wow-delay=".2s">
              <h3 class="counter">
                <span id="secondo1" class="countup" cup-end="1250">1250</span>+
              </h3>
              <p>Regular Trades</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-12">
            <div class="single-achievement wow fadeInUp" data-wow-delay=".4s">
              <h3 class="counter"><span id="secondo2" class="countup" cup-end="350">350</span>+</h3>
              <p>Locations</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-12">
            <div class="single-achievement wow fadeInUp" data-wow-delay=".6s">
              <h3 class="counter">
                <span id="secondo3" class="countup" cup-end="2500">2500</span>+
              </h3>
              <p>Reguler Members</p>
            </div>
          </div>
          <div class="col-lg-3 col-md-3 col-12">
            <div class="single-achievement wow fadeInUp" data-wow-delay=".6s">
              <h3 class="counter"><span id="secondo3" class="countup" cup-end="250">250</span>+</h3>
              <p>Premium Trades</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Achievement Area -->

    <!-- Start Pricing Table Area -->
    <section class="pricing-table section">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title">
              <h2 class="wow fadeInUp" data-wow-delay=".4s">Pricing Plan</h2>
              <p class="wow fadeInUp" data-wow-delay=".6s">
                There are many variations of passages of Lorem Ipsum available, but the majority
                have suffered alteration in some form.
              </p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-6 col-12">
            <!-- Single Table -->
            <div class="single-table wow fadeInUp" data-wow-delay=".2s">
              <!-- Table Head -->
              <div class="table-head">
                <div class="price">
                  <h2 class="amount">$00<span class="duration">/ Month</span></h2>
                </div>
                <h4 class="title">Free</h4>
              </div>
              <!-- End Table Head -->
              <!-- Table List -->
              <ul class="table-list">
                <li>One Listing</li>
                <li>Contact Display</li>
                <li>Image Gallery</li>
                <li>30 Days Availablity</li>
                <li>Non-Featured</li>
                <li>Business Tagline</li>
              </ul>
              <!-- End Table List -->
              <!-- Table Bottom -->
              <div class="button">
                <a class="btn" href="javascript:void(0)">Select Plan</a>
              </div>
              <!-- End Table Bottom -->
            </div>
            <!-- End Single Table-->
          </div>
          <div class="col-lg-4 col-md-6 col-12">
            <!-- Single Table -->
            <div class="single-table wow fadeInUp" data-wow-delay=".4s">
              <!-- Table Head -->
              <div class="table-head">
                <div class="price">
                  <h2 class="amount">$59<span class="duration">/ Month</span></h2>
                </div>
                <h4 class="title">Standard</h4>
              </div>
              <!-- End Table Head -->
              <!-- Table List -->
              <ul class="table-list">
                <li>One Listing</li>
                <li>Contact Display</li>
                <li>Image Gallery</li>
                <li>60 Days Availablity</li>
                <li>Non-Featured</li>
                <li>Business Tagline</li>
              </ul>
              <!-- End Table List -->
              <!-- Table Bottom -->
              <div class="button">
                <a class="btn" href="javascript:void(0)">Select Plan</a>
              </div>
              <!-- End Table Bottom -->
            </div>
            <!-- End Single Table-->
          </div>
          <div class="col-lg-4 col-md-6 col-12">
            <!-- Single Table -->
            <div class="single-table wow fadeInUp" data-wow-delay=".6s">
              <!-- Table Head -->
              <div class="table-head">
                <div class="price">
                  <h2 class="amount">$99<span class="duration">/ Month</span></h2>
                </div>
                <h4 class="title">Premium</h4>
              </div>
              <!-- End Table Head -->
              <!-- Table List -->
              <ul class="table-list">
                <li>One Listing</li>
                <li>Contact Display</li>
                <li>Image Gallery</li>
                <li>90 Days Availablity</li>
                <li>Non-Featured</li>
                <li>Business Tagline</li>
              </ul>
              <!-- End Table List -->
              <!-- Table Bottom -->
              <div class="button">
                <a class="btn" href="javascript:void(0)">Select Plan</a>
              </div>
              <!-- End Table Bottom -->
            </div>
            <!-- End Single Table-->
          </div>
        </div>
      </div>
    </section>
    <!--/ End Pricing Table Area -->

    <!-- Start Clients Area -->
    <div class="client-logo-section">
      <div class="container">
        <div class="client-logo-wrapper">
          <div class="client-logo-carousel d-flex align-items-center justify-content-between">
            <div class="client-logo">
              <img src="../assets/images/clients/client1.svg" alt="#" />
            </div>
            <div class="client-logo">
              <img src="../assets/images/clients/client2.svg" alt="#" />
            </div>
            <div class="client-logo">
              <img src="../assets/images/clients/client3.svg" alt="#" />
            </div>
            <div class="client-logo">
              <img src="../assets/images/clients/client4.svg" alt="#" />
            </div>
            <div class="client-logo">
              <img src="../assets/images/clients/client5.svg" alt="#" />
            </div>
            <div class="client-logo">
              <img src="../assets/images/clients/client2.svg" alt="#" />
            </div>
            <div class="client-logo">
              <img src="../assets/images/clients/client3.svg" alt="#" />
            </div>
            <div class="client-logo">
              <img src="../assets/images/clients/client4.svg" alt="#" />
            </div>
            <div class="client-logo">
              <img src="../assets/images/clients/client5.svg" alt="#" />
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Clients Area -->

    <!-- Start Newsletter Area -->
    <div class="newsletter section">
      <div class="container">
        <div class="inner-content">
          <div class="row align-items-center">
            <div class="col-lg-6 col-md-6 col-12">
              <div class="title">
                <i class="lni lni-alarm"></i>
                <h2>Newsletter</h2>
                <p>We don't send spam so don't worry.</p>
              </div>
            </div>
            <div class="col-lg-6 col-md-6 col-12">
              <div class="form">
                <form action="#" method="get" target="_blank" class="newsletter-form">
                  <input name="EMAIL" placeholder="Your email address" type="email" />
                  <div class="button">
                    <button class="btn">Subscribe<span class="dir-part"></span></button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- End Newsletter Area -->

    <!-- Start Footer Area -->
  <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <!--/ End Footer Area -->

    <!-- ========================= scroll-top ========================= -->
    <a href="#" class="scroll-top btn-hover">
      <i class="lni lni-chevron-up"></i>
    </a>

    <!-- ========================= JS here ========================= -->
    <script src="../assets/js/bootstrap.min.js"></script>
    <script src="../assets/js/wow.min.js"></script>
    <script src="../assets/js/tiny-slider.js"></script>
    <script src="../assets/js/glightbox.min.js"></script>
    <script src="../assets/js/count-up.min.js"></script>
    <script src="../assets/js/main.js"></script>
    <script type="text/javascript">
      //====== Clients Logo Slider
      tns({
        container: ".client-logo-carousel",
        slideBy: "page",
        autoplay: true,
        autoplayButtonOutput: false,
        mouseDrag: true,
        gutter: 15,
        nav: false,
        controls: false,
        responsive: {
          0: {
            items: 1,
          },
          540: {
            items: 3,
          },
          768: {
            items: 4,
          },
          992: {
            items: 4,
          },
          1170: {
            items: 6,
          },
        },
      });

      //========= glightbox
      GLightbox({
        href: "https://www.youtube.com/watch?v=r44RKWyfcFw&fbclid=IwAR21beSJORalzmzokxDRcGfkZA1AtRTE__l5N4r09HcGS5Y6vOluyouM9EM",
        type: "video",
        source: "youtube", //vimeo, youtube or local
        width: 900,
        autoplayVideos: true,
      });

      //====== counter up
      var cu = new counterUp({
        start: 0,
        duration: 2000,
        intvalues: true,
        interval: 100,
        append: " ",
      });
      cu.start();
    </script>
  </body>
</html>
