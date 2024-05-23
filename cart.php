<?php session_start(); ?>
<!DOCTYPE html>
<html>

<head>
    <title>Laptopstore-Giỏ Hàng</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" type="image/png" href="asset/img/logo1.png">
    <link rel="stylesheet" href="/asset/fonts/fontawesome-free-6.2.1/fontawesome-free-6.2.1-web/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
    <?php
    include './connect_db.php';
    if (!isset($_SESSION["cart"])) {
        $_SESSION["cart"] = array();
    }
    $error = false;
    $success = false;
    if (isset($_GET['action'])) {

        function update_cart($add = false)
        {
            foreach ($_POST['quantity'] as $id => $quantity) {
                if ($quantity == 0) {
                    unset($_SESSION["cart"][$id]);
                } else {
                    if ($add) {
                        $_SESSION["cart"][$id] += $quantity;
                    } else {
                        $_SESSION["cart"][$id] = $quantity;
                    }
                }
            }
        }

        switch ($_GET['action']) {
            case "add":
                update_cart(true);
                header('Location: ./cart.php');
                break;
            case "delete":
                if (isset($_GET['id'])) {
                    unset($_SESSION["cart"][$_GET['id']]);
                }
                header('Location: ./cart.php');
                break;
            case "submit":
                if (isset($_POST['update_click'])) { //Cập nhật số lượng sản phẩm
                    update_cart();
                    header('Location: ./cart.php');
                } elseif ($_POST['order_click']) { //Đặt hàng sản phẩm
                    if (empty($_POST['name'])) {
                        $error = "Bạn chưa nhập tên của người nhận";
                    } elseif (empty($_POST['phone'])) {
                        $error = "Bạn chưa nhập số điện thoại người nhận";
                    } elseif (empty($_POST['address'])) {
                        $error = "Bạn chưa nhập địa chỉ người nhận";
                    } elseif (empty($_POST['quantity'])) {
                        $error = "Giỏ hàng rỗng";
                    }
                    if ($error == false && !empty($_POST['quantity'])) { //Xử lý lưu giỏ hàng vào db
                        $products = mysqli_query($con, "SELECT * FROM `product` WHERE `id` IN (" . implode(",", array_keys($_POST['quantity'])) . ")");
                        $total = 0;
                        $orderProducts = array();
                        while ($row = mysqli_fetch_array($products)) {
                            $orderProducts[] = $row;
                            $total += $row['price'] * $_POST['quantity'][$row['id']];
                        }
                        $insertOrder = mysqli_query($con, "INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `note`, `total`, `created_time`, `last_updated`) VALUES (NULL, '" . $_POST['name'] . "', '" . $_POST['phone'] . "', '" . $_POST['address'] . "', '" . $_POST['note'] . "', '" . $total . "', '" . time() . "', '" . time() . "');");
                        $orderID = $con->insert_id;
                        $insertString = "";
                        foreach ($orderProducts as $key => $product) {
                            $insertString .= "(NULL, '" . $orderID . "', '" . $product['id'] . "', '" . $_POST['quantity'][$product['id']] . "', '" . $product['price'] . "', '" . time() . "', '" . time() . "')";
                            if ($key != count($orderProducts) - 1) {
                                $insertString .= ",";
                            }
                        }
                        $insertOrder = mysqli_query($con, "INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_time`, `last_updated`) VALUES " . $insertString . ";");
                        $success = "Đặt hàng thành công";
                        unset($_SESSION['cart']);
                    }
                }
                break;
        }
    }
    if (!empty($_SESSION["cart"])) {
        $products = mysqli_query($con, "SELECT * FROM `product` WHERE `id` IN (" . implode(",", array_keys($_SESSION["cart"])) . ")");
    }
    ?>
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
                <a href="" class="header-cart menu-info">
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
    <div style="background-color: white;" class="container">
        <?php if (!empty($error)) { ?>
            <div id="notify-msg">
                <?= $error ?>. <a href="javascript:history.back()">Quay lại</a>
            </div>
        <?php } elseif (!empty($success)) { ?>
            <div id="notify-msg">
                <?= $success ?>. <a style="color:#288ad6 ;" href="index.php">Tiếp tục mua hàng</a>
            </div>
        <?php } else { ?>
            <a style="float: left; font-size: 20px; margin-bottom: 20px;color: #288ad6;" href="index.php">Mua thêm sản phẩm khác</a>
            <h1 style="float: right; font-weight: bold; font-size: 20px; margin-bottom: 20px;">GIỎ HÀNG</h1>
            <form  id="cart-form" action="cart.php?action=submit" method="POST">
                <table>
                    <tr>
                        <th class="product-number">STT</th>
                        <th class="product-name">Tên sản phẩm</th>
                        <th class="product-img">Ảnh sản phẩm</th>
                        <th class="product-price">Đơn giá</th>
                        <th class="product-quantity">Số lượng</th>
                        <th class="total-money">Thành tiền</th>
                        <th class="product-delete">Xóa</th>
                    </tr>
                    <?php
                    if (!empty($products)) {
                        $total = 0;
                        $num = 1;
                        while ($row = mysqli_fetch_array($products)) {
                    ?>
                            <tr>
                                <td class="product-number"><?= $num++; ?></td>
                                <td class="product-name"><?= $row['name'] ?></td>
                                <td class="product-img"><img src="<?= $row['image'] ?>" /></td>
                                <td class="product-price"><?= number_format($row['price'], 0, ",", ".") ?></td>
                                <td class="product-quantity"><input type="text" value="<?= $_SESSION["cart"][$row['id']] ?>" name="quantity[<?= $row['id'] ?>]" /></td>
                                <td class="total-money"><?= number_format($row['price'] * $_SESSION["cart"][$row['id']], 0, ",", ".") ?></td>
                                <td class="product-delete"><a href="cart.php?action=delete&id=<?= $row['id'] ?>">Xóa</a></td>
                            </tr>
                        <?php
                            $total += $row['price'] * $_SESSION["cart"][$row['id']];
                            $num++;
                        }
                        ?>
                        <tr id="row-total">
                            <td class="product-number">&nbsp;</td>
                            <td class="product-name">Tổng tiền</td>
                            <td class="product-img">&nbsp;</td>
                            <td class="product-price">&nbsp;</td>
                            <td class="product-quantity">&nbsp;</td>
                            <td class="total-money"><?= number_format($total, 0, ",", ".") ?></td>
                            <td class="product-delete">Xóa</td>
                        </tr>
                    <?php
                    }
                    ?>
                </table>
                <div id="form-button">
                    <input style="width: 45%;margin-bottom: 4px;" type="submit" name="update_click" value="Cập nhật" />
                </div>
                <hr>
                <div ><label>Người nhận: </label><input  size="48" type="text" value="" name="name" /></div>
                <div ><label>Điện thoại: </label><input size="48"  type="text" value="" name="phone" /></div>
                <div ><label>Địa chỉ: </label><input size="48"  type="text" value="" name="address" /></div>
                <div ><label>Địa chỉ cụ thể: </label><textarea name="note" cols="50" rows="7"></textarea></div>
                <input style="width: 40%; background-color: #E5E5E5;border: 1px solid black;" type="submit" name="order_click" value="Đặt hàng" />
            </form>
        <?php } ?>
    </div>
</body>

</html>