<!DOCTYPE html>
<html>

<head>
    <title>Laptopstore.superstore-laptop-pc-phụ kiện máy tính</title>
    <meta charset="UTF-8">
    <link rel="shortcut icon" type="image/png" href="/asset/img/logo1.png">
    <link rel="stylesheet" href="/asset/css/index.css">
    <link rel="stylesheet" href="./asset/fonts/fontawesome-free-6.2.1/fontawesome-free-6.2.1-web/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>

    </style>
</head>

<bod style="background-color: #f1f1f1;">
    <?php
    $param = "";
    $sortParam = "";
    $orderConditon = "";
    //Tìm kiếm
    $search = isset($_GET['name']) ? $_GET['name'] : "";
    if ($search) {
        $where = "WHERE `name` LIKE '%" . $search . "%'";
        $param .= "name=" . $search . "&";
        $sortParam =  "name=" . $search . "&";
    }

    //Sắp xếp
    $orderField = isset($_GET['field']) ? $_GET['field'] : "";
    $orderSort = isset($_GET['sort']) ? $_GET['sort'] : "";
    if (
        !empty($orderField)
        && !empty($orderSort)
    ) {
        $orderConditon = "ORDER BY `product`.`" . $orderField . "` " . $orderSort;
        $param .= "field=" . $orderField . "&sort=" . $orderSort . "&";
    }

    include './connect_db.php';
    $item_per_page = !empty($_GET['per_page']) ? $_GET['per_page'] : 4;
    $current_page = !empty($_GET['page']) ? $_GET['page'] : 1; //Trang hiện tại
    $offset = ($current_page - 1) * $item_per_page;
    if ($search) {
        $products = mysqli_query($con, "SELECT * FROM `product` WHERE `name` LIKE '%" . $search . "%' " . $orderConditon . "  LIMIT " . $item_per_page . " OFFSET " . $offset);
        $totalRecords = mysqli_query($con, "SELECT * FROM `product` WHERE `name` LIKE '%" . $search . "%'");
    } else {
        $products = mysqli_query($con, "SELECT * FROM `product` " . $orderConditon . " LIMIT " . $item_per_page . " OFFSET " . $offset);
        $totalRecords = mysqli_query($con, "SELECT * FROM `product`");
    }
    $totalRecords = $totalRecords->num_rows;
    $totalPages = ceil($totalRecords / $item_per_page);
    ?>
    <!--  -->
    <header class="header">
        <div class="header-top">
            <div>
                <a href="index.php" class="header-logo"><img src="./asset/img/LAPTOP STORE_preview_rev_1.png" alt=""></a>
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
                <form id="product-search " class="header-search" method="GET">
                    <input maxlength="100" class="input-search" placeholder="Bạn cần tìm gì..." type="text" value="<?= isset($_GET['name']) ? $_GET['name'] : "" ?>" name="name" />
                    <input style="padding: 0;float: right;width: 60px;" class="magnifying-glass" type="submit" value="Tìm kiếm" />
                </form>
                <a href="/Login/asset/html/login.php" class="header-login">
                    Đăng Nhập
                </a>
                <a href="cart.php" class="header-cart menu-info">
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
        <div class="banner">
            <div class="top-banner laptopnew">
                <section>
                    <div class="slider-bannertop owl-theme owl-carousel">
                        <div class="bannertop-item">
                            <?php
                            $query = "SELECT * FROM banner";
                            $result = mysqli_query($con, $query);
                            while ($row =  mysqli_fetch_array($result)) { ?>
                                <div class="item">
                                    <a href="">
                                        <img class="image" src="../<?= $row['image'] ?>" alt="">
                                    </a>
                                </div>
                            <?php }
                            ?>
                        </div>
                    </div>
                </section>
            </div>
        </div>
        <div class="quick-link">
            <div>
                <a class="box-quicklink" href=""> <img class="no-text" src="/asset/img/quick Link/logo-ph.png" height="25"> </a>
                <a class="box-quicklink" href=""> <img class="no-text" src="asset/img/quick Link/logo-asus.png" height="25"> </a>
                <a class="box-quicklink" href=""> <img class="no-text" src="asset/img/quick Link/logo-acer.png" height="25"> </a>
                <a class="box-quicklink" href=""> <img class="no-text" src="asset/img/quick Link/logo-lenovo.png" height="25"> </a>
                <a class="box-quicklink" href=""> <img class="no-text" src="asset/img/quick Link/logo-dell.png" height="25"> </a>
                <a class="box-quicklink" href=""> <img class="no-text" src="asset/img/quick Link/logo-msi.png" height="25"> </a>
                <a class="box-quicklink" href=""> <img class="no-text" src="asset/img/quick Link/logo-macbook.png" height="25"> </a>
                <a class="box-quicklink" href=""> <img class="no-text" src="asset/img/quick Link/logo-itel.png" height="25"> </a>
                <a class="box-quicklink" href=""> <img class="no-text" src="asset/img/quick Link/logo-gigabyte.png" height="25"> </a>
                <a class="box-quicklink" href=""> <img class="no-text" src="asset/img/quick Link/logo-surface.png" height="25"> </a>
                <a class="box-quicklink" href=""> <img class="no-text" src="asset/img/quick Link/logo-Masstel.png" height="25"> </a>
                <a class="box-quicklink" href=""> <img class="no-text" src="asset/img/quick Link/logo-singpc.jpg" height="25"> </a>
                <a class="box-quicklink" href=""> <img class="no-text" src="asset/img/quick Link/logo-lg.png" height="25"> </a>

            </div>
    </header>
    <div style="background-color: #D20E12!important;" id="wrapper-product" class="container deal-main lunar">
        <h2 class="deal-title">
            <a href="" style="background: url(https://cdn.tgdd.vn/2023/12/banner/frame-deal-soc-desk-final-1920x144.png);background-size: cover;">
                <img width="1200" height="90" src="https://cdn.tgdd.vn/mwgcart/mwg-site/ContentMwg/images/laptop/bg_tet_desk.png" style="cursor: pointer;">
                <span class="txtDs">TẤT CẢ</span>
                <span class="txtGd">SẢN PHẨM</span>
            </a>
        </h2>
        <div id="filter-box">
            <select style="width: 150px;height: unset;" id="sort-box" onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
                <option value="">Sắp xếp giá</option>
                <option <?php if (isset($_GET['sort']) && $_GET['sort'] == "desc") { ?> selected <?php } ?> value="?<?= $sortParam ?>field=price&sort=desc">Cao đến thấp</option>
                <option <?php if (isset($_GET['sort']) && $_GET['sort'] == "asc") { ?> selected <?php } ?> value="?<?= $sortParam ?>field=price&sort=asc">Thấp đến cao</option>
            </select>
            <div style="clear: both;"></div>
        </div>
        <div class="product-items">
            <?php
            while ($row = mysqli_fetch_array($products)) {
            ?>
                <div class="product-item">
                    <div class="product-img">
                        <a href="detail.php?id=<?= $row['id'] ?>"><img src="<?= $row['image'] ?>" title="<?= $row['name'] ?>" /></a>
                    </div>
                    <strong><a href="detail.php?id=<?= $row['id'] ?>"><?= $row['name'] ?></a></strong><br />
                    <label>Giá: </label><span class="product-price"><?= number_format($row['price'], 0, ",", ".") ?> đ</span><br />
                    <p><?= $row['content'] ?></p>
                    <form action="detail.php?id=<?= $row['id'] ?>">
                        <div class="buy-button">
                            <a href="detail.php?id=<?= $row['id'] ?>">Mua sản phẩm</a>
                        </div>
                    </form>
                </div>
            <?php } ?>
            <div class="clear-both"></div>
            <?php
            include './pagination.php';
            ?>
            <div class="clear-both"></div>
        </div>
    </div>
    <div class="banner-cushion">
        <section>
            <div style="margin-top: 20px;" class="bannercushion">
                <div class="cushion-slider">
                    <div class="slider-banner owl-carousel owl-loaded owl-drag" style="width: 1240px">
                        <div class="owl-stage-outer">
                            <div class="owl-stage">
                                <div style="margin-right:3px;" class="owl-item">
                                    <a href="#">
                                        <img src="/asset/img/banner cushion/sticky 1.webp">
                                    </a>
                                </div>
                                <div style="margin-right:11px;" class="owl-item">
                                    <a href="#">
                                        <img src="/asset/img/banner cushion/sticky2.webp">
                                    </a>
                                </div>
                                <div style="margin-right:11px;" class="owl-item">
                                    <a href="#">
                                        <img src="/asset/img/banner cushion/sticky3.webp">
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Cao cap -->
            <div style="background-color: black!important;" id="wrapper-product" class="container deal-main lunar">
                <div class="block_banner ">
                    <div>
                        <div class="item_banner">
                            <a href="#"> <img style="cursor: pointer;" src="/asset/img/banner cushion/banner-cao-cao-desktop-1200x200.png"></a>
                        </div>
                    </div>
                </div>
                <div id="filter-box">
                    <select style="width: 150px;height: unset;" id="sort-box" onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
                        <option value="">Sắp xếp giá</option>
                        <option <?php if (isset($_GET['sort']) && $_GET['sort'] == "desc") { ?> selected <?php } ?> value="?<?= $sortParam ?>field=price&sort=desc">Cao đến thấp</option>
                        <option <?php if (isset($_GET['sort']) && $_GET['sort'] == "asc") { ?> selected <?php } ?> value="?<?= $sortParam ?>field=price&sort=asc">Thấp đến cao</option>
                    </select>
                    <div style="clear: both;"></div>
                </div>
                <div class="product-items">
                    <?php
                    $query = "SELECT * FROM `product` WHERE `phanloai`='caocap'";
                    $result = mysqli_query($con, $query);
                    while ($row =  mysqli_fetch_array($result)) { ?>
                        <div class="product-item">
                            <div class="product-img">
                                <a href="detail.php?id=<?= $row['id'] ?>"><img src="<?= $row['image'] ?>" title="<?= $row['name'] ?>" /></a>
                            </div>
                            <strong><a href="detail.php?id=<?= $row['id'] ?>"><?= $row['name'] ?></a></strong><br />
                            <label>Giá: </label><span class="product-price"><?= number_format($row['price'], 0, ",", ".") ?> đ</span><br />
                            <p><?= $row['content'] ?></p>
                            <form action="detail.php?id=<?= $row['id'] ?>">
                                <div class="buy-button">
                                    <a href="detail.php?id=<?= $row['id'] ?>">Mua sản phẩm</a>
                                </div>
                            </form>
                        </div>
                    <?php } ?>
                    <div class="clear-both"></div>
                </div>
            </div>
            <div class="banner-cushion">
            <!-- macbook  -->
            <div style="background-color: #f1f1f1 !important;" id="wrapper-product" class="container deal-main lunar">
                <div class="block_banner ">
                    <div>
                        <div class="item_banner">
                            <a href="#"> <img style="cursor: pointer;" src="/asset/img/banner cushion/macbook-desk-2-1200x200.png"></a>
                        </div>
                    </div>
                </div>
                <div id="filter-box">
                    <select style="width: 150px;height: unset;" id="sort-box" onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
                        <option value="">Sắp xếp giá</option>
                        <option <?php if (isset($_GET['sort']) && $_GET['sort'] == "desc") { ?> selected <?php } ?> value="?<?= $sortParam ?>field=price&sort=desc">Cao đến thấp</option>
                        <option <?php if (isset($_GET['sort']) && $_GET['sort'] == "asc") { ?> selected <?php } ?> value="?<?= $sortParam ?>field=price&sort=asc">Thấp đến cao</option>
                    </select>
                    <div style="clear: both;"></div>
                </div>
                <div class="product-items">
                    <?php
                    $query = "SELECT * FROM `product` WHERE `phanloai`='macbook'";
                    $result = mysqli_query($con, $query);
                    while ($row =  mysqli_fetch_array($result)) { ?>
                        <div class="product-item">
                            <div class="product-img">
                                <a href="detail.php?id=<?= $row['id'] ?>"><img src="<?= $row['image'] ?>" title="<?= $row['name'] ?>" /></a>
                            </div>
                            <strong><a href="detail.php?id=<?= $row['id'] ?>"><?= $row['name'] ?></a></strong><br />
                            <label>Giá: </label><span class="product-price"><?= number_format($row['price'], 0, ",", ".") ?> đ</span><br />
                            <p><?= $row['content'] ?></p>
                            <form action="detail.php?id=<?= $row['id'] ?>">
                                <div class="buy-button">
                                    <a href="detail.php?id=<?= $row['id'] ?>">Mua sản phẩm</a>
                                </div>
                            </form>
                        </div>
                    <?php } ?>
                    <div class="clear-both"></div>
                </div>
            </div>
            <!-- Gaming  -->
            <div style="background-color:#25304b !important;" id="wrapper-product" class="container deal-main lunar">
                <div class="block_banner ">
                    <div>
                        <div class="item_banner">
                            <a href="#"> <img style="cursor: pointer;" src="/asset/img/banner cushion/dem-gaming-desk-1200x200.png"></a>
                        </div>
                    </div>
                </div>
                <div id="filter-box">
                    <select style="width: 150px;height: unset;" id="sort-box" onchange="this.options[this.selectedIndex].value && (window.location = this.options[this.selectedIndex].value);">
                        <option value="">Sắp xếp giá</option>
                        <option <?php if (isset($_GET['sort']) && $_GET['sort'] == "desc") { ?> selected <?php } ?> value="?<?= $sortParam ?>field=price&sort=desc">Cao đến thấp</option>
                        <option <?php if (isset($_GET['sort']) && $_GET['sort'] == "asc") { ?> selected <?php } ?> value="?<?= $sortParam ?>field=price&sort=asc">Thấp đến cao</option>
                    </select>
                    <div style="clear: both;"></div>
                </div>
                <div class="product-items">
                    <?php
                    $query = "SELECT * FROM `product` WHERE `phanloai`='Gaming'";
                    $result = mysqli_query($con, $query);
                    while ($row =  mysqli_fetch_array($result)) { ?>
                        <div class="product-item">
                            <div class="product-img">
                                <a href="detail.php?id=<?= $row['id'] ?>"><img src="<?= $row['image'] ?>" title="<?= $row['name'] ?>" /></a>
                            </div>
                            <strong><a href="detail.php?id=<?= $row['id'] ?>"><?= $row['name'] ?></a></strong><br />
                            <label>Giá: </label><span class="product-price"><?= number_format($row['price'], 0, ",", ".") ?> đ</span><br />
                            <p><?= $row['content'] ?></p>
                            <form action="detail.php?id=<?= $row['id'] ?>">
                                <div class="buy-button">
                                    <a href="detail.php?id=<?= $row['id'] ?>">Mua sản phẩm</a>
                                </div>
                            </form>
                        </div>
                    <?php } ?>
                    <div class="clear-both"></div>
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
            <script src="/asset/js/index.js"></script>
            </body>

</html>