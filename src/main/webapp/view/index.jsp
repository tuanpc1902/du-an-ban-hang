<%@ page pageEncoding="utf-8" %>
	<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8">
			<meta http-equiv="X-UA-Compatible" content="IE=edge">
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
			<title>Shopee - TuanPC</title>
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
			<link rel="stylesheet" href="/view/assets/css/base.css">
			<link rel="stylesheet" href="/view/assets/css/main.css">
			<link rel="icon" href="/view/assets/img/logo.png" type="image/icon type" />
			<link rel="stylesheet" href="/view/assets/fontawesome-free-5.15.3-web/css/all.min.css">
			<link rel="stylesheet"
				href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap&subset=vietnamese">
			<script type="text/javascript" src="/view/assets/js/main.js"></script>
		</head>

		<body>
			<!-- Block Elemnent Modifier -->
			<div class="app">
				<!-- Header -->
				<jsp:include page="layout/header.jsp"></jsp:include>
				<!-- container -->
				<div class="app__container">
					<div class="grid">
						<div class="grid__row app__content">
							<div class="grid__column-2">
								<nav class="category">
									<%-- <c:forEach var="item" items="items"> --%>
										<h3 class="category__heading">Danh mục</h3>
										<ul class="category-list">
											<li class="category-item category-item--active"><a href="#"
													class="category-item__link">Sản phẩm</a></li>
											<li class="category-item"><a href="#" class="category-item__link">Laptop</a>
											</li>
											<li class="category-item"><a href="#" class="category-item__link">Điện
													thoại</a>
											</li>
											<li class="category-item"><a href="#" class="category-item__link">Chuột, bàn
													phím</a></li>
											<li class="category-item"><a href="#" class="category-item__link">Quạt, tản
													nhiệt</a></li>
											<li class="category-item"><a href="#" class="category-item__link">Máy tính
													bàn</a></li>
											<li class="category-item"><a href="#" class="category-item__link">Tai nghe
													Gaming</a></li>
											<li class="category-item"><a href="#" class="category-item__link">Nguồn máy
													tính</a></li>
											<li class="category-item"><a href="#" class="category-item__link">Case máy
													tính</a></li>
											<li class="category-item"><a href="#" class="category-item__link">USB & ổ
													cứng</a></li>
										</ul>
										<%-- </c:forEach> --%>
								</nav>
							</div>
							<div class="grid__column-10">
								<div class="home__filter">
									<span class="home__filter-lable">Sắp xếp theo</span>
									<button class="home__filter__btn btn">Phổ biến</button>
									<button class="home__filter__btn btn btn--primary">Mới
										nhất</button>
									<button class="home__filter__btn btn">Bán chạy</button>

									<div class="select-input">
										<span class="select-input__lable">Giá</span> <i
											class="select-input-icon fas fa-angle-down"></i>
										<ul class="select-input__list">
											<li class="select-input-item"><a href="#" class="select-input-link">Giá thấp
													đến cao</a></li>
											<li class="select-input-item"><a href="#" class="select-input-link">Giá cap
													đến thấp</a></li>
										</ul>
									</div>

									<div class="home__filter__page">
										<span class="home__filter__page-num"> <span
												class="home__filter__page-current">${page.number+1}</span>/${page.totalPages}
										</span>

										<div class="home__filter__page-control">
											<a href="/index/?p=${page.number-1}" class="home__filter__page-btn">
												<i class="home__filter__page-icon fas fa-angle-left"></i>
											</a> <a href="/index/?p=${page.number+1}" class="home__filter__page-btn"> <i
													class="home__filter__page-icon fas fa-angle-right"></i>
											</a>
										</div>
									</div>
								</div>

								<div class="home__product">
									<!-- Grid -> Row -> Column  -->
									<div class="grid__row">
										<c:forEach var="item" items="${page.content}">
											<div class="grid__column-2-4">

												<a href="/detail/${item.id}" class="home__product-item"
													style="text-decoration: none;">
													<div class="home__product-item-img"
														style="background-image: url(/view/assets/img/${item.image});">
													</div>
													<h4 class="home__product-item-name">${item.name}</h4>
													<div class="home__product-item-price">
														<span
															class="home__product-item-price-current">${item.price}</span>
													</div>
													<div class="home__product-item-action">
														<span
															class="home__product-item-like home__product-item-like--liked">
															<i
																class="far fa-heart home__product-item-like-icon-empty"></i>
															<i
																class="fas fa-heart home__product-item-like-icon-fill"></i>
														</span>
														<div class="home__product-item-rating">
															<i
																class="home__product-item-rating__start-gold fas fa-star"></i>
															<i
																class="home__product-item-rating__start-gold fas fa-star"></i>
															<i
																class="home__product-item-rating__start-gold fas fa-star"></i>
															<i
																class="home__product-item-rating__start-gold fas fa-star"></i>
															<i class=" fas fa-star"></i>
														</div>
														<span class="home__product-item__sold">${item.createDate}</span>
													</div>
													<div class="home__product-item-origin">
														<span class="home__product-item-brand"></span> <span
															class="home__product-item-origin-name">TP. Hồ Chí
															Minh</span>
													</div>

													<div class="home__product-item-favorite">
														<i class="fas fa-check"></i> <span>Yêu thích</span>
													</div>
													<div class="home__product-item-sale-off">
														<span class="home__product-item-sale-off-percent">4%</span>
														<span class="home__product-item-sale-off-label">GIẢM</span>
													</div>
												</a>

											</div>
										</c:forEach>

									</div>
								</div>

								<!-- <ul class="pagination home__product__pagination">
									<li class="pagination__item"><a href="#" class="pagination__item__link"> <i
												class="pagination__item__icon fas fa-angle-left"></i>
										</a></li>
									<li class="pagination__item pagination__item--active"><a href="#"
											class="pagination__item__link">1</a></li>
									<li class="pagination__item"><a href="#" class="pagination__item__link">2</a></li>
									<li class="pagination__item"><a href="#" class="pagination__item__link">3</a></li>
									<li class="pagination__item"><a href="#" class="pagination__item__link">4</a></li>
									<li class="pagination__item"><a href="#" class="pagination__item__link">5</a></li>
									<li class="pagination__item"><a href="#" class="pagination__item__link">...</a></li>
									<li class="pagination__item"><a href="#" class="pagination__item__link">14</a></li>
									<li class="pagination__item"><a href="#" class="pagination__item__link"> <i
												class="pagination__item__icon fas fa-angle-right"></i>
										</a></li>
								</ul> -->
							</div>
						</div>
					</div>
				</div>

				<!-- footer -->
				<footer class="footer">
					<div class="grid">
						<div class="grid__row">
							<div class="grid__column-2-4">
								<h3 class="footer__heading">Chăm sóc khách hàng</h3>
								<ul class="footer__list">
									<li class="footer__item"><a href="" class="footer__item__link">Trung tâm trợ
											giúp</a></li>
									<li class="footer__item"><a href="" class="footer__item__link">Tổng đài:
											1800.8080</a></li>
									<li class="footer__item"><a href="" class="footer__item__link">Hướng dẫn mua
											hàng</a></li>
								</ul>
							</div>
							<div class="grid__column-2-4">
								<h3 class="footer__heading">Giới thiệu</h3>
								<ul class="footer__list">
									<li class="footer__item"><a href="" class="footer__item__link">Giới thiệu</a></li>
									<li class="footer__item"><a href="" class="footer__item__link">Tuyển dụng</a></li>
									<li class="footer__item"><a href="" class="footer__item__link">Điều khoản</a></li>
								</ul>
							</div>
							<div class="grid__column-2-4">
								<h3 class="footer__heading">Theo dõi chúng tôi</h3>
								<ul class="footer__list">
									<li class="footer__item"><a href="https://www.facebook.com/tuanpc.1902/"
											class="footer__item__link"> <i
												class="footer__item__icon fab fa-facebook"></i> Facebook
										</a></li>
									<li class="footer__item"><a href="https://www.instagram.com/t_uanpc.1902/"
											class="footer__item__link"> <i
												class="footer__item__icon fab fa-instagram"></i> Instagram
										</a></li>
									<li class="footer__item"><a href="http://linkedin.com/in/pham-cong-tuan"
											class="footer__item__link"> <i
												class="footer__item__icon fab fa-linkedin"></i> Linkedin
										</a></li>
								</ul>
							</div>
							<div class="grid__column-2-4">
								<h3 class="footer__heading">Danh mục</h3>
								<ul class="footer__list">
									<li class="footer__item"><a href="" class="footer__item__link">Laptop giá rẻ</a>
									</li>
									<li class="footer__item"><a href="" class="footer__item__link">Nguồn máy tính 80
											plus</a></li>
									<li class="footer__item"><a href="" class="footer__item__link">Chuột Logitech</a>
									</li>
								</ul>
							</div>
							<div class="grid__column-2-4">
								<h3 class="footer__heading">Vào cửa hàng trên ứng dụng</h3>
								<div class="footer__download">
									<img class="footer__download__pr" src="/view/assets/img/qr_code.png" alt="qr_code">
									<div class="footer__download__apps">
										<a class="footer__download__apps__link"
											href="https://itunes.apple.com/VN/app/id959841449?mt=8"> <img
												src="/view/assets/img/app_store.png" alt="app-store"
												class="footer__download__apps__img">
										</a> <a class="footer__download__apps__link"
											href="https://play.google.com/store/apps/details?id=com.shopee.vn&referrer=af_tranid%3Drsx9V4J79OX3NH5LwyqLcw%26pid%3DOrganicA%26c%3Dlp_home_and1">
											<img src="/view/assets/img/gg_play.png" alt="gg-play"
												class="footer__download__apps__img">
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="footer__bottom">
						<div class="grid">
							<p class="footer__text">© 2021 - Bản quyền thuộc về Công ty
								PS14046 - Phạm Công Tuấn !</p>
						</div>
					</div>
				</footer>
			</div>
			<!-- Modal -->
			<jsp:include page="layout/modal.jsp"></jsp:include>
		</body>

		</html>