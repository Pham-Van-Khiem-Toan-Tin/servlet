<%--
  Created by IntelliJ IDEA.
  User: MSII
  Date: 6/16/2024
  Time: 12:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ếch học bài</title>
    <style>
        .list--card--footer{
            width: 50%;
            height: 50vh;
            background: no-repeat;
            background-size: auto;
        }
    </style>

</head>
<body>
<div id="fb-root" class="fb-reset">
<div style="position: absolute; top: -10000px; width: 0px; height: 0px;">
    <div></div>
</div>
<div class=" fb_iframe_widget fb_invisible_flow" fb-iframe-plugin-query="app_id=&amp;attribution=biz_inbox&amp;
        container_width=0&amp;current_url=https%3A%2F%2Fdecamy.com%2F&amp;is_loaded_by_facade=true&amp;
        local_state=%7B%22v%22%3A2%2C%22path%22%3A2%2C%22chatState%22%3A1%2C%22visibility%22%3A%22hidden%22%2C%22showUpgradePrompt%22%3A%22not_shown%22%2C%22greetingVisibility%22%3A%22hidden%22%2C%22shouldShowLoginPage%22%3Afalse%7D&amp;
        locale=vi_VN&amp;log_id=9f14b5e3-332b-40f3-a764-f92030bac872&amp;page_id=344152196395841&amp;request_time=1703801574731&amp;sdk=joey">
        <span style="vertical-align: bottom; width: 1000px; height: 0px;">
            <iframe name="f3184120852eab8" width="1000px" height="1000px" data-testid="dialog_iframe"
                    title="" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media"
                    src="https://www.facebook.com/v14.0/plugins/customerchat.php?app_id=&amp;attribution=biz_inbox&amp;
             channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Df11baac2626d0a8%26domain%3Ddecamy.com%26is_canvas%3Dfalse%26origin%3Dhttps%253A%252F%252Fdecamy.com%252Ffbfa599d26398c%26relation%3Dparent.parent&amp;
             container_width=0&amp;current_url=https%3A%2F%2Fdecamy.com%2F&amp;is_loaded_by_facade=true&amp;
             local_state=%7B%22v%22%3A2%2C%22path%22%3A2%2C%22chatState%22%3A1%2C%22visibility%22%3A%22hidden%22%2C%22showUpgradePrompt%22%3A%22not_shown%22%2C%22greetingVisibility%22%3A%22hidden%22%2C%22shouldShowLoginPage%22%3Afalse%7D&amp;locale=vi_VN&amp;log_id=9f14b5e3-332b-40f3-a764-f92030bac872&amp;page_id=344152196395841&amp;
             request_time=1703801574729&amp;sdk=joey" style="padding: 0px; position: fixed; z-index: 2147483646; border-radius: 16px; top: auto; background: none; width: 399px; bottom: 84px; max-height: 0px; right: 16px; visibility: visible; height: 373px;" class="">
            </iframe>
        </span>
    <div class="fb_dialog  fb_dialog_advanced" alignment="right" desktop_bottom_spacing="24">
        <div class="fb_dialog_content">
            <iframe name="blank_f3184120852eab8" width="60px" tabindex="-1" data-testid="bubble_iframe" frameborder="0" allowtransparency="true"
                    allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v14.0/plugins/customer_chat/bubble"
                    style="background: none; border-radius: 60px; bottom: 24px; box-shadow: rgba(0, 0, 0, 0.15) 0px 4px 12px 0px;
                   display: block; height: 60px; margin: 0px 12px; overflow: visible; padding: 0px;
                   position: fixed; right: 12px; top: auto; width: 60px; z-index: 2147483644;">
            </iframe>
            <iframe name="availabilityStatus_f3184120852eab8" tabindex="-1" data-testid="availabilityStatus_iframe" frameborder="0"
                    allowtransparency="true" allowfullscreen="true" scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v14.0/plugins/customer_chat/bubble"
                    style="border-radius: 50%; bottom: 21.5px; height: 15px; position: fixed; right: 24px; width: 15px; z-index: 2147483646;">
            </iframe>
            <iframe name="unread_f3184120852eab8" tabindex="-1" data-testid="unread_iframe" frameborder="0" allowtransparency="true" allowfullscreen="true" scrolling="no"
                    allow="encrypted-media" src="https://www.facebook.com/v14.0/plugins/customer_chat/bubble" style="background: none; border-radius: 4pt; bottom: 68px;
                   height: 24px; position: fixed; right: 22px; width: 20px; z-index: 2147483645;">
            </iframe>
            <iframe name="greeting_f3184120852eab8" tabindex="-1" data-testid="greeting_iframe" frameborder="0" allowtransparency="true" allowfullscreen="true"
                    scrolling="no" allow="encrypted-media" src="https://www.facebook.com/v14.0/plugins/customer_chat/bubble" style="border: none; max-height: 0px; min-height: 0px;">
            </iframe>
        </div>

    </div>
