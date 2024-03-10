<?php 
    ob_start();
    session_start();    
    require_once('../1config/conn.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Image Upload</title>
    <?php 
        require_once('../1config/all_css.php');
    ?>
</head>
<body>
    <div class="container mt-5 p-0">
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header"><h4>Image upload in php</h4></div>
                    <div class="card-body">
                        <form action="../3management/upload.php" method="post" enctype="multipart/form-data" >
                            <div class="row">
                                <div class="col-lg-12">
                                    <?php 
                                        if(isset($_SESSION['success']) && ($_SESSION['success'] != ''))
                                        {
                                            echo "<div class='alert alert-success'>".$_SESSION['success']."</div>";
                                            session_unset();
                                        }
                                        if(isset($_SESSION['error']) && ($_SESSION['error'] != ''))
                                        {
                                            echo "<div class='alert alert-danger'>".$_SESSION['error']."</div>";    
                                            session_unset();
                                        }
                                    ?>
                                </div>
                            </div>
                            <div class="row m-2">
                                <div class="col-lg-6">
                                    <input type="file" name="images" id="selectimage" class="form-control" autocomplete="off" placeholder="Enter Your Name">
                                    <button type="submit" class="mt-3 submitbutton btn btn-primary" name="uploadbutton">SUBMIT</button>
                                </div>
                                <div class="col-lg-6">
                                    <img src="../4assets/product-placeholder.jpg" alt="" width="300px" height="300px" id="imageobject">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php 
        require_once('../1config/all_js.php');
    ?>
</body>
</html>