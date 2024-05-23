<?php
include 'header.php';
if (!empty($_SESSION['current_user'])) {
?>
    <div class="main-content">
        <h1><?= !empty($_GET['id']) ? ((!empty($_GET['task']) && $_GET['task'] == "copy") ? "Copy sản phẩm" : "Sửa sản phẩm") : "Thêm sản phẩm" ?></h1>
        <div id="content-box">
            <?php
            if (isset($_GET['action']) && ($_GET['action'] == 'add' || $_GET['action'] == 'edit')) {
                if (isset($_POST['image']) && !empty($_POST['image']) && isset($_POST['name']) && !empty($_POST['name'])) {
                    $galleryImages = array();
                    if (empty($_POST['name'])) {
                        $error = "Bạn phải nhập tên sản phẩm";
                    }
                    if (isset($_FILES['image']) && !empty($_FILES['image']['name'][0])) {
                        $uploadedFiles = $_FILES['image'];
                        $result = uploadFiles($uploadedFiles);
                        if (!empty($result['errors'])) {
                            $error = $result['errors'];
                        } else {
                            $image = $result['path'];
                        }
                    }
                    if (!isset($image) && !empty($_POST['image'])) {
                        $image = $_POST['image'];
                    }
                    if (!isset($error)) {
                        if ($_GET['action'] == 'edit' && !empty($_GET['id'])) {
                            $result = mysqli_query($con, "UPDATE `banner` SET `image` = '" .$image . "',`name` = '" . $_POST['name'] . "' WHERE `banner`.`id` = " . $_GET['id']);
                        } else {
                            $result = mysqli_query($con, "INSERT INTO `banner`(`id`, `image`, `name`) VALUES (NULL,'" . $image . "','" . $_POST['name'] . "');");
                        }
                        if (!$result) { //Nếu có lỗi xảy ra
                            $error = "Có lỗi xảy ra trong quá trình thực hiện.";
                        }
                    }
                } else {
                    $error = "Bạn chưa nhập tên banner";
                }
            ?>
                <div class="container">
                    <div class="error"><?= isset($error) ? $error : "Cập nhật thành công" ?></div>
                    <a href="slider_listing.php">Quay lại danh sách sản phẩm</a>
                </div>
            <?php
            } else {
                if (!empty($_GET['id'])) {
                    $result = mysqli_query($con, "SELECT * FROM `banner` WHERE `id` = " . $_GET['id']);
                    $product = $result->fetch_assoc();
                }
            ?>
                <form id="editing-form" method="POST" action="<?= (!empty($product) && !isset($_GET['task'])) ? "?action=edit&id=" . $_GET['id'] : "?action=add" ?>" enctype="multipart/form-data">
                    <input type="submit" title="Lưu sản phẩm" value="" />
                    <div class="clear-both"></div>
                    <div class="wrap-field">
                        <label>Ảnh đại diện: </label>
                        <div class="right-wrap-field">
                            <?php if (!empty($product['image'])) { ?>
                                <img src="../<?= $product['image'] ?>" /><br />
                                <input type="hidden" name="image" value="<?= $product['image'] ?>" />
                            <?php } ?>
                            <input type="file" name="image" />
                        </div>
                        <div class="clear-both"></div>
                    </div>
                    <div class="wrap-field">
                        <label>Tên sản phẩm: </label>
                        <input type="text" name="name" value="<?= (!empty($product) ? $product['name'] : "") ?>" />
                        <div class="clear-both"></div>
                    </div>

                </form>
                <div class="clear-both"></div>
                <script>
                    // Replace the <textarea id="editor1"> with a CKEditor
                    // instance, using default configuration.
                    CKEDITOR.replace('product-content');
                </script>
            <?php } ?>
        </div>
    </div>

<?php
}
include './footer.php';
?>