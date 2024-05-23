<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

<head>
    <title>Laptopstore-Chi tiết sản phẩm</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/png" href="asset/img/logo1.png">
    <link rel="stylesheet"  href="/asset/fonts/fontawesome-free-6.2.1/fontawesome-free-6.2.1-web/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
    <header style="margin-bottom: 20px;" class="header">
        <div class="header-top">
            <div>
                <a href="index.php" class="header-logo"><img src="asset/img/LAPTOP STORE_preview_rev_1.png" alt=""></a>
                <div id="address-form" class="header-address">
                    <a href="#">
                        Chọn khu vực hiện tại: <br>
                        <span style="font-weight: bold;"> Hà Nội <i class="fas fa-sort-down" style="position: absolute; top: 33%;right: 3%;"></i></span>
                    </a>
                </div>
                <div class="address-form">
                    <div class="address-form-content">
                        <h2> Chọn Địa Chỉ Nhận Hàng <span class="adderss-close">X Đóng</span></h2>
                        <form action="">
                            <p> <b>chọn đầy đủ địa chỉ nhận hàng</b> để biết chính xác thời gian giao hàng</p>\
                            <select name="" id="">
                                <option value="#">--Chọn địa điểm</option>
                                <option value="#">Hà Nội</option>
                            </select>
                            <select name="" id="">
                                <option value="#">--Chọn Quận\Huyện</option>
                                <option value="#">Hai Bà Trưng</option>
                                <option value="#">Bắc Từ Liêm</option>
                                <option value="#">Nam Từ Liêm</option>
                                <option value="#">Cầu Giấy</option>
                            </select>
                            <select name="" id="">
                                <option value="#">--Chọn Phường\Xã</option>
                                <option value="#">Hà Nội</option>
                            </select>
                            <input type="text" placeholder="Số nhà , Tên Đường">
                            <button>Xác Nhận</button>
                        </form>
                    </div>
                </div>
                <form action="" onsubmit="" class="header-search">
                    <input id="skw" class="input-search" type="text" placeholder="Bạn cần tìm gì..." name="" autocomplete="off" maxlength="100">
                    <button type="submit">
                        <i style="font-size: 18px;font-weight:900;background-position: -150px 0; height: 17px; width: 17px; background-size: 300px 200px;" class="fa-solid fa-magnifying-glass"></i>
                    </button>
                </form>
                <a href="/Login/asset/html/login.php" class="header-login">
                    Đăng Nhập
                </a>
                <a href="/cart.php" class="header-cart menu-info">
                    <div class="box-cart">
                        <i class="fa-solid fa-cart-shopping"></i>
                        <span class="cart-number"></span>
                    </div>
                    <span>Giỏ hàng</span>
                </a>
                <div class="header-listtop">
                    <div class="dvcitem"> <a href="">24h<br>Công Nghệ</a></div>
                    <div class="bordercol"></div>
                    <div class="dvcitem"> <a href="">Hỏi Đáp</a></div>
                    <div class="bordercol"></div>
                    <div class="dvcitem"> <a href="">Game App</a></div>
                </div>
            </div>
        </div>
        <!-- Main -->
        <div class="header-main">
            <div class="div-main">
                <ul class="main-menu">
                    <li>
                        <a href="">
                            <i class="fa-solid fa-laptop"></i>
                            <span>Laptop</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="fa-solid fa-tablet-screen-button"></i>
                            <span>Máy tính bảng</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="fa-solid fa-computer"></i>
                            <span>Máy tính để bàn</span>
                        </a>
                    </li>
                    <li class="has-list show-left">
                        <a href="">
                            <i class="fa-solid fa-rotate-right"></i>
                            <span class="has-child">Máy cũ, Thu cũ <i class="fas fa-sort-down icon-down"></i></span>
                        </a>
                        <div class="navdvc limit-width">
                            <div class="item-child no-child-final"><a href="">
                                    <h3>Máy cũ giá rẻ</h3>
                                </a></div>
                            <div class="item-child no-child-final"><a href="">
                                    <h3>Thu cũ đổi mới</h3>
                                </a></div>
                        </div>
                    </li>
                    <li class="has-list">
                        <a href="">
                            <i class="fa-solid fa-headphones"></i>
                            <span class="has-child">Phụ kiện <i class="fas fa-sort-down icon-down"></i> </span>
                        </a>
                        <div class="navdvc ">
                            <div class="item-child  no-child-final"><a href="">
                                    <h3>Tai nghe</h3>
                                </a></div>
                            <div class="item-child  no-child-final"><a href="">
                                    <h3>Bàn ghế gaming</h3>
                                </a></div>
                            <div class="item-child  no-child-final"><a href="">
                                    <h3>Balo- Túi xách</h3>
                                </a></div>
                            <div class="item-child  no-child-final"><a href="">
                                    <h3>Loa</h3>
                                </a></div>
                            <div class="item-child  no-child-final"><a href="">
                                    <h3>Chuột, Bàn Phím, Lót chuột</h3>
                                </a></div>
                            <div class="item-child  no-child-final"><a href="">
                                    <h3>Linh kiện</h3>
                                </a></div>
                            <div class="item-child  no-child-final"><a href="">
                                    <h3>Gaming</h3>
                                </a></div>
                            <div class="item-child  no-child-final"><a href="">
                                    <h3>Khác</h3>
                                </a></div>
                        </div>
                    </li>
                    <li>
                        <a href="">
                            <i class="fa-solid fa-user-shield"></i>
                            <span>Chính sách bảo hành</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="fa-solid fa-fire"></i>
                            <span>Khuyến mãi</span>
                        </a>
                    </li>
                    <li class="has-list show-left">
                        <a href="">
                            <span>Dịch Vụ Tiện Tích <i class="fas fa-sort-down icon-down"></i></span>
                        </a>
                        <div class="navdvc">
                            <div class="item-child no-child-final"><a href="">
                                    <h3>Đóng tiền trả góp</h3>
                                </a></div>
                            <div class="item-child no-child-final"><a href="">
                                    <h3>Mua phần mềm</h3>
                                </a></div>
                            <div class="item-child no-child-final"><a href="">
                                    <h3>Thẻ cào game</h3>
                                </a></div>
                            <div class="item-child no-child-final"><a href="">
                                    <h3>Khác</h3>
                                </a></div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </header>
    <?php
    include './connect_db.php';
    $result = mysqli_query($con, "SELECT * FROM `product` WHERE `id` = " . $_GET['id']);
    $product = mysqli_fetch_assoc($result);
    $imgLibrary = mysqli_query($con, "SELECT * FROM `image_library` WHERE `product_id` = " . $_GET['id']);
    $product['images'] = mysqli_fetch_all($imgLibrary, MYSQLI_ASSOC);
    ?>
    <div style="background-color: white;" class="container">
        <h2 style="text-align: center;font-size: 20px;font-weight:bold;margin-bottom: 12px;">Chi tiết sản phẩm <?= $product['name'] ?></h2>
        <div id="product-detail">
            <div style="border: none;" id="product-img">
                <img style="border: none;" src="<?= $product['image'] ?>" />
            </div>
            <div id="product-info">
                <h1 style="font-weight: bolder; font-size: 15px; margin-bottom: 5px;"><?= $product['name'] ?></h1>
                <label style="font-weight: bolder; font-size: 15px;">Giá: </label><span style="font-weight: bolder; font-size: 15px;" class="product-price"><?= number_format($product['price'], 0, ",", ".") ?> VND</span><br />
                <form id="add-to-cart-form" action="cart.php?action=add" method="POST">
                    <input type="text" value="1" name="quantity[<?= $product['id'] ?>]" size="2" /><br />
                    <input type="submit" value="Mua sản phẩm" />
                </form>
                <?php if (!empty($product['images'])) { ?>
                    <div id="gallery">
                        <ul>
                            <?php foreach ($product['images'] as $img) { ?>
                                <li><img src="<?= $img['path'] ?>" /></li>
                            <?php } ?>
                        </ul>
                    </div>
                <?php } ?>
            </div>
            <div class="clear-both"></div>
            <?= $product['content'] ?>
        </div>
    </div>
    <footer class="footer">
                <div class="clerfix footer_top">
                    <div class="footer_col">
                        <ul class="f-listmenu">
                            <li>
                                <a href="#">
                                    Tích điểm Quà tặng VIP
                                </a>
                            </li>
                            <li>
                                <a href="#">Lịch sử mua hàng</a>
                            </li>
                            <li>
                                <a href="#">Tìm hiểu về mua trả góp</a>
                            </li>
                            <li>
                                <a href="#">Chính sách bảo hành</a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer_col">
                        <ul class="f-listmenu">
                            <li>
                                <a href="#">Tuyển dụng</a>
                            </li>
                            <li>
                                <a href="#">Gửi góp ý, khiếu nại</a>
                            </li>
                            <li>
                                <a href="#">Tìm siêu thị </a>
                            </li>
                            <li>
                                <a href="#">Giới thiệu công ty </a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer_col">
                        <ul class="f-listmenu">
                            <p class="f-listtel_title-"> <strong>Tổng đài hỗ trợ</strong> </p>
                            <p class="f-listtel_content">
                                <span>Gọi mua:</span>
                                <a href="">0366268126</a>
                            </p>
                            <p class="f-listtel_content">
                                <span>Khiếu nại:</span>
                                <a href="">0366268126</a>
                            </p>
                            <p class="f-listtel_content">
                                <span>Bảo hành</span>
                                <a href="">0366268126</a>
                            </p>
                        </ul>
                    </div>
                    <div style="width: 33%;" class="footer_col">
                        <ul class="f-listmenu">
                            <div class="f-social">
                                <a href="#" class="link-fb">
                                    <i class="icon-fb fa-brands fa-facebook"></i>
                                    1000M fan
                                </a>
                                <a style="color: black;" href="#" class="link-tt">
                                    <i class="icon-tt fa-brands fa-tiktok"></i>
                                    1M Đăng ký
                                </a>
                                <a style="color: red;" href="#" class="link-ytb">
                                    <i class="icon-ytb fa-brands fa-youtube"></i>
                                    500k Đăng ký
                                </a>
                            </div>
                            <div class="f-certify">
                                <a href="#"></a>
                                <a href="#"></a>
                                <a href="#"></a>
                            </div>
                        </ul>
                    </div>
                </div>
            </footer>
</body>

</html>