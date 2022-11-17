<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:set var="root" value="${pageContext.request.contextPath}"/>
    <header class="header navbar-area">
    <link rel="stylesheet" href="/assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/assets/css/LineIcons.2.0.css" />
    <link rel="stylesheet" href="/assets/css/animate.css" />
    <link rel="stylesheet" href="/assets/css/tiny-slider.css" />
    <link rel="stylesheet" href="/assets/css/glightbox.min.css" />
    <link rel="stylesheet" href="/assets/css/main.css" />
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-12">
            <div class="nav-inner">
              <nav class="navbar navbar-expand-lg">
                <a class="navbar-brand" href="${root}/index">
                  <img src="${root}/assets/images/logo/logo.svg" alt="Logo" />
                </a>
                <button
                  class="navbar-toggler mobile-menu-btn"
                  type="button"
                  data-bs-target="#navbarSupportedContent"
                  aria-controls="navbarSupportedContent"
                  aria-expanded="false"
                  aria-label="Toggle navigation"
                >
                  <span class="toggler-icon"></span>
                  <span class="toggler-icon"></span>
                  <span class="toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse sub-menu-bar" id="navbarSupportedContent">
                  <ul id="nav" class="navbar-nav ms-auto">
                    <li class="nav-item">
                      <a
                        class="active dd-menu collapsed"
                        href="${root}/index"
                        data-bs-toggle="collapse"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                        >Home</a
                      >
                    </li>
                    <li class="nav-item">
                      <a
                        class="dd-menu collapsed"
                        href="javascript:void(0)"
                        data-bs-toggle="collapse"
                        data-bs-target="#submenu-1-4"
                        aria-controls="navbarSupportedContent"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                        >Pages</a
                      >
                      <ul class="sub-menu collapse" id="submenu-1-4">
                        <ul>
                          <li class="nav-item"><a href="${root}/house/page">검색</a></li>
                          <li class="nav-item"><a href="${root}/pages/about-us">홈페이지 소개</a></li>
                          <li class="nav-item"><a href="${root}/notice/selectAll">공지사항</a></li>
                          <li class="nav-item"><a href="${root}/pages/sitemap">사이트맵</a></li>
                        </ul>
                      </ul>
                    </li>
                    <c:if test="${not empty userInfo}">
                        <li class="nav-item">
                          <a
                            class="dd-menu collapsed"
                            href="javascript:void(0)"
                            data-bs-toggle="collapse"
                            data-bs-target="#submenu-1-5"
                            aria-controls="navbarSupportedContent"
                            aria-expanded="false"
                            aria-label="Toggle navigation"
                            >My Page</a
                          >
                          <ul class="sub-menu collapse" id="submenu-1-5">
                            <li class="nav-item"><a href="${root}/bookmark/selectAll">나의 관심 지역</a></li>
                          </ul>
                        </li>
                    </c:if>
                  </ul>
                </div>
                <!-- navbar collapse -->
                <div class="login-button">
                  <ul>
                      <c:choose>
                      <c:when test='${empty userInfo}'>
                        <li>
                          <a href="${root}/user/login"><i class="lni lni-enter"></i> 로그인</a>
                        </li>
                        <li>
                          <a href="${root}/user/regist"><i class="lni lni-user"></i> 회원가입</a>
                        </li>
                       </c:when>
                       <c:otherwise>
                           <c:choose>
                               <c:when test="${userInfo.id eq 'admin'}" >
                               
                                <li>
                                  <a href="${root}/notice/selectAll"><i class="lni lni-user"></i> 공지사항 관리</a>
                                </li>
                                <li>
                                  <a href="${root}/user/logout"><i class="lni lni-user"></i> 로그아웃</a>
                                </li>
                               </c:when>
                               <c:otherwise>
                                <li>
                                  <a href="${root}/user/update"><i class="lni lni-user"></i> 회원정보</a>
                                </li>
                                <li>
                                  <a href="${root}/user/logout"><i class="lni lni-user"></i> 로그아웃</a>
                                </li>
                               </c:otherwise>
                           </c:choose>
                       </c:otherwise>
                     </c:choose>
                  </ul>
                </div>
              </nav>
              <!-- navbar -->
            </div>
          </div>
        </div>
        <!-- row -->
      </div>
      <!-- container -->
    <script>
      <c:if test="${!empty msg}">
        alert("${msg}");
      </c:if>
    </script>
    </header>