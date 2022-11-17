<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Where is My House</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="../assets/images/favicon.svg" />
	<link href="../assets/css/" rel="stylesheet" />
    
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

	<!-- 로딩 액션 주니까 에러뜸 추후 추가예정 -->
    <!--<div class="preloader">
      <div class="preloader-inner">
        <div class="preloader-icon">
          <span></span>
          <span></span>
        </div>
      </div>
    </div>-->

    <!-- Start Header Area -->
    <%@ include file="/WEB-INF/views/common/header.jsp" %>
    <!-- End Header Area -->

    <div class="breadcrumbs">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-6 col-md-6 col-12">
            <div class="breadcrumbs-content">
              <h1 class="page-title">공지사항</h1>
            </div>
          </div>
          <div class="col-lg-6 col-md-6 col-12">
            <ul class="breadcrumb-nav">
              <li><a href="${root}/index">Home</a></li>
              <li>공지사항</li>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <section class="category-page section">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 col-md-4 col-12">
            <div class="category-sidebar">
              <div class="single-widget search">
                <h3>검색</h3>
                <form action="#">
                  <input type="text" placeholder="Search Here..." />
                  <button type="submit"><i class="lni lni-search-alt"></i></button>
                </form>
              </div>

              <div class="single-widget">
                <h3>All Categories</h3>
                <ul class="list">
                  <li>
                    <a href="javascript:void(0)"
                      ><i class="lni lni-control-panel"></i> Services <span>20</span></a
                    >
                  </li>
                  <li>
                    <a href="javascript:void(0)"
                      ><i class="lni lni-bullhorn"></i> Marketing <span>55</span></a
                    >
                  </li>
                  <li>
                    <a href="javascript:void(0)"
                      ><i class="lni lni-home"></i> Real Estate<span>35</span></a
                    >
                  </li>
                  <li>
                    <a href="javascript:void(0)"
                      ><i class="lni lni-bolt"></i> Electronics <span>60</span></a
                    >
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-lg-9 col-md-8 col-12">
            
            
            <div class="category-grid-list">
              <div class="row">
                <div class="col-12">
                  <div class="category-grid-topbar mb-3">
                    <div class="row align-items-center">
                      <div class="col-lg-6 col-md-6 col-12">
                        <h3 class="title">Showing 1-12 of 21 results found</h3>
                      </div>
                      <div class="col-lg-6 col-md-6 col-12">
                        <nav>
                          <div class="nav nav-tabs" id="nav-tab" role="tablist">
                            <button
                              class="nav-link active"
                              id="nav-list-tab"
                              data-bs-toggle="tab"
                              data-bs-target="#nav-list"
                              type="button"
                              role="tab"
                              aria-controls="nav-list"
                              aria-selected="true"
                            >
                              <i class="lni lni-list"></i>
                            </button>
                          </div>
                        </nav>
                      </div>
                    </div>
                  </div>
                  
                  
					<div class="col-lg-12 col-md-12 col-12">
						<div class="main-content">
                    		<div class="dashboard-block mt-0">
                    		<div class="row block-title">
                    		  <div class="col-lg-11 col-md-11 col-12">
                    			<h3 >공지사항 목록</h3>
                    		  </div>
                    		  <div class="col-lg-1 col-md-1 col-12 align-middle">
                    			<c:if test="${not empty userInfo and userInfo.id eq 'admin'}">
                    			<div class="action-btn">
									<a href="${root}/notice/insert"><i class="lni lni-plus"></i></a>
								</div>
								</c:if>
                    		  </div>
                    		</div>
                    		
                    		
								<div class="my-items">
									<div class="item-list-title">
										<div class="row align-items-center">
											<div class="col-lg-2 col-md-2 col-12">
												<p>글번호</p>
											</div>
											<div class="col-lg-3 col-md-3 col-12">
												<p>제목</p>
											</div>
											<div class="col-lg-2 col-md-2 col-12">
												<p>작성자</p>
											</div>
											<div class="col-lg-2 col-md-2 col-12">
												<p>작성일</p>
											</div>
											<div class="col-lg-2 col-md-2 col-12 align-right">
												<p>Action</p>
											</div>
										</div>
									</div>
									
                    <!-- start of list -->
                      <c:forEach items='${notices}' var='notice'>
                      <div class="single-item-list">
						<div class="row align-items-center">
							<div class="col-lg-2 col-md-2 col-12">
								<p>&nbsp;&nbsp;${notice.noticeNo}</p>
							</div>
							<div class="col-lg-3 col-md-3 col-12">
								<p>${fn:length(notice.title)>10
								?fn:substring(notice.title, 0, 10)
								:notice.title}</p>
							</div>
							<div class="col-lg-2 col-md-2 col-12">
								<p>${notice.author}</p>
							</div>
							<div class="col-lg-2 col-md-2 col-12">
								<p>${fn:substring(notice.createdTime, 0, 10)}</p>
							</div>
							
							
							
							<div class="col-lg-2 col-md-2 col-12 align-left">
								<ul class="action-btn">
									<li><a href="${root}/notice/select?noticeNo=${notice.noticeNo}"><i class="lni lni-eye"></i></a></li>
									<c:if test="${not empty userInfo and userInfo.id eq 'admin'}">
										<li><a href="${root}/notice/update?noticeNo=${notice.noticeNo}"><i class="lni lni-pencil"></i></a></li>
										<li><a href="${root}/notice/delete?noticeNo=${notice.noticeNo}"><i class="lni lni-trash"></i></a></li>
									</c:if>
								</ul>
							</div>
						</div>
					</div>
                      
                      	</c:forEach>
                    <!-- end of list -->
                  
                    
                    </div>
                  </div>
                </div>
                
                                     <!-- end of pagination -->
                      <div class="row">
                        <div class="col-12">
                          <div class="pagination left">
                            <ul class="pagination-list">
                              <li><a href="javascript:void(0)">1</a></li>
                              <li class="active"><a href="javascript:void(0)">2</a></li>
                              <li><a href="javascript:void(0)">3</a></li>
                              <li><a href="javascript:void(0)">4</a></li>
                              <li>
                                <a href="javascript:void(0)"
                                  ><i class="lni lni-chevron-right"></i
                                ></a>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    <!-- start of pagination -->
                
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

    <a href="#" class="scroll-top btn-hover">
      <i class="lni lni-chevron-up"></i>
    </a>

    <script
      data-cfasync="false"
      src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"
    ></script>
	<script src="${root}/assets/js/bootstrap.min.js"></script>
	<script src="${root}/assets/js/wow.min.js"></script>
	<script src="${root}/assets/js/tiny-slider.js"></script>
	<script src="${root}/assets/js/glightbox.min.js"></script>
	<script src="${root}/assets/js/main.js"></script>
  </body>
</html>
