<%@ Page Title="" Language="C#" MasterPageFile="~/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="BigKisan_WebForm._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!-- Newsletter and social widget -->
	<div class="subscribe-area hidden-xs">
		<div class="container">
			<div class="subscribe-container">
				<div class="row">
					<div class="col-md-12">
						<div class="subscribe-text-link">
							<div class="subscribe-link">
								<ul class="social-link">
									<li><a href="#"><i class="fa fa-facebook"></i></a></li>
									<li><a href="#"><i class="fa fa-rss"></i></a></li>
									<li><a href="#"><i class="fa fa-twitter"></i></a></li>
									<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
									<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								</ul>
								<p class="discount-text"><strong>WINTER SALE!</strong> 20% off on selected items</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Newsletter and social widget end-->

	<!-- Slider -->
	<div id="thmsoft-slideshow" class="thmsoft-slideshow">
		<div class="container">
			<div class="row">
				<div class=" col-lg-3 col-md-3 col-sm-5 col-xs-12 col-mid">
					<!--<div class="col-inner ">
            <div class="img-block"> <a href="#" class="ves-btnlink img-animation" title="Image"> <img src="images/mid-banner1.png"  alt="Image"></a> </div>
            <div class="img-block1"> <a href="#" title="Image"> <img src="images/mid-banner2.png"  alt="Image"></a> </div>
          </div>-->
					<div class="top-products">
						<div class="title">Top Products</div>
						<ul>
							<li>
								<div class="row">
									<div class="col-xs-4 col-sm-4 no-margin">
										<img alt="product" src="assets/images/product-img.jpg">
									</div>
									<div class="col-xs-8 col-sm-8 no-margin">
										<a href="#">ThinkPad X1 Ultrabook</a>
										<div class="rating">
											<div class="ratings">
												<div class="rating-box">
													<div style="width: 80%" class="rating"></div>
												</div>
												<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
											</div>
										</div>
										<div class="price">$249</div>
									</div>
								</div>
							</li>
							<li>
								<div class="row">
									<div class="col-xs-4 col-sm-4 no-margin">
										<img alt="product" src="assets/images/product-img.jpg">
									</div>
									<div class="col-xs-8 col-sm-8 no-margin">
										<a href="#">Pink Sports Watch</a>
										<div class="rating">
											<div class="ratings">
												<div class="rating-box">
													<div style="width: 80%" class="rating"></div>
												</div>
												<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
											</div>
										</div>
										<div class="price">$99</div>
									</div>
								</div>
							</li>
							<li>
								<div class="row">
									<div class="col-xs-4 col-sm-4 no-margin">
										<img alt="product" src="assets/images/product-img.jpg">
									</div>
									<div class="col-xs-8 col-sm-8 no-margin">
										<a href="#">iPhone 6 Plus </a>
										<div class="rating">
											<div class="ratings">
												<div class="rating-box">
													<div style="width: 80%" class="rating"></div>
												</div>
												<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
											</div>
										</div>
										<div class="price">$399</div>
									</div>
								</div>
							</li>
							<li>
								<div class="row">
									<div class="col-xs-4 col-sm-4 no-margin">
										<img alt="product" src="assets/images/product-img.jpg">
									</div>
									<div class="col-xs-8 col-sm-8 no-margin">
										<a href="#">Superb 450W Juicer</a>
										<div class="rating">
											<div class="ratings">
												<div class="rating-box">
													<div style="width: 80%" class="rating"></div>
												</div>
												<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
											</div>
										</div>
										<div class="price">$49</div>
									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-sm-7 col-xs-12">
					<div class="small-strip">
						<img alt="banner" src="assets/images/small-strip-banner.jpg">
					</div>
					<div id='rev_slider_4_wrapper' class='rev_slider_wrapper fullwidthbanner-container'>
						<div id='rev_slider_4' class='rev_slider fullwidthabanner'>
							<ul>
								<li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb='images/slide-img.png'>
									<img src='assets/images/slide-img.png' alt="slide-img" data-bgposition='left top' data-bgfit='cover' data-bgrepeat='no-repeat' />
									<div class="info">
										<div class='tp-caption ExtraLargeTitle sft  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index: 2; max-width: auto; max-height: auto; white-space: nowrap;'><span>BigKisan Deal</span> </div>
										<div class='tp-caption LargeTitle sfl  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index: 3; max-width: auto; max-height: auto; white-space: nowrap;'><span>digital Time</span> </div>
										<div class='tp-caption Title sft  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1450' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
										<div class='tp-caption sfb  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;'><a href='#' class="buy-btn">Shop Now</a> </div>
									</div>
								</li>
								<li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb='images/slide-img.png'>
									<img src='assets/images/slide-img.png' alt="slide-img" data-bgposition='left top' data-bgfit='cover' data-bgrepeat='no-repeat' />
									<div class="info">
										<div class='tp-caption ExtraLargeTitle sft slide2  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index: 2; max-width: auto; max-height: auto; white-space: nowrap; padding-right: 0px'><span>Spring Collection</span> </div>
										<div class='tp-caption LargeTitle sfl  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index: 3; max-width: auto; max-height: auto; white-space: nowrap;'>Big Kisan Deals</div>
										<div class='tp-caption Title sft  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;'>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div>
										<div class='tp-caption sfb  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;'><a href='#' class="buy-btn">Buy Now</a> </div>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class=" col-lg-3 col-md-3 col-sm-7 col-xs-12">
					<div class="image-item">
						<a href="#" title="Image">
							<img src="assets/images/rhs-banner.jpg" class="img-responsive" alt="Image"></a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- end Slider -->
	<div class="our-features-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-xs-12 col-sm-6 space">
					<div class="feature-box first">
						<span class="fa fa-truck"></span>
						<div class="content">
							<h3>Worldwide Delivery</h3>
							<p>Lorem ipsum dolor sit amet</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-xs-12 col-sm-6 space">
					<div class="feature-box">
						<span class="fa fa-headphones"></span>
						<div class="content">
							<h3>24/7 Help Center</h3>
							<p>Lorem ipsum dolor sit amet</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-xs-12 col-sm-6 space">
					<div class="feature-box">
						<span class="fa fa-share"></span>
						<div class="content">
							<h3>FREE RETURNS</h3>
							<p>Lorem ipsum dolor sit amet</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-xs-12 col-sm-6 space">
					<div class="feature-box last">
						<span class="fa fa-phone"></span>
						<div class="content">
							<h3>Helpline  +0800 567 345</h3>
							<p>Lorem ipsum dolor sit amet</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="content-page">
		<div class="container">
			<div class="row">

				<!-- featured category fashion -->
				<div class="col-md-9">
					<div class="category-product">
						<div class="navbar nav-menu">
							<div class="navbar-collapse">
								<ul class="nav navbar-nav">
									<li>
										<div class="new_title">
											<h2>Hot Products</h2>
										</div>
									</li>
									<li class="active"><a data-toggle="tab" href="#tab-1"></a></li>
									<li><a data-toggle="tab" href="#tab-2"></a></li>
									<li><a data-toggle="tab" href="#tab-3"></a></li>
									<li><a data-toggle="tab" href="#tab-4"></a></li>
									<li><a data-toggle="tab" href="#tab-5"></a></li>
								</ul>
							</div>
							<!-- /.navbar-collapse -->

						</div>
						<div class="product-bestseller">
							<div class="product-bestseller-content">
								<div class="product-bestseller-list">
									<div class="tab-container">
										<!-- tab product -->
										<div class="tab-panel active" id="tab-1">
											<div class="category-products">
												<ul class="products-grid">
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Maharaja 450W Juicer" href="product-details.aspx">
																		<img alt="Maharaja 450W Juicer" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="Maharaja 450W Juicer" href="product-details.aspx">Maharaja 450W Juicer </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$155.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Bluetooth Smart Watch" href="product-details.aspx">
																		<img alt="Bluetooth Smart Watch" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="Bluetooth Smart Watch" href="product-details.aspx">Bluetooth Smart Watch </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$225.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Samsung GALAXY Note" href="product-details.aspx">
																		<img alt="Samsung GALAXY Note" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="Samsung GALAXY Note" href="product-details.aspx">Samsung GALAXY Note </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$99.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Epson L360 Printer" href="product-details.aspx">
																		<img alt="Epson L360 Printer" src="assets/images/product-img.jpg">
																	</a>
																	<div class="new-label new-top-right">new</div>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="Epson L360 Printer" href="product-details.aspx">Epson L360 Printer </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box">
																				<p class="special-price"><span class="price-label">Special Price</span> <span class="price">$156.00 </span></p>
																				<p class="old-price"><span class="price-label">Regular Price:</span> <span class="price">$167.00 </span></p>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
												</ul>
											</div>
										</div>
										<!-- tab product -->
										<div class="tab-panel" id="tab-2">
											<div class="category-products">
												<ul class="products-grid">
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="ZX110A Stereo Headphone" href="product-details.aspx">
																		<img alt="ZX110A Stereo Headphone" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="ZX110A Stereo Headphone" href="product-details.aspx">ZX110A Stereo Headphone </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$155.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="ThinkPad X1 Ultrabook" href="product-details.aspx">
																		<img alt="ThinkPad X1 Ultrabook" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="ThinkPad X1 Ultrabook" href="product-details.aspx">ThinkPad X1 Ultrabook </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$225.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="iPhone 6 Plus" href="product-details.aspx">
																		<img alt="iPhone 6 Plus" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="iPhone 6 Plus" href="product-details.aspx">iPhone 6 Plus </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$99.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
												</ul>
											</div>
										</div>
										<div class="tab-panel" id="tab-3">
											<div class="category-products">
												<ul class="products-grid">
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Noise Smart Watch" href="product-details.aspx">
																		<img alt="Noise Smart Watch" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="Noise Smart Watch" href="product-details.aspx">Noise Smart Watch </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$155.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Morphy Optimo Kettle" href="product-details.aspx">
																		<img alt="Morphy Optimo Kettle" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="Morphy Optimo Kettle" href="product-details.aspx">Morphy Optimo Kettle </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$225.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Omega J8004 Juicer" href="product-details.aspx">
																		<img alt="Omega J8004 Juicer" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="Omega J8004 Juicer" href="product-details.aspx">Omega J8004 Juicer </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$99.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="HI114 Dry Iron" href="product-details.aspx">
																		<img alt="HI114 Dry Iron" src="assets/images/product-img.jpg">
																	</a>
																	<div class="new-label new-top-right">new</div>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="HI114 Dry Iron" href="product-details.aspx">HI114 Dry Iron </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box">
																				<p class="special-price"><span class="price-label">Special Price</span> <span class="price">$156.00 </span></p>
																				<p class="old-price"><span class="price-label">Regular Price:</span> <span class="price">$167.00 </span></p>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
												</ul>
											</div>
										</div>
										<div class="tab-panel" id="tab-4">
											<div class="category-products">
												<ul class="products-grid">
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="iPhone 6 Plus" href="product-details.aspx">
																		<img alt="iPhone 6 Plus" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="iPhone 6 Plus" href="product-details.aspx">iPhone 6 Plus </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$155.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="ThinkPad X1 Ultrabook" href="product-details.aspx">
																		<img alt="ThinkPad X1 Ultrabook" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="ThinkPad X1 Ultrabook" href="product-details.aspx">ThinkPad X1 Ultrabook </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$225.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Samsung GALAXY Note" href="product-details.aspx">
																		<img alt="Samsung GALAXY Note" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="Samsung GALAXY Note" href="product-details.aspx">Samsung GALAXY Note </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$99.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Epson L360 Printer" href="product-details.aspx">
																		<img alt="Epson L360 Printer" src="assets/images/product-img.jpg">
																	</a>
																	<div class="new-label new-top-right">new</div>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="Epson L360 Printer" href="product-details.aspx">Epson L360 Printer </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box">
																				<p class="special-price"><span class="price-label">Special Price</span> <span class="price">$156.00 </span></p>
																				<p class="old-price"><span class="price-label">Regular Price:</span> <span class="price">$167.00 </span></p>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
												</ul>
											</div>
										</div>
										<div class="tab-panel" id="tab-5">
											<div class="category-products">
												<ul class="products-grid">
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Samsung GALAXY Note" href="product-details.aspx">
																		<img alt="Samsung GALAXY Note" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="Samsung GALAXY Note" href="product-details.aspx">Samsung GALAXY Note </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$155.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Canvas Tab P290" href="product-details.aspx">
																		<img alt="Canvas Tab P290" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="Canvas Tab P290" href="product-details.aspx">Canvas Tab P290 </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$225.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="ZX110A Stereo Headphone" href="product-details.aspx">
																		<img alt="ZX110A Stereo Headphone" src="assets/images/product-img.jpg">
																	</a>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="ZX110A Stereo Headphone" href="product-details.aspx">ZX110A Stereo Headphone </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box"><span class="regular-price"><span class="price">$99.00</span> </span></div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
													<li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
														<div class="item-inner">
															<div class="item-img">
																<div class="item-img-info">
																	<a class="product-image" title="Canon Zoom Camera" href="product-details.aspx">
																		<img alt="Canon Zoom Camera" src="assets/images/product-img.jpg">
																	</a>
																	<div class="new-label new-top-right">new</div>
																	<div class="box-hover">
																		<ul class="add-to-links">
																			<li><a class="link-quickview" href="quick_view.html"></a></li>
																			<li><a class="link-wishlist" href="wishlist.html"></a></li>
																			<li><a class="link-compare" href="compare.html"></a></li>
																		</ul>
																	</div>
																</div>
															</div>
															<div class="item-info">
																<div class="info-inner">
																	<div class="item-title"><a title="Canon Zoom Camera" href="product-details.aspx">Canon Zoom Camera </a></div>
																	<div class="item-content">
																		<div class="rating">
																			<div class="ratings">
																				<div class="rating-box">
																					<div style="width: 80%" class="rating"></div>
																				</div>
																				<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																			</div>
																		</div>
																		<div class="item-price">
																			<div class="price-box">
																				<p class="special-price"><span class="price-label">Special Price</span> <span class="price">$156.00 </span></p>
																				<p class="old-price"><span class="price-label">Regular Price:</span> <span class="price">$167.00 </span></p>
																			</div>
																		</div>
																		<div class="action">
																			<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- bestsell Slider -->
					<div class="bestsell-pro">
						<div class="slider-items-products">
							<div class="bestsell-block">
								<div class="block-title">
									<h2>Best Sellers</h2>
								</div>
								<div id="bestsell-slider" class="product-flexslider hidden-buttons">
									<div class="slider-items slider-width-col4 products-grid block-content">
										<div class="item">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="iPhone 6 Plus" href="product-details.aspx">
															<img alt="iPhone 6 Plus" src="assets/images/product-img.jpg">
														</a>
														<div class="new-label new-top-right">new</div>
														<div class="box-hover">
															<ul class="add-to-links">
																<li><a class="link-quickview" href="quick_view.html"></a></li>
																<li><a class="link-wishlist" href="wishlist.html"></a></li>
																<li><a class="link-compare" href="compare.html"></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"><a title="iPhone 6 Plus" href="product-details.aspx">iPhone 6 Plus </a></div>
														<div class="rating">
															<div class="ratings">
																<div class="rating-box">
																	<div style="width: 80%" class="rating"></div>
																</div>
																<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
															</div>
														</div>
														<div class="item-content">
															<div class="item-price">
																<div class="price-box"><span class="regular-price"><span class="price">$88.00</span> </span></div>
															</div>
															<div class="action">
																<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!-- Item -->
										<div class="item">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="Noise Smart Watch" href="product-details.aspx">
															<img alt="Noise Smart Watch" src="assets/images/product-img.jpg">
														</a>
														<div class="box-hover">
															<ul class="add-to-links">
																<li><a class="link-quickview" href="quick_view.html"></a></li>
																<li><a class="link-wishlist" href="wishlist.html"></a></li>
																<li><a class="link-compare" href="compare.html"></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"><a title="Noise Smart Watch" href="product-details.aspx">Noise Smart Watch </a></div>
														<div class="item-content">
															<div class="rating">
																<div class="ratings">
																	<div class="rating-box">
																		<div style="width: 80%" class="rating"></div>
																	</div>
																	<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																</div>
															</div>
															<div class="item-price">
																<div class="price-box"><span class="regular-price"><span class="price">$325.00</span> </span></div>
															</div>
															<div class="action">
																<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- End Item -->

										<!-- Item -->
										<div class="item">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="Morphy Optimo Kettle" href="product-details.aspx">
															<img alt="Morphy Optimo Kettle" src="assets/images/product-img.jpg">
														</a>
														<div class="box-hover">
															<ul class="add-to-links">
																<li><a class="link-quickview" href="quick_view.html"></a></li>
																<li><a class="link-wishlist" href="wishlist.html"></a></li>
																<li><a class="link-compare" href="compare.html"></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"><a title="Morphy Optimo Kettle" href="product-details.aspx">Morphy Optimo Kettle </a></div>
														<div class="item-content">
															<div class="rating">
																<div class="ratings">
																	<div class="rating-box">
																		<div style="width: 80%" class="rating"></div>
																	</div>
																	<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																</div>
															</div>
															<div class="item-price">
																<div class="price-box"><span class="regular-price"><span class="price">$245.00</span> </span></div>
															</div>
															<div class="action">
																<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- End Item -->

										<div class="item">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="Omega J8004 Juicer" href="product-details.aspx">
															<img alt="Omega J8004 Juicer" src="assets/images/product-img.jpg">
														</a>
														<div class="new-label new-top-right">new</div>
														<div class="box-hover">
															<ul class="add-to-links">
																<li><a class="link-quickview" href="quick_view.html"></a></li>
																<li><a class="link-wishlist" href="wishlist.html"></a></li>
																<li><a class="link-compare" href="compare.html"></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"><a title="Omega J8004 Juicer" href="product-details.aspx">Omega J8004 Juicer </a></div>
														<div class="item-content">
															<div class="rating">
																<div class="ratings">
																	<div class="rating-box">
																		<div style="width: 80%" class="rating"></div>
																	</div>
																	<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																</div>
															</div>
															<div class="item-price">
																<div class="price-box"><span class="regular-price"><span class="price">$225.00</span> </span></div>
															</div>
															<div class="action">
																<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!-- Item -->
										<div class="item">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="HI114 Dry Iron" href="product-details.aspx">
															<img alt="HI114 Dry Iron" src="assets/images/product-img.jpg">
														</a>
														<div class="box-hover">
															<ul class="add-to-links">
																<li><a class="link-quickview" href="quick_view.html"></a></li>
																<li><a class="link-wishlist" href="wishlist.html"></a></li>
																<li><a class="link-compare" href="compare.html"></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"><a title="HI114 Dry Iron" href="product-details.aspx">HI114 Dry Iron </a></div>
														<div class="item-content">
															<div class="rating">
																<div class="ratings">
																	<div class="rating-box">
																		<div style="width: 80%" class="rating"></div>
																	</div>
																	<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																</div>
															</div>
															<div class="item-price">
																<div class="price-box"><span class="regular-price"><span class="price">$115.00</span> </span></div>
															</div>
															<div class="action">
																<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- End Item -->
										<div class="item">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="Food Processor" href="product-details.aspx">
															<img alt="Food Processor" src="assets/images/product-img.jpg">
														</a>
														<div class="box-hover">
															<ul class="add-to-links">
																<li><a class="link-quickview" href="quick_view.html"></a></li>
																<li><a class="link-wishlist" href="wishlist.html"></a></li>
																<li><a class="link-compare" href="compare.html"></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"><a title="Food Processor" href="product-details.aspx">Food Processor </a></div>
														<div class="item-content">
															<div class="rating">
																<div class="ratings">
																	<div class="rating-box">
																		<div style="width: 80%" class="rating"></div>
																	</div>
																	<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																</div>
															</div>
															<div class="item-price">
																<div class="price-box"><span class="regular-price"><span class="price">$155.00</span> </span></div>
															</div>
															<div class="action">
																<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- Item -->
										<div class="item">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="iPhone 6 Plus" href="product-details.aspx">
															<img alt="iPhone 6 Plus" src="assets/images/product-img.jpg">
														</a>
														<div class="box-hover">
															<ul class="add-to-links">
																<li><a class="link-quickview" href="quick_view.html"></a></li>
																<li><a class="link-wishlist" href="wishlist.html"></a></li>
																<li><a class="link-compare" href="compare.html"></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"><a title="iPhone 6 Plus" href="product-details.aspx">iPhone 6 Plus </a></div>
														<div class="item-content">
															<div class="rating">
																<div class="ratings">
																	<div class="rating-box">
																		<div style="width: 80%" class="rating"></div>
																	</div>
																	<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																</div>
															</div>
															<div class="item-price">
																<div class="price-box"><span class="regular-price"><span class="price">$175.00</span> </span></div>
															</div>
															<div class="action">
																<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- End Item -->

									</div>
								</div>
							</div>
						</div>
					</div>
					<!--END bestsell Slider -->

					<!-- Start Featured Slider -->
					<div class="featured-pro">
						<div class="slider-items-products">
							<div class="featured-block">
								<div class="block-title">
									<h2>New Products</h2>
								</div>
								<div id="featured-slider" class="product-flexslider hidden-buttons">
									<div class="slider-items slider-width-col4 products-grid block-content">
										<div class="item">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="ThinkPad X1 Ultrabook" href="product-details.aspx">
															<img alt="ThinkPad X1 Ultrabook" src="assets/images/product-img.jpg">
														</a>
														<div class="new-label new-top-right">new</div>
														<div class="box-hover">
															<ul class="add-to-links">
																<li><a class="link-quickview" href="quick_view.html"></a></li>
																<li><a class="link-wishlist" href="wishlist.html"></a></li>
																<li><a class="link-compare" href="compare.html"></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"><a title="ThinkPad X1 Ultrabook" href="product-details.aspx">ThinkPad X1 Ultrabook </a></div>
														<div class="rating">
															<div class="ratings">
																<div class="rating-box">
																	<div style="width: 80%" class="rating"></div>
																</div>
																<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
															</div>
														</div>
														<div class="item-content">
															<div class="item-price">
																<div class="price-box"><span class="regular-price"><span class="price">$125.00</span> </span></div>
															</div>
															<div class="action">
																<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!-- Item -->
										<div class="item">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="Samsung GALAXY Note" href="product-details.aspx">
															<img alt="Samsung GALAXY Note" src="assets/images/product-img.jpg">
														</a>
														<div class="box-hover">
															<ul class="add-to-links">
																<li><a class="link-quickview" href="quick_view.html"></a></li>
																<li><a class="link-wishlist" href="wishlist.html"></a></li>
																<li><a class="link-compare" href="compare.html"></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"><a title="Samsung GALAXY Note" href="product-details.aspx">Samsung GALAXY Note </a></div>
														<div class="item-content">
															<div class="rating">
																<div class="ratings">
																	<div class="rating-box">
																		<div style="width: 80%" class="rating"></div>
																	</div>
																	<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																</div>
															</div>
															<div class="item-price">
																<div class="price-box"><span class="regular-price"><span class="price">$235.00</span> </span></div>
															</div>
															<div class="action">
																<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- End Item -->

										<!-- Item -->
										<div class="item">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="Epson L360 Printer" href="product-details.aspx">
															<img alt="Epson L360 Printer" src="assets/images/product-img.jpg">
														</a>
														<div class="box-hover">
															<ul class="add-to-links">
																<li><a class="link-quickview" href="quick_view.html"></a></li>
																<li><a class="link-wishlist" href="wishlist.html"></a></li>
																<li><a class="link-compare" href="compare.html"></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"><a title="Epson L360 Printer" href="product-details.aspx">Epson L360 Printer </a></div>
														<div class="item-content">
															<div class="rating">
																<div class="ratings">
																	<div class="rating-box">
																		<div style="width: 80%" class="rating"></div>
																	</div>
																	<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																</div>
															</div>
															<div class="item-price">
																<div class="price-box"><span class="regular-price"><span class="price">$325.00</span> </span></div>
															</div>
															<div class="action">
																<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- End Item -->

										<div class="item">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="QX30 Lens Camera" href="product-details.aspx">
															<img alt="QX30 Lens Camera" src="assets/images/product-img.jpg">
														</a>
														<div class="new-label new-top-right">new</div>
														<div class="box-hover">
															<ul class="add-to-links">
																<li><a class="link-quickview" href="quick_view.html"></a></li>
																<li><a class="link-wishlist" href="wishlist.html"></a></li>
																<li><a class="link-compare" href="compare.html"></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"><a title="QX30 Lens Camera" href="product-details.aspx">QX30 Lens Camera </a></div>
														<div class="item-content">
															<div class="rating">
																<div class="ratings">
																	<div class="rating-box">
																		<div style="width: 80%" class="rating"></div>
																	</div>
																	<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																</div>
															</div>
															<div class="item-price">
																<div class="price-box"><span class="regular-price"><span class="price">$425.00</span> </span></div>
															</div>
															<div class="action">
																<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<!-- Item -->
										<div class="item">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="Smart Watch A9" href="product-details.aspx">
															<img alt="Smart Watch A9" src="assets/images/product-img.jpg">
														</a>
														<div class="box-hover">
															<ul class="add-to-links">
																<li><a class="link-quickview" href="quick_view.html"></a></li>
																<li><a class="link-wishlist" href="wishlist.html"></a></li>
																<li><a class="link-compare" href="compare.html"></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"><a title="Smart Watch A9" href="product-details.aspx">Smart Watch A9 </a></div>
														<div class="item-content">
															<div class="rating">
																<div class="ratings">
																	<div class="rating-box">
																		<div style="width: 80%" class="rating"></div>
																	</div>
																	<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																</div>
															</div>
															<div class="item-price">
																<div class="price-box"><span class="regular-price"><span class="price">$525.00</span> </span></div>
															</div>
															<div class="action">
																<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- End Item -->
										<div class="item">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="Retis lapen casen" href="product-details.aspx">
															<img alt="Touch Notebook 500GB HD" src="assets/images/product-img.jpg">
														</a>
														<div class="box-hover">
															<ul class="add-to-links">
																<li><a class="link-quickview" href="quick_view.html"></a></li>
																<li><a class="link-wishlist" href="wishlist.html"></a></li>
																<li><a class="link-compare" href="compare.html"></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"><a title="Retis lapen casen" href="product-details.aspx">Touch Notebook 500GB HD </a></div>
														<div class="item-content">
															<div class="rating">
																<div class="ratings">
																	<div class="rating-box">
																		<div style="width: 80%" class="rating"></div>
																	</div>
																	<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																</div>
															</div>
															<div class="item-price">
																<div class="price-box"><span class="regular-price"><span class="price">$225.00</span> </span></div>
															</div>
															<div class="action">
																<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- Item -->
										<div class="item">
											<div class="item-inner">
												<div class="item-img">
													<div class="item-img-info">
														<a class="product-image" title="Canon Zoom Camera" href="product-details.aspx">
															<img alt="Canon Zoom Camera" src="assets/images/product-img.jpg">
														</a>
														<div class="box-hover">
															<ul class="add-to-links">
																<li><a class="link-quickview" href="quick_view.html"></a></li>
																<li><a class="link-wishlist" href="wishlist.html"></a></li>
																<li><a class="link-compare" href="compare.html"></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="item-info">
													<div class="info-inner">
														<div class="item-title"><a title="Canon Zoom Camera" href="product-details.aspx">Canon Zoom Camera </a></div>
														<div class="item-content">
															<div class="rating">
																<div class="ratings">
																	<div class="rating-box">
																		<div style="width: 80%" class="rating"></div>
																	</div>
																	<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
																</div>
															</div>
															<div class="item-price">
																<div class="price-box"><span class="regular-price"><span class="price">$185.00</span> </span></div>
															</div>
															<div class="action">
																<button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- End Item -->

									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- End Featured Slider -->

				</div>
				<div class="col-md-3">
					<div class="hot-deal">
						<div class="title">Hot Deal</div>
						<ul class="products-grid">
							<li class="right-space two-height item">
								<div class="item-inner">
									<div class="item-img">
										<div class="item-img-info">
											<a href="#" title="ThinkPad X1 Ultrabook" class="product-image">
												<img src="assets/images/product-img.jpg" alt="ThinkPad X1 Ultrabook">
											</a>
											<div class="new-label new-top-right">New</div>
											<div class="box-hover">
												<ul class="add-to-links">
													<li><a class="link-quickview" href="quick_view.html"></a></li>
													<li><a class="link-wishlist" href="wishlist.html"></a></li>
													<li><a class="link-compare" href="compare.html"></a></li>
												</ul>
											</div>
											<div class="box-timer">
												<div class="countbox_1 timer-grid"></div>
											</div>
										</div>
									</div>
									<div class="item-info">
										<div class="info-inner">
											<div class="item-title"><a href="product-details.aspx" title="Retis lapen casen">ThinkPad X1 Ultrabook </a></div>
											<div class="item-content">
												<div class="rating">
													<div class="ratings">
														<div class="rating-box">
															<div class="rating" style="width: 80%"></div>
														</div>
														<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Review</a> </p>
													</div>
												</div>
												<div class="item-price">
													<div class="price-box"><span class="regular-price"><span class="price">$125.00</span> </span></div>
												</div>
												<div class="action">
													<button data-original-title="Add to Cart" title="" type="button" class="button btn-cart"><span>Add to Cart</span> </button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</li>
						</ul>
					</div>

					<!-- Testimonials -->
					<div class="testimonials std">
						<div class="slider-items-products">
							<div id="testimonials" class="product-flexslider hidden-buttons">
								<div class="slider-items slider-width-col1 owl-carousel owl-theme">

									<!-- Item -->
									<div class="item">
										<div class="inner-block">
											<div class="auther-img">
												<img alt="" src="asssets/images/photo.png">
											</div>
											<div class="testimonials-text">"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue..." </div>
											<div class="auther-name">John Doe <span>Founder - Xyz company</span> </div>
										</div>
										<div class="inner-block">
											<div class="auther-img">
												<img alt="" src="asssets/images/photo.png">
											</div>
											<div class="testimonials-text">"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue..." </div>
											<div class="auther-name">Saraha Smith <span>CEO - Falvours Food</span> </div>
										</div>
									</div>
									<!-- End Item -->

									<!-- Item -->
									<div class="item">
										<div class="inner-block">
											<div class="auther-img">
												<img alt="" src="assets/images/photo.png">
											</div>
											<div class="testimonials-text">"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue..." </div>
											<div class="auther-name">John Doe <span>Founder - Xyz company</span> </div>
										</div>
										<div class="inner-block">
											<div class="auther-img">
												<img alt="" src="assets/images/photo.png">
											</div>
											<div class="testimonials-text">"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue..." </div>
											<div class="auther-name">Saraha Smith <span>CEO - Falvours Food</span> </div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- home side banner -->
					<div class="home-side-banner">
						<img alt="banner" src="assets/images/home-banner.png">
					</div>
				</div>
			</div>
		</div>
	</div>


</asp:Content>
