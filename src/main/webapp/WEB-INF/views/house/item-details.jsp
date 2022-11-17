<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <link
      rel="shortcut icon"
      type="image/x-icon"
      href="https://demo.graygrids.com/themes/classigrids-demo/assets/images/favicon.svg"
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

    <div class="breadcrumbs">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 col-md-6 col-12">
            <div class="breadcrumbs-content">
              <h1 class="page-title">Apt Details</h1>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-12">
            <ul class="breadcrumb-nav">
              <li>
                <a href="${root}/index">Home</a>
              </li>
              <li>Apt Details</li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <section class="item-details section">
      <div class="container">
        <div class="top-area">
          <div class="row">
            <div class="col-lg-6 col-md-12 col-12">
              <div class="product-images">
                <main id="gallery">
                  <!-- kakao map start -->
                  <div id="map" style="width: 100%; height: 700px"></div>
                  <script
                    type="text/javascript"
                    src="//dapi.kakao.com/v2/maps/sdk.js?appkey=86fe11c6c628248e5e1d06dca421c602"
                  ></script>
                  <script>
                    var lat = `${houseInfo.lat}`,
                      lng = `${houseInfo.lng}`;
                    var mapContainer = document.getElementById("map"), // 지도를 표시할 div
                      mapOption = {
                        center: new kakao.maps.LatLng(lat, lng), // 지도의 중심좌표
                        level: 3, // 지도의 확대 레벨
                      };

                    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

                    // 마커가 표시될 위치입니다
                    var markerPosition = new kakao.maps.LatLng(lat, lng);

                    // 마커를 생성합니다
                    var marker = new kakao.maps.Marker({
                      position: markerPosition,
                    });

                    // 마커가 지도 위에 표시되도록 설정합니다
                    marker.setMap(map);

                    // 아래 코드는 지도 위의 마커를 제거하는 코드입니다
                    // marker.setMap(null);
                  </script>
                  <!-- <img src="./item-details_files/image1.jpg" id="current" alt="#"> -->
                  <!-- kakao map end -->
                </main>
              </div>
            </div>
            <div class="col-lg-6 col-md-12 col-12">
              <div class="product-info">
                <h2 class="title">${houseInfo.aptName}</h2>
                <p class="location">
                  <i class="lni lni-map-marker"></i
                  ><a href="javascript:void(0)"
                    >${houseInfo.sidoName} ${houseInfo.gugunName} ${houseInfo.dongName}
                    ${houseInfo.jibun}</a
                  >
                </p>
                <ul>
                  <li style = "font-size: 18px; font-weight: 600; color: #5830e0;">최근 거래가</li>
                  <li style="font-size: 18px; font-weight: 600; color: #5830e0; float: right">${houseInfo.dealAmount} 만 원</li>
                </ul>
                <div class="list-info">
                  <div style="overflow: auto; height: 500px">
                    <table class="table table-striped table-hover">
                      <thead>
                        <tr>
                          <th>거래 날짜</th>
                          <th>전용 면적</th>
                          <th>층</th>
                          <th>거래 가격</th>
                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach items="${aptList}" var="apt">
                          <tr>
                            <td>${apt.dealYear}.${apt.dealMonth}.${apt.dealDay}</td>
                            <td>${apt.area}</td>
                            <td>${apt.floor}</td>
                            <td>${apt.dealAmount}</td>
                          </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Start Footer Area -->
  <%@ include file="/WEB-INF/views/common/footer.jsp" %>
    <!--/ End Footer Area -->

    <a href="item-details.jsp#" class="scroll-top btn-hover">
      <i class="lni lni-chevron-up"></i>
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
