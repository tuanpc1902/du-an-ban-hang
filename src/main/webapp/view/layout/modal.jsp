<%@ page pageEncoding="utf-8"%>
<div class="modal" id="modal" style="display: none;">
    <div class="modal__overlay">
    </div>
    <div class="modal__body" id="modal__body">
        <!-- Dang ky -->
<!-- 					<div class="auth-form" id="form__dangky"> -->
<!-- 						<div class="auth-form__container"> -->
<!-- 							<div class="auth-form__header"> -->
<!-- 								<h3 class="auth-form__heading">Đăng ký</h3> -->
<!-- 								<span class="auth-form__switch-btn" onclick="dangnhap()">Đăng nhập</span> -->
<!-- 							</div> -->
<!-- 							<div class="auth-form__form"> -->
<!-- 								<div class="auth-form__group"> -->
<!-- 									<input type="text" class="auth-form__input" placeholder="Nhập email của bạn"> -->
<!-- 								</div> -->
<!-- 								<div class="auth-form__group"> -->
<!-- 									<input type="password" class="auth-form__input" placeholder="Nhập mật khẩu"> -->
<!-- 								</div> -->
<!-- 								<div class="auth-form__group"> -->
<!-- 									<input type="password" class="auth-form__input" placeholder="Nhập lại mật khẩu"> -->
<!-- 								</div> -->

<!-- 								<div class="auth-form__aside"> -->
<!-- 									<p class="auth-form__policy-text"> -->
<!-- 										Bằng việc đăng kí, bạn đã đồng ý với PS14046 về -->
<!-- 										<a href="" class="auth-form__text-link">Điều khoản dịch vụ</a> & -->
<!-- 										<a href="" class="auth-form__text-link">chính sách bảo mật</a> -->
<!-- 									</p> -->
<!-- 								</div> -->

<!-- 								<div class="auth-form__control"> -->
<!-- 									<button class="btn auth-form__control-back btn--normal" onclick="closeModal()">TRỞ -->
<!-- 										LẠI</button> -->
<!-- 									<button class="btn btn--primary">ĐĂNG KÝ</button> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="auth-form__socials"> -->
<!-- 							<a href="" class="btn auth-form__socials--facebook btn--size-s btn--with-icon"> -->
<!-- 								<i class="auth-form__socials-icon fa fa-facebook-square"></i> -->
<!-- 								<span class="auth-form__socials-title"> -->
<!-- 									Kết nối với Facebook -->
<!-- 								</span> -->
<!-- 								<a href="" -->
<!-- 									class="btn auth-form__socials--google auth-form__socials-icon btn--size-s btn--with-icon"> -->
<!-- 									<i class="auth-form__socials-icon fa fa-google"></i> -->
<!-- 									<span class="auth-form__socials-title"> -->
<!-- 										Kết nối với Google -->
<!-- 									</span> -->
<!-- 								</a> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="close__modal" id="close__modal"> -->
<!-- 						<div class="close__icon"> -->
<!-- 							<button href="" class="close__icon__link" onclick="closeModal()"> -->
<!-- 								<i class="fas fa-times"></i> -->
<!-- 							</button> -->
<!-- 						</div> -->
<!-- 					</div> -->

        <!-- Dang Nhap -->
        <form action="/login" method="post">
            <div class="auth-form" id="form__dangnhap" style="display: none;">
                <div class="auth-form__container">
                    <div class="auth-form__header">
                        <h3 class="auth-form__heading">Đăng nhập</h3>
                        <span class="auth-form__switch-btn" onclick="dangky()">Đăng ký</span>
                    </div>
                    <div class="auth-form__form">
                        <div class="auth-form__group">
                            <input type="text"  name="username" class="auth-form__input" placeholder="User của bạn">
                        </div>
                        <div class="auth-form__group">
                            <input type="password" name="password" class="auth-form__input" placeholder="Mật khẩu của bạn">
                        </div>
                        <!-- <div class="auth-form__group">
                            <input type="password" class="auth-form__input" placeholder="Nhập lại mật khẩu">
                        </div> -->
                        <div class="auth-form__aside">
                            <div class="auth-form__help">
                                <a href="" class="auth-form__help-link auth-form__help-forgot">Quên mật khẩu
                                </a>
                                <span class="auth-form__help-sepatate"></span>
                                <a href="" class="auth-form__help-link">Cần trợ giúp?</a>
                            </div>
                        </div>
                        <div class="auth-form__control">
                            <button class="btn auth-form__control-back btn--normal" onclick="closeModal()">TRỞ
                                LẠI</button>
                            <button class="btn btn--primary">ĐĂNG NHẬP</button>
                        </div>
                    </div>
                </div>
                <div class="auth-form__socials">
                    <a href="#" class="btn auth-form__socials--facebook btn--size-s btn--with-icon">
                        <i class="auth-form__socials-icon fa fa-facebook-square"></i>
                        <span class="auth-form__socials-title">
                            Kết nối với Facebook
                        </span>
                    </a>
                    <a href="#"
                        class="btn auth-form__socials--google auth-form__socials-icon btn--size-s btn--with-icon">
                        <i class="auth-form__socials-icon fa fa-google"></i>
                        <span class="auth-form__socials-title">
                            Kết nối với Google
                        </span>
                    </a>
                </div>
            </div>
            </form>
    </div>
</div>