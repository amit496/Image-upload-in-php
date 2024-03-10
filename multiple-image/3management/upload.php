<?php
    ob_start();
    session_start();
    require_once('../1config/conn.php');
    if(isset($_POST['uploadbutton'])) {
        $imageNames = $_FILES['images']['name'];
        $imageTempNames = $_FILES['images']['tmp_name'];
        $imageRenameArr = array();
        $imageSizeArr = array();
        $imageExtensionArr = array();
        $imagePathArr = array();
        foreach ($imageNames as $key => $imageName)
        {
            $imageExtension = pathinfo($imageName, PATHINFO_EXTENSION);
            $imagerename = 'image_' . time() . '_' . $key . '.' . $imageExtension;
            $imageSaveLocation = '../4assets/images/'.$imagerename;
            $imageSizeBytes = filesize($imageTempNames[$key]);
            $imagesizeMB = round(($imageSizeBytes / 1024) / 1024, 2);
            $allowed_extensions = array("jpeg", "jpg", "png");
            if($imagesizeMB > 5) {
                $_SESSION['error'] = 'File size must be less than 5MB.';
                header('location:../2view/index.php');
                exit();
            } else if(!in_array($imageExtension, $allowed_extensions)) {
                $_SESSION['error'] = 'Extension not allowed, please choose a JPEG, JPG, or PNG file.';
                header('location:../2view/index.php');
                exit();
            } else {
                if(move_uploaded_file($imageTempNames[$key], $imageSaveLocation)) {
                    $imageRenameArr[] = $imagerename;
                    $imageSizeArr[] = $imagesizeMB;
                    $imageExtensionArr[] = $imageExtension;
                    $imagePathArr[] = $imageSaveLocation;
                    $_SESSION['success'] = 'Image uploaded successfully.';
                } else {
                    $_SESSION['error'] = 'Error uploading image.';
                    header('location:../2view/index.php');
                    exit();
                }
            }
        }
        $imageNameString = implode(",", $imageRenameArr);
        $imageSizeString = implode(",", $imageSizeArr);
        $imageExtensionString = implode(",", $imageExtensionArr);
        $imagePathString = implode(",", $imagePathArr);
        $insert_record = mysqli_query($conn, "INSERT INTO `multiple_images` (`image_name`,`size`, `extension`,`path`) VALUES ('$imageNameString','$imageSizeString','$imageExtensionString','$imagePathString')");
        if($insert_record)
        {
            $_SESSION['success'] = 'Image uploaded successfully.';
            header('location:../2view/index.php');
        }
        else
        {
            $_SESSION['error'] = 'Error uploading image to database.';
            header('location:../2view/index.php');
        }
    }
?>
