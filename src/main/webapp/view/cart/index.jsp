<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Giỏ Hàng</title>
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
			<link rel="stylesheet" href="/view/assets/css/base.css">
			<link rel="stylesheet" href="/view/assets/css/main.css">
			<link rel="stylesheet" href="/view/assets/css/product.css">
			<link rel="stylesheet" href="/view/assets/css/cart.css">
			<link rel="icon" href="/view/assets/img/logo.png" type="image/icon type" />
			<link rel="stylesheet" href="/view/assets/fontawesome-free-5.15.3-web/css/all.min.css">
			<link rel="stylesheet"
				href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap&subset=vietnamese">
			<script src="/view/assets/js/main.js"></script>
		</head>

		<body>
			<header class="header">
				<div class="grid">
					<nav class="header__navbar">
						<ul class="header__navbar-list">
							<li class="header__navbar-item header__navbar-item-has-qr header__navbar-item--separate">
								Vào cửa hàng trên ứng dụng TuanPC
								<!-- QR -->
								<div class="header__qr">
									<img src="/view/assets/img/qr_code.png" alt="QR Code" class="header__qr-img">
									<div class="header__qr-apps">
										<a href="" class="header__qr-link">
											<img src="/view/assets/img/app_store.png" alt="App Store"
												class="header__qr-download-img">
										</a>
										<a href="" class="header__qr-link">
											<img src="/view/assets/img/gg_play.png" alt="Google Play"
												class="header__qr-download-img">
										</a>
									</div>
								</div>
								<!-- / -->
							</li>
							<li class="header__navbar-item">
								<span class="header__navbar-title--no-pointer">Kết nối</span>
								<a href="" class="header__navbar-icon-link">
									<i class="header__navbar-icon fab fa-facebook"></i>
								</a>
								<a href="" class="header__navbar-icon-link">
									<i class="header__navbar-icon fab fa-instagram"></i>
								</a>
							</li>
						</ul>
						<ul class="header__navbar-list">
							<li class="header__navbar-item header__navbar_item--has-notify">
								<a href="" class="header__navbar-item-link">
									<i class="header__navbar-icon far fa-bell"></i>
									Thông báo
								</a>
								<div class="header__notify">
									<header class="header__notify-header">
										<h3>Thông báo mới nhận</h3>
									</header>
									<ul class="header__notify-list">
										<li class="header__notify-item header__notify-item--viewed">
											<a href="" class="header__notify-link">
												<img src="https://cf.shopee.vn/file/5082d50c7c3f735700e7f0f7e743cd68_tn"
													alt="" class="header__notify-img">
												<div class="header__notify-info">
													<span class="header__notify-name">Phạm Công Tuấn ơi! Vào săn mã
														FREESHIP đơn 0Đ</span>
													<spam class="header__notify-descriotion">⏰ 0H-9H-12H-15H-18H-21H
														🔥 Mã HOT hết nhanh - Săn ngay kẻo mất!</spam>
												</div>
											</a>
										</li>
										<li class="header__notify-item">
											<a href="" class="header__notify-link">
												<img src="https://cf.shopee.vn/file/e50c4d3448b60cd6344b7cfea45e58fa_tn"
													alt="" class="header__notify-img">
												<div class="header__notify-info">
													<span class="header__notify-name">2 MÃ FREESHIP TẶNG BẠN</span>
													<spam class="header__notify-descriotion">🚛 Freeship đến 15K đơn từ
														50K
														🔥 Mã giảm HOT 10K cho đơn 0Đ
														🙌 Mã sẵn trong ví - chốt đơn chốt đơn!</spam>
												</div>
											</a>
										</li>
										<li class="header__notify-item">
											<a href="" class="header__notify-link">
												<img src="https://cf.shopee.vn/file/9bd80298caf8e9aacb5f1c2aa4487eb8_tn"
													alt="" class="header__notify-img">
												<div class="header__notify-info">
													<span class="header__notify-name">AirPay tặng bạn Voucher
														APAPR2GIFT1 giảm 40K</span>
													<spam class="header__notify-descriotion">⚡ Nhanh tay mở ví. Shopping
														hết ý! 🎁 Vào rinh ngay Voucher giảm đến 40K!</spam>
												</div>
											</a>
										</li>
									</ul>
									<footer class="header__notify-footer">
										<a href="" class="header__notify-footer-btn">Xem tất cả</a>
									</footer>
								</div>
							</li>
							<li class="header__navbar-item">
								<a href="" class="header__navbar-item-link">
									<i class="header__navbar-icon far fa-question-circle"></i>
									Trợ giúp</a>
							</li>
							<!-- <li class="header__navbar-item header__navbar-item--strong header__navbar-item--separate">
                        Đăng ký
                    </li>
                    <li class="header__navbar-item header__navbar-item--strong">Đăng nhập</li> -->
							<li class="header__navbar-item header__navbar-user">
								<img src="https://yt3.ggpht.com/yti/ANoDKi5qmmdVIHTLjd9HvoOsaNhCF5AeciR93OFy-tcTuA=s88-c-k-c0x00ffffff-no-rj-mo"
									alt="" class="header__navbar-user-img">
								<span class="header__navbar-user-name">Công Tuấn</span>

								<ul class="header__navbar-user-menu">
									<li class="header__navbar_user-item">
										<a href="">Tài khoản của tôi</a>
									</li>
									<li class="header__navbar_user-item">
										<a href="">Địa chỉ của tôi</a>
									</li>
									<li class="header__navbar_user-item">
										<a href="">Đơn mua</a>
									</li>
									<li class="header__navbar_user-item header__navbar_user-item--separate">
										<a href="">Đăng xuất</a>
									</li>
								</ul>
							</li>
						</ul>
					</nav>
					<!-- Header with search -->
					<div class="header__with-search">
						<div class="header__logo">
							<a href="/index" class="header__logo-link">
								<svg viewBox="0 0 192 65" class="header__logo-img">
									<g fill-rule="evenodd">
										<path fill="#fff"
											d="M35.6717403 44.953764c-.3333497 2.7510509-2.0003116 4.9543414-4.5823845 6.0575984-1.4379707.6145919-3.36871.9463856-4.896954.8421628-2.3840266-.0911143-4.6237865-.6708937-6.6883352-1.7307424-.7375522-.3788551-1.8370513-1.1352759-2.6813095-1.8437757-.213839-.1790053-.239235-.2937577-.0977428-.4944671.0764015-.1151823.2172535-.3229831.5286218-.7791994.45158-.6616533.5079208-.7446018.5587128-.8221779.14448-.2217688.3792333-.2411091.6107855-.0588804.0243289.0189105.0243289.0189105.0426824.0333083.0379873.0294402.0379873.0294402.1276204.0990653.0907002.0706996.14448.1123887.166248.1287205 2.2265285 1.7438508 4.8196989 2.7495466 7.4376251 2.8501162 3.6423042-.0496401 6.2615109-1.6873341 6.7308041-4.2020035.5160305-2.7675977-1.6565047-5.1582742-5.9070334-6.4908212-1.329344-.4166762-4.6895175-1.7616869-5.3090528-2.1250697-2.9094471-1.7071043-4.2697358-3.9430584-4.0763845-6.7048539.296216-3.8283059 3.8501677-6.6835796 8.340785-6.702705 2.0082079-.004083 4.0121475.4132378 5.937338 1.2244562.6816382.2873109 1.8987274.9496089 2.3189359 1.2633517.2420093.1777159.2898136.384872.1510957.60836-.0774686.12958-.2055158.3350171-.4754821.7632974l-.0029878.0047276c-.3553311.5640922-.3664286.5817134-.447952.7136572-.140852.2144625-.3064598.2344475-.5604202.0732783-2.0600669-1.3839063-4.3437898-2.0801572-6.8554368-2.130442-3.126914.061889-5.4706057 1.9228561-5.6246892 4.4579402-.0409751 2.2896772 1.676352 3.9613243 5.3858811 5.2358503 7.529819 2.4196871 10.4113092 5.25648 9.869029 9.7292478M26.3725216 5.42669372c4.9022893 0 8.8982174 4.65220288 9.0851664 10.47578358H17.2875686c.186949-5.8235807 4.1828771-10.47578358 9.084953-10.47578358m25.370857 11.57065968c0-.6047069-.4870064-1.0948761-1.0875481-1.0948761h-11.77736c-.28896-7.68927544-5.7774923-13.82058185-12.5059489-13.82058185-6.7282432 0-12.2167755 6.13130641-12.5057355 13.82058185l-11.79421958.0002149c-.59136492.0107446-1.06748731.4968309-1.06748731 1.0946612 0 .0285807.00106706.0569465.00320118.0848825H.99995732l1.6812605 37.0613963c.00021341.1031483.00405483.2071562.01173767.3118087.00170729.0236381.003628.0470614.00554871.0704847l.00362801.0782207.00405483.004083c.25545428 2.5789222 2.12707837 4.6560709 4.67201764 4.7519129l.00576212.0055872h37.4122078c.0177132.0002149.0354264.0004298.0531396.0004298.0177132 0 .0354264-.0002149.0531396-.0004298h.0796027l.0017073-.0015043c2.589329-.0706995 4.6867431-2.1768587 4.9082648-4.787585l.0012805-.0012893.0017073-.0350275c.0021341-.0275062.0040548-.0547975.0057621-.0823037.0040548-.065757.0068292-.1312992.0078963-.1964115l1.8344904-37.207738h-.0012805c.001067-.0186956.0014939-.0376062.0014939-.0565167M176.465457 41.1518926c.720839-2.3512494 2.900423-3.9186779 5.443734-3.9186779 2.427686 0 4.739107 1.6486899 5.537598 3.9141989l.054826.1556978h-11.082664l.046506-.1512188zm13.50267 3.4063683c.014933.0006399.014933.0006399.036906.0008531.021973-.0002132.021973-.0002132.044372-.0008531.53055-.0243144.950595-.4766911.950595-1.0271786 0-.0266606-.000853-.0496953-.00256-.0865936.000427-.0068251.000427-.020262.000427-.0635588 0-5.1926268-4.070748-9.4007319-9.09145-9.4007319-5.020488 0-9.091235 4.2081051-9.091235 9.4007319 0 .3871116.022399.7731567.067838 1.1568557l.00256.0204753.01408.1013102c.250022 1.8683731 1.047233 3.5831812 2.306302 4.9708108-.00064-.0006399.00064.0006399.007253.0078915 1.396026 1.536289 3.291455 2.5833031 5.393601 2.9748936l.02752.0053321v-.0027727l.13653.0228215c.070186.0119439.144211.0236746.243409.039031 2.766879.332724 5.221231-.0661182 7.299484-1.1127057.511777-.2578611.971928-.5423827 1.37064-.8429007.128211-.0968312.243622-.1904632.34346-.2781231.051412-.0452164.092372-.083181.114131-.1051493.468898-.4830897.498124-.6543572.215249-1.0954297-.31146-.4956734-.586228-.9179769-.821744-1.2675504-.082345-.1224254-.154023-.2267215-.214396-.3133151-.033279-.0475624-.033279-.0475624-.054399-.0776356-.008319-.0117306-.008319-.0117306-.013866-.0191956l-.00256-.0038391c-.256208-.3188605-.431565-.3480805-.715933-.0970445-.030292.0268739-.131624.1051493-.14997.1245582-1.999321 1.775381-4.729508 2.3465571-7.455854 1.7760208-.507724-.1362888-.982595-.3094759-1.419919-.5184948-1.708127-.8565509-2.918343-2.3826022-3.267563-4.1490253l-.02752-.1394881h13.754612zM154.831964 41.1518926c.720831-2.3512494 2.900389-3.9186779 5.44367-3.9186779 2.427657 0 4.739052 1.6486899 5.537747 3.9141989l.054612.1556978h-11.082534l.046505-.1512188zm13.502512 3.4063683c.015146.0006399.015146.0006399.037118.0008531.02176-.0002132.02176-.0002132.044159-.0008531.530543-.0243144.950584-.4766911.950584-1.0271786 0-.0266606-.000854-.0496953-.00256-.0865936.000426-.0068251.000426-.020262.000426-.0635588 0-5.1926268-4.070699-9.4007319-9.091342-9.4007319-5.020217 0-9.091343 4.2081051-9.091343 9.4007319 0 .3871116.022826.7731567.068051 1.1568557l.00256.0204753.01408.1013102c.250019 1.8683731 1.04722 3.5831812 2.306274 4.9708108-.00064-.0006399.00064.0006399.007254.0078915 1.396009 1.536289 3.291417 2.5833031 5.393538 2.9748936l.027519.0053321v-.0027727l.136529.0228215c.070184.0119439.144209.0236746.243619.039031 2.766847.332724 5.22117-.0661182 7.299185-1.1127057.511771-.2578611.971917-.5423827 1.370624-.8429007.128209-.0968312.243619-.1904632.343456-.2781231.051412-.0452164.09237-.083181.11413-.1051493.468892-.4830897.498118-.6543572.215246-1.0954297-.311457-.4956734-.586221-.9179769-.821734-1.2675504-.082344-.1224254-.154022-.2267215-.21418-.3133151-.033492-.0475624-.033492-.0475624-.054612-.0776356-.008319-.0117306-.008319-.0117306-.013866-.0191956l-.002346-.0038391c-.256419-.3188605-.431774-.3480805-.716138-.0970445-.030292.0268739-.131623.1051493-.149969.1245582-1.999084 1.775381-4.729452 2.3465571-7.455767 1.7760208-.507717-.1362888-.982582-.3094759-1.419902-.5184948-1.708107-.8565509-2.918095-2.3826022-3.267311-4.1490253l-.027733-.1394881h13.754451zM138.32144123 49.7357905c-3.38129629 0-6.14681004-2.6808521-6.23169343-6.04042014v-.31621743c.08401943-3.35418649 2.85039714-6.03546919 6.23169343-6.03546919 3.44242097 0 6.23320537 2.7740599 6.23320537 6.1960534 0 3.42199346-2.7907844 6.19605336-6.23320537 6.19605336m.00172791-15.67913203c-2.21776751 0-4.33682838.7553485-6.03989586 2.140764l-.19352548.1573553V34.6208558c0-.4623792-.0993546-.56419733-.56740117-.56419733h-2.17651376c-.47409424 0-.56761716.09428403-.56761716.56419733v27.6400724c0 .4539841.10583425.5641973.56761716.5641973h2.17651376c.46351081 0 .56740117-.1078454.56740117-.5641973V50.734168l.19352548.1573553c1.70328347 1.3856307 3.82234434 2.1409792 6.03989586 2.1409792 5.27140956 0 9.54473746-4.2479474 9.54473746-9.48802964 0-5.239867-4.2733279-9.48781439-9.54473746-9.48781439M115.907646 49.5240292c-3.449458 0-6.245805-2.7496948-6.245805-6.1425854 0-3.3928907 2.79656-6.1427988 6.245805-6.1427988 3.448821 0 6.24538 2.7499081 6.24538 6.1427988 0 3.3926772-2.796346 6.1425854-6.24538 6.1425854m.001914-15.5438312c-5.28187 0-9.563025 4.2112903-9.563025 9.4059406 0 5.1944369 4.281155 9.4059406 9.563025 9.4059406 5.281657 0 9.562387-4.2115037 9.562387-9.4059406 0-5.1946503-4.280517-9.4059406-9.562387-9.4059406M94.5919049 34.1890939c-1.9281307 0-3.7938902.6198995-5.3417715 1.7656047l-.188189.1393105V23.2574169c0-.4254677-.1395825-.5643476-.5649971-.5643476h-2.2782698c-.4600414 0-.5652122.1100273-.5652122.5643476v29.2834155c0 .443339.1135587.5647782.5652122.5647782h2.2782698c.4226187 0 .5649971-.1457701.5649971-.5647782v-9.5648406c.023658-3.011002 2.4931278-5.4412923 5.5299605-5.4412923 3.0445753 0 5.516841 2.4421328 5.5297454 5.4630394v9.5430935c0 .4844647.0806524.5645628.5652122.5645628h2.2726775c.481764 0 .565212-.0824666.565212-.5645628v-9.5710848c-.018066-4.8280677-4.0440197-8.7806537-8.9328471-8.7806537M62.8459442 47.7938061l-.0053397.0081519c-.3248668.4921188-.4609221.6991347-.5369593.8179812-.2560916.3812097-.224267.551113.1668119.8816949.91266.7358184 2.0858968 1.508535 2.8774525 1.8955369 2.2023021 1.076912 4.5810275 1.646045 7.1017886 1.6975309 1.6283921.0821628 3.6734936-.3050536 5.1963734-.9842376 2.7569891-1.2298679 4.5131066-3.6269626 4.8208863-6.5794607.4985136-4.7841067-2.6143125-7.7747902-10.6321784-10.1849709l-.0021359-.0006435c-3.7356476-1.2047686-5.4904836-2.8064071-5.4911243-5.0426086.1099976-2.4715346 2.4015793-4.3179454 5.4932602-4.4331449 2.4904317.0062212 4.6923065.6675996 6.8557356 2.0598624.4562232.2767364.666607.2256796.9733188-.172263.035242-.0587797.1332787-.2012238.543367-.790093l.0012815-.0019308c.3829626-.5500403.5089793-.7336731.5403767-.7879478.258441-.4863266.2214903-.6738208-.244985-1.0046173-.459427-.3290803-1.7535544-1.0024722-2.4936356-1.2978721-2.0583439-.8211991-4.1863175-1.2199998-6.3042524-1.1788111-4.8198184.1046878-8.578747 3.2393171-8.8265087 7.3515337-.1572005 2.9703036 1.350301 5.3588174 4.5000778 7.124567.8829712.4661613 4.1115618 1.6865902 5.6184225 2.1278667 4.2847814 1.2547527 6.5186944 3.5630343 6.0571315 6.2864205-.4192725 2.4743234-3.0117991 4.1199394-6.6498372 4.2325647-2.6382344-.0549182-5.2963324-1.0217793-7.6043603-2.7562084-.0115337-.0083664-.0700567-.0519149-.1779185-.1323615-.1516472-.1130543-.1516472-.1130543-.1742875-.1300017-.4705335-.3247898-.7473431-.2977598-1.0346184.1302162-.0346012.0529875-.3919333.5963776-.5681431.8632459">
										</path>
									</g>
								</svg>
							</a>
						</div>
						<div class="header__search">
							<div class="header__search-input-wrap">
								<input type="text" class="header__search-input" placeholder="Nhập để tìm kiếm sản phẩm">
								<!-- Search history -->
								<!-- <div class="header__search-history">
									<h3 class="header__search-history-heading">Lịch sử tìm kiếm</h3>
									<ul class="header__search-history-list">
										<li class="header__search-history-item">
											<a href="">Laptop ASUS TUF Dash FX516PE-HN005T</a>
										</li>
										<li class="header__search-history-item">
											<a href="">Sạc dự phòng cổng type C</a>
										</li>
										<li class="header__search-history-item">
											<a href="">iPhone 12 Pro Max</a>
										</li>
										<li class="header__search-history-item">
											<a href="">Adapter laptop Dell 90W</a>
										</li>
										<li class="header__search-history-item">
											<a href="">Tai nghe Logitech G733 Lightspeed RGB</a>
										</li>
									</ul>
								</div> -->
							</div>
							<button class="header__search-btn">
								<a class="header__search-btn-icon fas fa-search"></a>
							</button>
						</div>
						<!-- Cart -->
						<div class="header__cart">
							<div class="header__cart-warp">
								<i class="header__cart-icon fas fa-shopping-cart"></i>
								<span class="header__cart-notice">3</span>
								<!-- No cart add "header__cart-list--no-cart" to header__cart-list -->
								<div class="header__cart-list">
									<!-- No cart -->
									<img src="view//assets/img/no_cart.png" alt="" class="header__cart-no-cart-img">
									<span class="header__cart-list-no-cart-msg">Chưa có sản phẩm</span>
									<!-- has cart -->
									<h4 class="header__cart-heading">Sản phẩm đã thêm</h4>
									<ul class="header__cart-list-item">
										<c:forEach var="item" items="${cart.items}">
											<li class="header__cart-item">
												<img src="/view/assets/img/${item.image }" alt=""
													class="header__cart-img">
												<div class="header__cart-item-info">
													<!-- head -->
													<div class="header__cart-item-head">
														<h4 class="header__cart-item-name">${item.name}</h4>
														<div class="header__card-item-price-warp">
															<span class="header__cart-item-price">${item.price}</span>
															<span class="header__cart-item-mutiply">x</span>
															<span class="header__cart-item-qnt">${item.qty}</span>
														</div>
													</div>
													<!-- body -->
													<div class="header__cart-item-body">
														<span class="header__cart-item-description">
															Phân loại: Bạc
														</span>
														<a href="/cart/remove/${item.id}" style="text-decoration: none">
															<span class="header__cart-item-remove">Xóa</span></a>
													</div>
												</div>

											</li>
										</c:forEach>
									</ul>
									<a class="header__cart-view-cart btn btn--primary">
										Xem giỏ hàng
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
			<div class="container">
				<div class="grid">
					<div class="grid__row">
						<div class="cart__body">
							<div class="cart__product">
								<h3 class="cart-title">Giỏ hàng của bạn</h3>
								<table class="cart__table">
									<tr class="cart-table__th">
										<th>Id</th>
										<th>Tên sản phẩm</th>
										<th>Giá</th>
										<th>Số lượng</th>
										<th>Số tiền</th>
										<th></th>
										<th></th>

									</tr>
									<tbody class="table__body">
										<c:forEach var="item" items="${cart.items}">
											<form action="/cart/update/${item.id}" method="post">
												<input type="hidden" name="id" value="${item.id}">
												<tr>
													<td>${item.id}</td>
													<td>${item.name}</td>
													<td>${item.price}</td>
													<td><input name="qty" value="${item.qty}"
															onblur="this.form.submit()" style="width:50px;"></td>
													<td>${item.price * item.qty}</td>
													<td>
														<a class="cart-link" href=""><i class="fas fa-sync-alt"
																title="Làm mới"></i></a>
													</td>
													<td>
														<a class="cart-link" href="/cart/remove/${item.id}"><i
																class="trash__icon far fa-trash-alt"
																title="Xóa"></i></a>
													</td>

												</tr>
											</form>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<div class="cart__link">
							<a class="btn btn--primary btn-hover" style="margin-right: 20px;" href="/cart/clear">Xóa Giỏ
								Hàng</a>
							<!--lab4 <a href="/item/index">Add more</a> -->
							<a class="btn btn--primary btn-hover" href="/index">Mua Thêm</a>
						</div>
					</div>
				</div>
			</div>
			<footer class="footer">
				<div class="grid">
					<div class="grid__row">
						<div class="grid__column-2-4">
							<h3 class="footer__heading">Chăm sóc khách hàng</h3>
							<ul class="footer__list">
								<li class="footer__item">
									<a href="" class="footer__item__link">Trung tâm trợ giúp</a>
								</li>
								<li class="footer__item">
									<a href="" class="footer__item__link">Tổng đài: 1800.8080</a>
								</li>
								<li class="footer__item">
									<a href="" class="footer__item__link">Hướng dẫn mua hàng</a>
								</li>
							</ul>
						</div>
						<div class="grid__column-2-4">
							<h3 class="footer__heading">Giới thiệu</h3>
							<ul class="footer__list">
								<li class="footer__item">
									<a href="" class="footer__item__link">Giới thiệu</a>
								</li>
								<li class="footer__item">
									<a href="" class="footer__item__link">Tuyển dụng</a>
								</li>
								<li class="footer__item">
									<a href="" class="footer__item__link">Điều khoản</a>
								</li>
							</ul>
						</div>
						<div class="grid__column-2-4">
							<h3 class="footer__heading">Theo dõi chúng tôi</h3>
							<ul class="footer__list">
								<li class="footer__item">
									<a href="https://www.facebook.com/tuanpc.1902/" class="footer__item__link">
										<i class="footer__item__icon fab fa-facebook"></i>
										Facebook
									</a>
								</li>
								<li class="footer__item">
									<a href="https://www.instagram.com/tuanpc.1902/" class="footer__item__link">
										<i class="footer__item__icon fab fa-instagram"></i>
										Instagram
									</a>
								</li>
								<li class="footer__item">
									<a href="http://linkedin.com/in/pham-cong-tuan" class="footer__item__link">
										<i class="footer__item__icon fab fa-linkedin"></i>
										Linkedin
									</a>
								</li>
							</ul>
						</div>
						<div class="grid__column-2-4">
							<h3 class="footer__heading">Danh mục</h3>
							<ul class="footer__list">
								<li class="footer__item">
									<a href="" class="footer__item__link">Laptop giá rẻ</a>
								</li>
								<li class="footer__item">
									<a href="" class="footer__item__link">Nguồn máy tính 80 plus</a>
								</li>
								<li class="footer__item">
									<a href="" class="footer__item__link">Chuột Logitech</a>
								</li>
							</ul>
						</div>
						<div class="grid__column-2-4">
							<h3 class="footer__heading">Vào cửa hàng trên ứng dụng</h3>
							<div class="footer__download">
								<img class="footer__download__pr" src="/view/assets/img/qr_code.png" alt="qr_code">
								<div class="footer__download__apps">
									<a class="footer__download__apps__link"
										href="https://itunes.apple.com/VN/app/id959841449?mt=8">
										<img src="/view/assets/img/app_store.png" alt="app-store"
											class="footer__download__apps__img">
									</a>
									<a class="footer__download__apps__link"
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
						<p class="footer__text">© 2021 - Bản quyền thuộc về Công ty PS14046 - Phạm Công Tuấn</p>
					</div>
				</div>
			</footer>

			<!-- Modal -->
			<jsp:include page="layout/modal.jsp"></jsp:include>




		</body>

		</html>