</div>
<script>

    window.fbAsyncInit = function() {
        FB.init({
            xfbml            : true,
            version          : 'v14.0'
        });
    };

    (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));

</script>
<section data-v-09def669="" class="words">
    <div data-v-09def669="" class="container">
        <div data-v-09def669="" class="row">
            <div data-v-09def669="" class="col-12">
                <div data-v-09def669="" class="list-tab-exam">
                    <ul data-v-09def669="">
                        <li data-v-09def669="">
                            <a data-v-09def669="" href="/exam.htm" aria-current="page" class="item-tab router-link-exact-active router-link-active active-tab-exam">Tất cả</a>
                        </li>
                        <li data-v-09def669="">
                            <a data-v-09def669="" href="/exam/3" class="item-tab">Đọc hiểu</a>
                        </li>
                        <li data-v-09def669="">
                            <a data-v-09def669="" href="/exam/4" class="item-tab">Nghe hiểu</a>
                        </li>
                        <li data-v-09def669="">
                            <a data-v-09def669="" href="/exam/5" class="item-tab">Từ vựng - Ngữ pháp</a>
                        </li>
                    </ul>
                </div>
                <div data-v-09def669="" class="wp-top-bar-exam">
                    <h3 data-v-09def669="" class="title-exam">Tất cả</h3>
                    <div data-v-09def669="" class="nav-main-left"><div data-v-09def669="" class="item-sub-search">
                        <input data-v-09def669="" type="text" placeholder="Tìm kiếm..." class="input-search-main">
                        <span data-v-09def669="" class="icon-search"><i data-v-09def669="" aria-hidden="true" class="fa fa-search"></i></span>
                    </div>
                    </div>
                    <div data-v-09def669="" class="list-level-exam">
                        <div data-v-09def669="" class="nav-main-exam">
                            <span data-v-09def669="" class="title-list-level">Trình độ:</span>
                            <ul data-v-09def669="" class="list-main-level">
                                <li data-v-09def669="">
                                    <a data-v-09def669="" href="/exam.htm" aria-current="page" class="router-link-exact-active router-link-active active-all">Tất cả</a>
                                </li>
                                <li data-v-09def669=""><a data-v-09def669="" href="/exam/0/1" class="">A1</a>
                                </li>
                                <li data-v-09def669="">
                                    <a data-v-09def669="" href="/exam/0/2" class="">A2</a>
                                </li>
                                <li data-v-09def669="">
                                    <a data-v-09def669="" href="/exam/0/3" class="">B1</a>
                                </li>
                                <li data-v-09def669="">
                                    <a data-v-09def669="" href="/exam/0/4" class="">B2</a>
                                </li>
                                <li data-v-09def669="">
                                    <a data-v-09def669="" href="/exam/0/5" class="">C</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div data-v-09def669="" class="col-12 mt-4 mt-md-5">
                <div data-v-09def669="" class="main-list-exam">
                    <div data-v-09def669="" class="row">
                        <div data-v-09def669="" class="col-12 col-sm-6 col-lg-4 mb-4">
                            <div data-v-09def669="" class="main-exam-item">
                                <div data-v-09def669="" class="fl-category">
                                    <a data-v-09def669="" href="javascript:;">
                                        <span data-v-09def669="" class="active-tab-exam category-if">Đọc hiểu</span>
                                    </a>
                                    <a data-v-09def669="" href="/exam/0/3" class="">
                                        <span data-v-09def669="" class="active-a level-if">B1</span>
                                    </a>
                                </div>
                                <h3 data-v-09def669="" class="title-exam-item">
                                    <a data-v-09def669="" href="/luyen-thi/f38efece-d5da-4c78-8905-835b60c96716" class="">Test 40 - Lesen - Teil 5</a>
                                </h3>
                                <div data-v-09def669="" class="wp-time-ls">
                                <span data-v-09def669="" class="ico-time-ls">
                                    <i data-v-09def669="" class="far fa-clock"></i>
                                </span>
                                    <span data-v-09def669="" class="txt-time-ls">10 phút</span>
                                </div>
                                <div data-v-09def669="" class="block-bt-exam-item">
                                    <div data-v-09def669="" class="list-img-exam">
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Nguyễn Tiến Hùng" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background-color: rgb(158, 158, 158); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(248, 248, 248);">
                                                <span>NTH</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thùy Dung" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background-color: rgb(76, 175, 80); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(166, 255, 170);">
                                                <span>TD</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Nga Nguyễn" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background-color: rgb(139, 195, 74); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(229, 255, 164);">
                                                <span>NN</span>
                                            </div>
                                        </div>
                                        <a data-v-09def669="" href="javascript:;" class="number-more">+3</a>
                                    </div>
                                    <div data-v-09def669="" class="btn-free-exam">Miễn phí</div>
                                </div>
                            </div>
                        </div>
                        <div data-v-09def669="" class="col-12 col-sm-6 col-lg-4 mb-4">
                            <div data-v-09def669="" class="main-exam-item"><div data-v-09def669="" class="fl-category">
                                <a data-v-09def669="" href="javascript:;">
                                    <span data-v-09def669="" class="active-tab-exam category-if">Đọc hiểu</span>
                                </a>
                                <a data-v-09def669="" href="/exam/0/3" class="">
                                    <span data-v-09def669="" class="active-a level-if">B1</span>
                                </a>
                            </div>
                                <h3 data-v-09def669="" class="title-exam-item">
                                    <a data-v-09def669="" href="/luyen-thi/1d8a091b-bfb5-41a4-9488-ba2a64a74eb1" class="">Test 40 - Lesen - Teil 4</a>
                                </h3>
                                <div data-v-09def669="" class="wp-time-ls">
                            <span data-v-09def669="" class="ico-time-ls">
                                <i data-v-09def669="" class="far fa-clock"></i>
                            </span>
                                    <span data-v-09def669="" class="txt-time-ls">15 phút</span>
                                </div>
                                <div data-v-09def669="" class="block-bt-exam-item">
                                    <div data-v-09def669="" class="list-img-exam">
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Le Thanh Tam" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                     background-color: rgb(255, 193, 7); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(255, 255, 97);">
                                                <span>LTT</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thùy Dung" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                     background-color: rgb(76, 175, 80); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(166, 255, 170);">
                                                <span>TD</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thịnh Phạm" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                     background: url(&quot;https://lh3.googleusercontent.com/a/AGNmyxbAKnvchGR_tcucDAAS9Kv8y4fI65-PRp0HySFC=s96-c&quot;) 0% 0% / 43px 43px no-repeat scroll content-box border-box transparent;"><!---->
                                            </div>
                                        </div>
                                        <a data-v-09def669="" href="javascript:;" class="number-more">+3</a>
                                    </div>
                                    <div data-v-09def669="" class="btn-free-exam">Miễn phí</div>
                                </div>
                            </div>
                        </div>
                        <div data-v-09def669="" class="col-12 col-sm-6 col-lg-4 mb-4">
                            <div data-v-09def669="" class="main-exam-item">
                                <div data-v-09def669="" class="fl-category">
                                    <a data-v-09def669="" href="javascript:;">
                                        <span data-v-09def669="" class="active-tab-exam category-if">Đọc hiểu</span>
                                    </a>
                                    <a data-v-09def669="" href="/exam/0/3" class=""><span data-v-09def669="" class="active-a level-if">B1</span></a>
                                </div>
                                <h3 data-v-09def669="" class="title-exam-item">
                                    <a data-v-09def669="" href="/luyen-thi/a1469a5f-8f74-438c-9873-e7e977737d56" class="">Test 40 - Lesen - Teil 3</a>
                                </h3>
                                <div data-v-09def669="" class="wp-time-ls">
                                <span data-v-09def669="" class="ico-time-ls">
                                 <i data-v-09def669="" class="far fa-clock"></i>
                                </span>
                                    <span data-v-09def669="" class="txt-time-ls">10 phút</span>
                                </div>
                                <div data-v-09def669="" class="block-bt-exam-item">
                                    <div data-v-09def669="" class="list-img-exam">
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Khuất Thị Thúy Quỳnh" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background-color: rgb(156, 39, 176); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(246, 129, 255);">
                                                <span>KTT</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thùy Dung" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background-color: rgb(76, 175, 80); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(166, 255, 170);">
                                                <span>TD</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Hoàng thị trà my" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background-color: rgb(158, 158, 158); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(248, 248, 248);">
                                                <span>H</span>
                                            </div>
                                        </div>
                                        <a data-v-09def669="" href="javascript:;" class="number-more">+3</a>
                                    </div>
                                    <div data-v-09def669="" class="btn-free-exam">Miễn phí</div>
                                </div>
                            </div>
                        </div>
                        <div data-v-09def669="" class="col-12 col-sm-6 col-lg-4 mb-4">
                            <div data-v-09def669="" class="main-exam-item">
                                <div data-v-09def669="" class="fl-category">
                                    <a data-v-09def669="" href="javascript:;">
                                        <span data-v-09def669="" class="active-tab-exam category-if">Đọc hiểu</span>
                                    </a>
                                    <a data-v-09def669="" href="/exam/0/3" class="">
                                        <span data-v-09def669="" class="active-a level-if">B1</span>
                                    </a>
                                </div>
                                <h3 data-v-09def669="" class="title-exam-item">
                                    <a data-v-09def669="" href="/luyen-thi/b1a1a3b1-af86-45d4-bb07-bce05cc2d302" class="">Test 40 - Lesen - Noch Teil 2</a>
                                </h3>
                                <div data-v-09def669="" class="wp-time-ls">
                                    <span data-v-09def669="" class="ico-time-ls"><i data-v-09def669="" class="far fa-clock"></i></span>
                                    <span data-v-09def669="" class="txt-time-ls">10 phút</span>
                                </div>
                                <div data-v-09def669="" class="block-bt-exam-item">
                                    <div data-v-09def669="" class="list-img-exam">
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Le Thanh Tam" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background-color: rgb(255, 193, 7); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(255, 255, 97);">
                                                <span>LTT</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thùy Dung" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background-color: rgb(76, 175, 80); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(166, 255, 170);">
                                                <span>TD</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thịnh Phạm" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background: url(&quot;https://lh3.googleusercontent.com/a/AGNmyxbAKnvchGR_tcucDAAS9Kv8y4fI65-PRp0HySFC=s96-c&quot;) 0% 0% / 43px 43px no-repeat scroll content-box border-box transparent;"><!---->
                                            </div>
                                        </div>
                                        <a data-v-09def669="" href="javascript:;" class="number-more">+3</a>
                                    </div>
                                    <div data-v-09def669="" class="btn-free-exam">Miễn phí</div>
                                </div>
                            </div>
                        </div>
                        <div data-v-09def669="" class="col-12 col-sm-6 col-lg-4 mb-4">
                            <div data-v-09def669="" class="main-exam-item">
                                <div data-v-09def669="" class="fl-category">
                                    <a data-v-09def669="" href="javascript:;">
                                        <span data-v-09def669="" class="active-tab-exam category-if">Đọc hiểu</span>
                                    </a>
                                    <a data-v-09def669="" href="/exam/0/3" class=""><span data-v-09def669="" class="active-a level-if">B1</span></a>
                                </div>
                                <h3 data-v-09def669="" class="title-exam-item">
                                    <a data-v-09def669="" href="/luyen-thi/1bb00e2e-2118-481b-be43-71f7d906769f" class="">Test 40 - Lesen - Teil 1</a>
                                </h3>
                                <div data-v-09def669="" class="wp-time-ls">
                                    <span data-v-09def669="" class="ico-time-ls"><i data-v-09def669="" class="far fa-clock"></i></span>
                                    <span data-v-09def669="" class="txt-time-ls">10 phút</span>
                                </div>
                                <div data-v-09def669="" class="block-bt-exam-item">
                                    <div data-v-09def669="" class="list-img-exam">
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thùy Dung" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background-color: rgb(76, 175, 80); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(166, 255, 170);">
                                                <span>TD</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Hoàng thị trà my" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background-color: rgb(158, 158, 158); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(248, 248, 248);">
                                                <span>H</span>
                                            </div>
                                        </div><div data-v-09def669="" class="img-item">
                                        <div data-v-09def669="" title="Nguyen Duy Hung" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background-color: rgb(121, 85, 72); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(211, 175, 162);">
                                            <span>NDH</span>
                                        </div>
                                    </div>
                                        <a data-v-09def669="" href="javascript:;" class="number-more">+3</a>
                                    </div>
                                    <div data-v-09def669="" class="btn-free-exam">Miễn phí</div>
                                </div>
                            </div>
                        </div>
                        <div data-v-09def669="" class="col-12 col-sm-6 col-lg-4 mb-4">
                            <div data-v-09def669="" class="main-exam-item">
                                <div data-v-09def669="" class="fl-category">
                                    <a data-v-09def669="" href="javascript:;"><span data-v-09def669="" class="active-tab-exam category-if">Đọc hiểu</span></a>
                                    <a data-v-09def669="" href="/exam/0/3" class=""><span data-v-09def669="" class="active-a level-if">B1</span></a>
                                </div>
                                <h3 data-v-09def669="" class="title-exam-item">
                                    <a data-v-09def669="" href="/luyen-thi/460c20a5-6bfe-4cba-9e46-e0ff600c1d31" class="">Test 40 - Lesen - Teil 1</a>
                                </h3>
                                <div data-v-09def669="" class="wp-time-ls">
                                    <span data-v-09def669="" class="ico-time-ls"><i data-v-09def669="" class="far fa-clock"></i></span>
                                    <span data-v-09def669="" class="txt-time-ls">10 phút</span>
                                </div>
                                <div data-v-09def669="" class="block-bt-exam-item">
                                    <div data-v-09def669="" class="list-img-exam">
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thùy Dung" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background-color: rgb(76, 175, 80); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(166, 255, 170);">
                                                <span>TD</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thịnh Phạm" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background: url(&quot;https://lh3.googleusercontent.com/a/AGNmyxbAKnvchGR_tcucDAAS9Kv8y4fI65-PRp0HySFC=s96-c&quot;) 0% 0% / 43px 43px no-repeat scroll content-box border-box transparent;"><!---->
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Nguyễn Hữu Hải" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background: url(&quot;https://lh3.googleusercontent.com/a/ACg8ocIQOkk8GcVRvnlwcGVfJBsySrYdP_fT94lIPrbW-eYJ=s96-c&quot;) 0% 0% / 43px 43px no-repeat scroll content-box border-box transparent;"><!---->
                                            </div>
                                        </div>
                                        <a data-v-09def669="" href="javascript:;" class="number-more">+3</a>
                                    </div>
                                    <div data-v-09def669="" class="btn-free-exam">Miễn phí</div>
                                </div>
                            </div>
                        </div>
                        <div data-v-09def669="" class="col-12 col-sm-6 col-lg-4 mb-4">
                            <div data-v-09def669="" class="main-exam-item">
                                <div data-v-09def669="" class="fl-category">
                                    <a data-v-09def669="" href="javascript:;">
                                        <span data-v-09def669="" class="active-tab-exam category-if">Đọc hiểu</span>
                                    </a>
                                    <a data-v-09def669="" href="/exam/0/3" class=""><span data-v-09def669="" class="active-a level-if">B1</span></a>
                                </div>
                                <h3 data-v-09def669="" class="title-exam-item">
                                    <a data-v-09def669="" href="/luyen-thi/639b2d77-dd4a-4038-91b0-d156f625ce6f" class="">Test 39 - Lesen - Teil 5</a>
                                </h3>
                                <div data-v-09def669="" class="wp-time-ls">
                                    <span data-v-09def669="" class="ico-time-ls"><i data-v-09def669="" class="far fa-clock"></i></span>
                                    <span data-v-09def669="" class="txt-time-ls">10 phút</span>
                                </div>
                                <div data-v-09def669="" class="block-bt-exam-item">
                                    <div data-v-09def669="" class="list-img-exam">
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thùy Dung" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background-color: rgb(76, 175, 80); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(166, 255, 170);">
                                                <span>TD</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thịnh Phạm" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background: url(&quot;https://lh3.googleusercontent.com/a/AGNmyxbAKnvchGR_tcucDAAS9Kv8y4fI65-PRp0HySFC=s96-c&quot;) 0% 0% / 43px 43px no-repeat scroll content-box border-box transparent;"><!---->
                                            </div>
                                        </div>
                                        <a data-v-09def669="" href="javascript:;" class="number-more">+2</a>
                                    </div>
                                    <div data-v-09def669="" class="btn-free-exam">Miễn phí</div>
                                </div>
                            </div>
                        </div>
                        <div data-v-09def669="" class="col-12 col-sm-6 col-lg-4 mb-4">
                            <div data-v-09def669="" class="main-exam-item">
                                <div data-v-09def669="" class="fl-category">
                                    <a data-v-09def669="" href="javascript:;">
                                        <span data-v-09def669="" class="active-tab-exam category-if">Đọc hiểu</span>
                                    </a>
                                    <a data-v-09def669="" href="/exam/0/3" class="">
                                        <span data-v-09def669="" class="active-a level-if">B1</span>
                                    </a>
                                </div>
                                <h3 data-v-09def669="" class="title-exam-item">
                                    <a data-v-09def669="" href="/luyen-thi/f540a95a-6a14-4c9c-b24e-734159850efe" class="">Test 39 - Lesen - Teil 4</a>
                                </h3>
                                <div data-v-09def669="" class="wp-time-ls">
                                    <span data-v-09def669="" class="ico-time-ls"><i data-v-09def669="" class="far fa-clock"></i></span>
                                    <span data-v-09def669="" class="txt-time-ls">15 phút</span>
                                </div>
                                <div data-v-09def669="" class="block-bt-exam-item">
                                    <div data-v-09def669="" class="list-img-exam">
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thùy Dung" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background-color: rgb(76, 175, 80); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(166, 255, 170);">
                                                <span>TD</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thịnh Phạm" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                         background: url(&quot;https://lh3.googleusercontent.com/a/AGNmyxbAKnvchGR_tcucDAAS9Kv8y4fI65-PRp0HySFC=s96-c&quot;) 0% 0% / 43px 43px no-repeat scroll content-box border-box transparent;"><!---->
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Nguyễn Thị Ngọc Anh" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                             background-color: rgb(255, 64, 129); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(255, 154, 219);">
                                                <span>NTN</span>
                                            </div>
                                        </div>
                                        <a data-v-09def669="" href="javascript:;" class="number-more">+3</a>
                                    </div>
                                    <div data-v-09def669="" class="btn-free-exam">Miễn phí</div>
                                </div>
                            </div>
                        </div>
                        <div data-v-09def669="" class="col-12 col-sm-6 col-lg-4 mb-4">
                            <div data-v-09def669="" class="main-exam-item">
                                <div data-v-09def669="" class="fl-category">
                                    <a data-v-09def669="" href="javascript:;">
                                        <span data-v-09def669="" class="active-tab-exam category-if">Đọc hiểu</span>
                                    </a>
                                    <a data-v-09def669="" href="/exam/0/3" class=""><span data-v-09def669="" class="active-a level-if">B1</span></a>
                                </div>
                                <h3 data-v-09def669="" class="title-exam-item">
                                    <a data-v-09def669="" href="/luyen-thi/6fe304fa-e94a-44ce-aa8f-ccfe9e943ae3" class="">Test 39 - Lesen - Teil 3</a>
                                </h3>
                                <div data-v-09def669="" class="wp-time-ls">
                                    <span data-v-09def669="" class="ico-time-ls">
                                        <i data-v-09def669="" class="far fa-clock"></i></span>
                                    <span data-v-09def669="" class="txt-time-ls">10 phút</span>
                                </div>
                                <div data-v-09def669="" class="block-bt-exam-item">
                                    <div data-v-09def669="" class="list-img-exam">
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thùy Dung" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                                 background-color: rgb(76, 175, 80); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(166, 255, 170);">
                                                <span>TD</span>
                                            </div>
                                        </div><div data-v-09def669="" class="img-item">
                                        <div data-v-09def669="" title="Thịnh Phạm" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                                 background: url(&quot;https://lh3.googleusercontent.com/a/AGNmyxbAKnvchGR_tcucDAAS9Kv8y4fI65-PRp0HySFC=s96-c&quot;) 0% 0% / 43px 43px no-repeat scroll content-box border-box transparent;"><!---->
                                        </div>
                                    </div>
                                        <a data-v-09def669="" href="javascript:;" class="number-more">+2</a>
                                    </div>
                                    <div data-v-09def669="" class="btn-free-exam">Miễn phí</div>
                                </div>
                            </div>
                        </div>
                        <div data-v-09def669="" class="col-12 col-sm-6 col-lg-4 mb-4">
                            <div data-v-09def669="" class="main-exam-item">
                                <div data-v-09def669="" class="fl-category">
                                    <a data-v-09def669="" href="javascript:;">
                                        <span data-v-09def669="" class="active-tab-exam category-if">Đọc hiểu</span>
                                    </a>
                                    <a data-v-09def669="" href="/exam/0/3" class="">
                                        <span data-v-09def669="" class="active-a level-if">B1</span>
                                    </a>
                                </div>
                                <h3 data-v-09def669="" class="title-exam-item"><a data-v-09def669="" href="/luyen-thi/17352c74-73be-4753-92b1-9f5a26674a20" class="">Test 39 - Lesen - Noch Teil 2</a></h3> <div data-v-09def669="" class="wp-time-ls"><span data-v-09def669="" class="ico-time-ls"><i data-v-09def669="" class="far fa-clock"></i></span> <span data-v-09def669="" class="txt-time-ls">10 phút</span></div> <div data-v-09def669="" class="block-bt-exam-item"><div data-v-09def669="" class="list-img-exam"><div data-v-09def669="" class="img-item"><div data-v-09def669="" title="Thùy Dung" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle; background-color: rgb(76, 175, 80); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(166, 255, 170);"><span>TD</span></div></div><div data-v-09def669="" class="img-item"><div data-v-09def669="" title="Thịnh Phạm" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle; background: url(&quot;https://lh3.googleusercontent.com/a/AGNmyxbAKnvchGR_tcucDAAS9Kv8y4fI65-PRp0HySFC=s96-c&quot;) 0% 0% / 43px 43px no-repeat scroll content-box border-box transparent;"><!----></div></div><div data-v-09def669="" class="img-item"><div data-v-09def669="" title="Trường Ngô Xuân" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle; background: url(&quot;https://lh3.googleusercontent.com/a/ACg8ocLPYDJcXL2R8YIlaqjjUdyz38nWO-LJrOrodsyHXp-hc6c=s96-c&quot;) 0% 0% / 43px 43px no-repeat scroll content-box border-box transparent;"><!---->
                            </div>
                            </div>
                                <a data-v-09def669="" href="javascript:;" class="number-more">+3</a>
                            </div>
                                <div data-v-09def669="" class="btn-free-exam">Miễn phí</div>
                            </div>
                            </div>

                        </div>
                        <div data-v-09def669="" class="col-12 col-sm-6 col-lg-4 mb-4">
                            <div data-v-09def669="" class="main-exam-item">
                                <div data-v-09def669="" class="fl-category">
                                    <a data-v-09def669="" href="javascript:;"><span data-v-09def669="" class="active-tab-exam category-if">Đọc hiểu</span></a>
                                    <a data-v-09def669="" href="/exam/0/3" class=""><span data-v-09def669="" class="active-a level-if">B1</span></a>
                                </div>
                                <h3 data-v-09def669="" class="title-exam-item">
                                    <a data-v-09def669="" href="/luyen-thi/8d22a036-8fce-40f3-b270-b34bb0aa8ff3" class="">Test 39 - Lesen - Teil 2</a>
                                </h3>
                                <div data-v-09def669="" class="wp-time-ls">
                                    <span data-v-09def669="" class="ico-time-ls"><i data-v-09def669="" class="far fa-clock"></i></span>
                                    <span data-v-09def669="" class="txt-time-ls">10 phút</span>
                                </div>
                                <div data-v-09def669="" class="block-bt-exam-item">
                                    <div data-v-09def669="" class="list-img-exam">
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Le Thanh Tam" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                             background-color: rgb(255, 193, 7); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(255, 255, 97);">
                                                <span>LTT</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thùy Dung" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                             background-color: rgb(76, 175, 80); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(166, 255, 170);">
                                                <span>TD</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Đào Hương Thanh" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                             background-color: rgb(121, 85, 72); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(211, 175, 162);">
                                                <span>ĐHT</span>
                                            </div>
                                        </div>
                                        <a data-v-09def669="" href="javascript:;" class="number-more">+3</a>
                                    </div>
                                    <div data-v-09def669="" class="btn-free-exam">Miễn phí</div>
                                </div>
                            </div>
                        </div>
                        <div data-v-09def669="" class="col-12 col-sm-6 col-lg-4 mb-4">
                            <div data-v-09def669="" class="main-exam-item">
                                <div data-v-09def669="" class="fl-category">
                                    <a data-v-09def669="" href="javascript:;"><span data-v-09def669="" class="active-tab-exam category-if">Đọc hiểu</span></a>
                                    <a data-v-09def669="" href="/exam/0/3" class=""><span data-v-09def669="" class="active-a level-if">B1</span></a>
                                </div>
                                <h3 data-v-09def669="" class="title-exam-item">
                                    <a data-v-09def669="" href="/luyen-thi/3e5e89f0-8845-4078-8aa2-98b64aff3f30" class="">Test 39 - Lesen - Teil 1</a>
                                </h3>
                                <div data-v-09def669="" class="wp-time-ls">
                                    <span data-v-09def669="" class="ico-time-ls"><i data-v-09def669="" class="far fa-clock"></i></span>
                                    <span data-v-09def669="" class="txt-time-ls">10 phút</span>
                                </div>
                                <div data-v-09def669="" class="block-bt-exam-item" >
                                    <div data-v-09def669="" class="list-img-exam">
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Le Thanh Tam" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                             background-color: rgb(255, 193, 7); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(255, 255, 97);">
                                                <span>LTT</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Thùy Dung" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                             background-color: rgb(76, 175, 80); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(166, 255, 170);">
                                                <span>TD</span>
                                            </div>
                                        </div>
                                        <div data-v-09def669="" class="img-item">
                                            <div data-v-09def669="" title="Lê Đức Đạt" class="Decamy-avatar-wrapper" style="width: 43px; height: 43px; border-radius: 50%; text-align: center; vertical-align: middle;
                                             background-color: rgb(139, 195, 74); font: 14px / 45px Helvetica, Arial, sans-serif; color: rgb(229, 255, 164);">
                                                <span>LĐĐ</span>
                                            </div>
                                        </div>
                                        <a data-v-09def669="" href="javascript:;" class="number-more">+3</a>
                                    </div>
                                    <div data-v-09def669="" class="btn-free-exam">Miễn phí</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div data-v-0e46899e="" data-v-09def669="" class="nav-list-page">
                    <ul data-v-0e46899e="">
                        <li data-v-0e46899e="" class="active-disable-ps">
                            <a data-v-0e46899e="" href="javascript:;" class="disabled"><i data-v-0e46899e="" class="fas fa-chevron-left"></i></a>
                        </li>
                        <li data-v-0e46899e="" class="active"><a data-v-0e46899e="" href="javascript:;">1</a></li>
                        <li data-v-0e46899e="" class=""><a data-v-0e46899e="" href="javascript:;">2</a></li>
                        <li data-v-0e46899e="" class=""><a data-v-0e46899e="" href="javascript:;">3</a></li>
                        <li data-v-0e46899e="" class=""><a data-v-0e46899e="" href="javascript:;">4</a></li>
                        <li data-v-0e46899e="" class=""><a data-v-0e46899e="" href="javascript:;">5</a></li>

                        <li data-v-0e46899e="" class=""><a data-v-0e46899e="" href="javascript:;">6</a></li>
                        <li data-v-0e46899e="" class=""><a data-v-0e46899e="" href="javascript:;">...</a></li>
                        <li data-v-0e46899e="" class=""><a data-v-0e46899e="" href="javascript:;">20</a></li>
                        <li data-v-0e46899e="" class=""><a data-v-0e46899e="" href="javascript:;" class=""><i data-v-0e46899e="" class="fas fa-chevron-right"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<footer id="footer" class="block__footer">
    <div class="container">
        <div class="footer--top">
            <div class="logo-footer">
                <a href=""><img data-v-90f4d1e2="" src="https://storage.decamy.com/Data/2019/08/29/logo-white-ngang-637026766630263437.png?w=183&amp;mode=crop" class="photo-image"></a>
                <h3 class="title-logo">HỆ THỐNG ĐÀO TẠO TIẾNG ĐỨC TRỰC TUYẾN</h3>
            </div>
            <div class="menu__footer"></div>
        </div>
        <div class="footer--bottom">
            <div class="row">
                <div class="col-12 col-sm-6 col-md-7 col-lg-4">
                    <h3 class="title__footer" style="text-transform: uppercase;">Liên hệ</h3>
                    <div class="footer__info">
                        <ul>
                            <li>
                                <a href="mailto:hoctiengduccungdecamy@gmail.com"><i class="fas fa-envelope"></i>
                                    <font _mstmutation="1"> Echhocbai@gmail.com</font>
                                </a>
                            </li>
                            <li>
                                <a href="tel:0963.041.210 -  0376537769"><i class="fas fa-phone-volume"></i>
                                    <font _mstmutation="1">0963.041.210 -  0376537769</font>
                                </a>
                            </li>
                            <li>
                                <a href="javascript:;">
                                    <i class="fas fa-map-marker-alt"></i>
                                    <font _mstmutation="1">Phố Trịnh Văn Bô, trường Đại học Công Nghệ Đông Á</font>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="item--img">
                        <div class="badge-red">
                            <a href=""><img src="${pageContext.request.contextPath}/public/image/img-change/badge2.png" alt=""></a>
                        </div>
                        <div class="badge-blue"><a href=""><img src="${pageContext.request.contextPath}/public/image/img-change/badge1.png" alt=""></a></div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-5 col-lg-3 col-pt">
                    <h3 class="title__footer" style="text-transform: uppercase;">Danh mục</h3>
                    <div class="list--footer">
                        <ul>
                            <li><a href="/package.htm" class="">Gói học</a></li>
                            <li><a href="/grammar.htm" class="">Ngữ pháp</a></li>
                            <li><a href="/entertainment.htm" class="">Giải trí</a></li>
                            <li><a href="/exam.htm" class="router-link-exact-active router-link-active" aria-current="page">Luyện thi</a></li>
                            <li><a href="/blog.htm" class="">Tin tức</a></li> <li><a href="/vocabulary.htm" class="">Từ vựng</a></li>
                            <li><a href="/library.htm" class="">Tài liệu</a></li>
                            <li><a href="/translate.htm" class="">Từ điển</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-7 col-lg-2 mt-foter">
                    <h3 class="title__footer" style="text-transform: uppercase;">Thanh toán</h3>
                    <div class="list--card">
                        <div class="list--card--footer"><img src="${pageContext.request.contextPath}/public/imagez5019870352972_50d7c23eacbc3a9dc77d9684ad47c574.jpg" alt=""></div>
                        <div class="list--card--footer"><img src="${pageContext.request.contextPath}/public/imagez5019874444318_4da4772f8479b5974c8659fb1869b44f.jpg" alt=""></div>
                    </div>
                </div>
                <div class="col-12 col-sm-6 col-md-5 col-lg-3">
                    <div class="fanpage-fb">
                        <iframe src="https://https://www.facebook.com/profile.php?id=100027544907863&mibextid=2JQ9oc" width="250px" height="200px" scrolling="no" frameborder="0" allowtransparency="true" allow="encrypted-media" style="border: none; overflow: hidden;"></iframe>
                    </div>
                    <div class="copy-right">
                        <span>Copyright by Decamy - All Rights Reserved</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<div data-v-78d4957f="" class="group-contact">
    <a data-v-78d4957f="" class="item-contact"><i data-v-78d4957f="" class="fab fa-facebook-messenger"></i></a>
    <a data-v-78d4957f="" href="tel: 0934143128" class="item-contact"><i data-v-78d4957f="" class="fas fa-phone"></i></a>
</div>
<a data-v-00ff3cc1="" id="back2top" href="javascript:;" class="btn-to-top" style=""><i data-v-00ff3cc1="" aria-hidden="true" class="fa fa-angle-up"></i></a>
<div data-v-6bf72cbc="">
    <div data-v-6bf72cbc="" id="fixed-functions">
        <span data-v-6bf72cbc="" title="Báo lỗi" class="func-item report">
            <i data-v-6bf72cbc="" aria-hidden="true" class="fa fa-exclamation-triangle"></i>
        </span>
    </div> <!---->
</div>
<div data-v-6bf72cbc="">
    <div data-v-6bf72cbc="" id="fixed-functions">
        <span data-v-6bf72cbc="" title="Báo lỗi" class="func-item report">
            <i data-v-6bf72cbc="" aria-hidden="true" class="fa fa-exclamation-triangle"></i>
        </span>
    </div> <!---->
</div>
<svg id="SvgjsSvg1001" width="2" height="0" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.com/svgjs" style="overflow: hidden; top: -100%; left: -100%; position: absolute; opacity: 0;"><defs id="SvgjsDefs1002"></defs>
    <polyline id="SvgjsPolyline1003" points="0,0"></polyline>
    <path id="SvgjsPath1004" d="M0 0 "></path>
</svg>

</body>
</html>
