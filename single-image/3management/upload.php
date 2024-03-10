<?php
    ob_start();
    session_start();
    require_once('../1config/conn.php');
    if(isset($_POST['uploadbutton']))
    {
        $imageName = $_FILES['images']['name'];
        $imagetempname = $_FILES['images']['tmp_name'];
        $imageExtension = pathinfo($imageName, PATHINFO_EXTENSION);
        $imagerename = 'image_' . time() . '.' . $imageExtension;
        $imageSaveLocation = '../4assets/images/'.$imagerename;
        $imagesizeBytes = filesize($imagetempname);
        $imagesizeMB = round(($imagesizeBytes / 1024) / 1024, 2);
        $allowed_extensions = array("jpeg", "jpg", "png");
        if($imagesizeMB > 5)
        {
            $_SESSION['error'] = 'File size must be less than 5MB.';
            header('location:../2view/index.php');
            exit();
        }
        else if(!in_array($imageExtension, $allowed_extensions))
        {
            $_SESSION['error'] = 'Extension not allowed, please choose a JPEG, JPG, or PNG file.';
            header('location:../2view/index.php');
            exit();
        }
        else  
        {
            $insert_record = mysqli_query($conn, "INSERT INTO `images` (`name`,`size`,`extension`,`path`) VALUES ('$imagerename', '$imagesizeMB', '$imageExtension' ,'$imageSaveLocation')");
            if($insert_record)
            {
                move_uploaded_file($imagetempname, $imageSaveLocation);
                $_SESSION['success'] = 'Image uploaded successfully.';
                header('location:../2view/index.php');
                exit();
            }
            else
            {
                $_SESSION['error'] = 'Image not uploaded successfully.';
                header('location:../2view/index.php');
                exit();
            }
        }        
    }
?>