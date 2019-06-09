﻿<%@ Page Title="" Language="C#" MasterPageFile="~/BigKisanMaster.Master" AutoEventWireup="true" CodeBehind="product-details.aspx.cs" Inherits="BigKisan_WebForm.product_details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	<!-- Breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<ul>
						<li class="home"><a href="index.html" title="Go to Home Page">Home</a> <span>/</span> </li>
						<li class="category1599"><a href="grid.html" title="">Computers</a> <span>/ </span></li>
						<li class="category1600"><a href="grid.html" title="">Micro Computers</a> <span>/</span> </li>
						<li class="category1601"><strong>Neptune Battery Operated Sprayer BS-708</strong> </li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- Breadcrumbs End -->

	<!-- Main Container -->
	<section class="main-container col1-layout">
		<div class="main">
			<div class="container">
				<div class="row">
					<div class="col-main">
						<div class="product-view">
							<div class="product-essential">
								<form action="#" method="post" id="product_addtocart_form">
									<input name="form_key" value="6UbXroakyQlbfQzK" type="hidden">
									<div class="product-img-box col-lg-4 col-sm-4 col-xs-12">
										<div class="new-label new-top-left">New </div>
										<div class="product-image">
											<div class="product-full">
												<img id="product-zoom" src="assets/images/product-img.jpg" data-zoom-image="images/product-img.jpg" alt="product-image" />
											</div>
											<div class="more-views">
												<div class="slider-items-products">
													<div id="gallery_01" class="product-flexslider hidden-buttons product-img-thumb">
														<div class="slider-items slider-width-col4 block-content">
															<div class="more-views-items"><a href="#" data-image="images/product-img.jpg" data-zoom-image="images/product-img.jpg">
																<img id="product-zoom" src="assets/images/product-img.jpg" alt="product-image" />
															</a></div>
															<div class="more-views-items"><a href="#" data-image="images/product-img.jpg" data-zoom-image="images/product-img.jpg">
																<img id="product-zoom" src="assets/images/product-img.jpg" alt="product-image" />
															</a></div>
															<div class="more-views-items"><a href="#" data-image="images/product-img.jpg" data-zoom-image="images/product-img.jpg">
																<img id="product-zoom" src="assets/images/product-img.jpg" alt="product-image" />
															</a></div>
															<div class="more-views-items"><a href="#" data-image="images/product-img.jpg" data-zoom-image="images/product-img.jpg">
																<img id="product-zoom" src="assets/images/product-img.jpg" alt="product-image" />
															</a></div>
															<div class="more-views-items"><a href="#" data-image="images/product-img.jpg" data-zoom-image="images/product-img.jpg">
																<img id="product-zoom" src="assets/images/product-img.jpg" alt="product-image" />
															</a></div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<!-- end: more-images -->
									</div>
									<div class="product-shop col-lg-5 col-sm-5 col-xs-12">
										<div class="product-next-prev"><a class="product-next" href="#"><span></span></a><a class="product-prev" href="#"><span></span></a></div>
										<div class="product-name">
											<h1>Neptune Battery Operated Sprayer BS-708</h1>
										</div>
										<div class="ratings">
											<div class="rating-box">
												<div style="width: 60%" class="rating"></div>
											</div>
											<p class="rating-links"><a href="#">1 Review(s)</a> <span class="separator">|</span> <a href="#">Add Your Review</a> </p>
										</div>
										<div class="price-block">
											<div class="price-box">
												<p class="special-price"><span class="price-label">Special Price</span> <span id="product-price-48" class="price">₹309.99 </span></p>
												<p class="old-price"><span class="price-label">Regular Price:</span> <span class="price">₹315.99 </span></p>
												<p class="availability in-stock pull-right"><span>In Stock</span></p>
											</div>
										</div>
										<div class="short-description">
											<h2>Quick Overview</h2>
											<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>
										</div>
										<div class="add-to-box">
											<div class="add-to-cart">
												<div class="pull-left">
													<div class="custom pull-left">
														<button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 0 ) result.value--;return false;" class="reduced items-count" type="button"><i class="fa fa-minus">&nbsp;</i></button>
														<input type="text" class="input-text qty" title="Qty" value="1" maxlength="12" id="qty" name="qty">
														<button onclick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="increase items-count" type="button"><i class="fa fa-plus">&nbsp;</i></button>
													</div>
												</div>
												<button onclick="productAddToCartForm.submit(this)" class="button btn-cart" title="Add to Cart" type="button">Add to Cart</button>
											</div>
											<div class="email-addto-box">
												<ul class="add-to-links">
													<li><a class="link-wishlist" href="wishlist.html"><span>Add to Wishlist</span></a></li>
													<li><span class="separator">|</span> <a class="link-compare" href="compare.html"><span>Add to Compare</span></a></li>
												</ul>
												<p class="email-friend"><a href="#" class=""><span>Email to a Friend</span></a></p>
											</div>
										</div>

									</div>

									<div class="col-lg-3 col-sm-3 col-xs-12 pro-banner">
										<img alt="banner" src="assets/images/home-banner.png">
										<div class="download-app">
											<h2>DOWNLOAD THE APP</h2>
											<img alt="banner" src="assets/images/google-play-btn.jpg" class="app-btn">
											<img alt="banner" src="assets/images/apple-btn.jpg" class="app-btn">
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="product-collateral col-lg-12 col-sm-12 col-xs-12">
						<div class="add_info">
							<ul id="product-detail-tab" class="nav nav-tabs product-tabs">
								<li class="active"><a href="#product_tabs_description" data-toggle="tab">Product Description </a></li>
								<li><a href="#product_tabs_tags" data-toggle="tab">Tags</a></li>
								<li><a href="#reviews_tabs" data-toggle="tab">Reviews</a> </li>
								<li><a href="#product_tabs_custom" data-toggle="tab">Custom Tab</a> </li>
								<li><a href="#product_tabs_custom1" data-toggle="tab">Custom Tab1</a> </li>
							</ul>
							<div id="productTabContent" class="tab-content">
								<div class="tab-pane fade in active" id="product_tabs_description">
									<div class="std">
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
										<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum</p>
									</div>
								</div>
								<div class="tab-pane fade" id="product_tabs_tags">
									<div class="box-collateral box-tags">
										<div class="tags">
											<form id="addTagForm" action="#" method="get">
												<div class="form-add-tags">
													<label for="productTagName">Add Tags:</label>
													<div class="input-box">
														<input class="input-text" name="productTagName" id="productTagName" type="text">
														<button type="button" title="Add Tags" class=" button btn-add" onclick="submitTagForm()"><span>Add Tags</span> </button>
													</div>
													<!--input-box-->
												</div>
											</form>
										</div>
										<!--tags-->
										<p class="note">Use spaces to separate tags. Use single quotes (') for phrases.</p>
									</div>
								</div>
								<div class="tab-pane fade" id="reviews_tabs">
									<div class="box-collateral box-reviews" id="customer-reviews">
										<div class="box-reviews1">
											<div class="form-add">
												<form id="review-form" method="post" action="http://www.themesmart.net/review/product/post/id/176/">
													<h3>Write Your Own Review</h3>
													<fieldset>
														<h4>How do you rate this product? <em class="required">*</em></h4>
														<span id="input-message-box"></span>
														<table id="product-review-table" class="data-table">
															<colgroup>
																<col>
																<col width="1">
																<col width="1">
																<col width="1">
																<col width="1">
																<col width="1">
															</colgroup>
															<thead>
																<tr class="first last">
																	<th>&nbsp;</th>
																	<th><span class="nobr">1 *</span></th>
																	<th><span class="nobr">2 *</span></th>
																	<th><span class="nobr">3 *</span></th>
																	<th><span class="nobr">4 *</span></th>
																	<th><span class="nobr">5 *</span></th>
																</tr>
															</thead>
															<tbody>
																<tr class="first odd">
																	<th>Price</th>
																	<td class="value">
																		<input type="radio" class="radio" value="11" id="Price_1" name="ratings[3]"></td>
																	<td class="value">
																		<input type="radio" class="radio" value="12" id="Price_2" name="ratings[3]"></td>
																	<td class="value">
																		<input type="radio" class="radio" value="13" id="Price_3" name="ratings[3]"></td>
																	<td class="value">
																		<input type="radio" class="radio" value="14" id="Price_4" name="ratings[3]"></td>
																	<td class="value last">
																		<input type="radio" class="radio" value="15" id="Price_5" name="ratings[3]"></td>
																</tr>
																<tr class="even">
																	<th>Value</th>
																	<td class="value">
																		<input type="radio" class="radio" value="6" id="Value_1" name="ratings[2]"></td>
																	<td class="value">
																		<input type="radio" class="radio" value="7" id="Value_2" name="ratings[2]"></td>
																	<td class="value">
																		<input type="radio" class="radio" value="8" id="Value_3" name="ratings[2]"></td>
																	<td class="value">
																		<input type="radio" class="radio" value="9" id="Value_4" name="ratings[2]"></td>
																	<td class="value last">
																		<input type="radio" class="radio" value="10" id="Value_5" name="ratings[2]"></td>
																</tr>
																<tr class="last odd">
																	<th>Quality</th>
																	<td class="value">
																		<input type="radio" class="radio" value="1" id="Quality_1" name="ratings[1]"></td>
																	<td class="value">
																		<input type="radio" class="radio" value="2" id="Quality_2" name="ratings[1]"></td>
																	<td class="value">
																		<input type="radio" class="radio" value="3" id="Quality_3" name="ratings[1]"></td>
																	<td class="value">
																		<input type="radio" class="radio" value="4" id="Quality_4" name="ratings[1]"></td>
																	<td class="value last">
																		<input type="radio" class="radio" value="5" id="Quality_5" name="ratings[1]"></td>
																</tr>
															</tbody>
														</table>
														<input type="hidden" value="" class="validate-rating" name="validate_rating">
														<div class="review1">
															<ul class="form-list">
																<li>
																	<label class="required" for="nickname_field">Nickname<em>*</em></label>
																	<div class="input-box">
																		<input type="text" class="input-text" id="nickname_field" name="nickname">
																	</div>
																</li>
																<li>
																	<label class="required" for="summary_field">Summary<em>*</em></label>
																	<div class="input-box">
																		<input type="text" class="input-text" id="summary_field" name="title">
																	</div>
																</li>
															</ul>
														</div>
														<div class="review2">
															<ul>
																<li>
																	<label class="required " for="review_field">Review<em>*</em></label>
																	<div class="input-box">
																		<textarea rows="3" cols="5" id="review_field" name="detail"></textarea>
																	</div>
																</li>
															</ul>
															<div class="buttons-set">
																<button class="button submit" title="Submit Review" type="submit"><span>Submit Review</span></button>
															</div>
														</div>
													</fieldset>
												</form>
											</div>
										</div>
										<div class="box-reviews2">
											<h3>Customer Reviews</h3>
											<div class="box visible">
												<ul>
													<li>

														<div class="review">
															<h6><a href="#">Good Product</a></h6>
															<small>Review by <span>John Doe </span>on 25/8/2016 </small>
															<div class="rating-box">
																<div class="rating" style="width: 100%;"></div>
															</div>
															<div class="review-txt">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book</div>
														</div>
													</li>
													<li class="even">

														<div class="review">
															<h6><a href="#/catalog/product/view/id/60/">Superb!</a></h6>
															<small>Review by <span>John Doe</span>on 12/3/2015 </small>
															<div class="rating-box">
																<div class="rating" style="width: 100%;"></div>
															</div>
															<div class="review-txt">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book </div>
														</div>
													</li>
													<li>

														<div class="review">
															<h6><a href="#/catalog/product/view/id/59/">Awesome Product</a></h6>
															<small>Review by <span>John Doe</span>on 28/2/2015 </small>
															<div class="rating-box">
																<div class="rating" style="width: 100%;"></div>
															</div>
															<div class="review-txt last">Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book </div>
														</div>
													</li>
												</ul>
											</div>

										</div>
										<div class="clear"></div>
									</div>
								</div>
								<div class="tab-pane fade" id="product_tabs_custom">
									<div class="product-tabs-content-inner clearfix">
										<p>
											<strong>Lorem Ipsum</strong><span>&nbsp;is
                      simply dummy text of the printing and typesetting industry. Lorem Ipsum
                      has been the industry's standard dummy text ever since the 1500s, when 
                      an unknown printer took a galley of type and scrambled it to make a type
                      specimen book. It has survived not only five centuries, but also the 
                      leap into electronic typesetting, remaining essentially unchanged. It 
                      was popularised in the 1960s with the release of Letraset sheets 
                      containing Lorem Ipsum passages, and more recently with desktop 
                      publishing software like Aldus PageMaker including versions of Lorem 
                      Ipsum.</span>
										</p>
									</div>
								</div>
								<div class="tab-pane fade" id="product_tabs_custom1">
									<div class="product-tabs-content-inner clearfix">
										<p>
											<strong>Comfortable </strong><span>&nbsp;preshrunk shirts. Highest Quality Printing.  6.1 oz. 100% preshrunk heavyweight cotton Shoulder-to-shoulder taping Double-needle sleeves and bottom hem     
                      
                      Lorem Ipsumis
                      simply dummy text of the printing and typesetting industry. Lorem Ipsum
                      has been the industry's standard dummy text ever since the 1500s, when 
                      an unknown printer took a galley of type and scrambled it to make a type
                      specimen book. It has survived not only five centuries, but also the 
                      leap into electronic typesetting, remaining essentially unchanged. It 
                      was popularised in the 1960s with the release of Letraset sheets 
                      containing Lorem Ipsum passages, and more recently with desktop 
                      publishing software like Aldus PageMaker including versions of Lorem 
                      Ipsum.</span>
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Main Container End -->
</asp:Content>
