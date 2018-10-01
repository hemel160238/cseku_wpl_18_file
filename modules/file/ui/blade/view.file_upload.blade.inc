<?php
/**
 * Created by PhpStorm.
 * User: ASUS
 * Date: 9/4/2018
 * Time: 1:21 AM
 */
include_once COMMON.'class.common.file.inc';
include_once UTILITY.'class.util.inc';
include_once MODULES_FILE.'bao/class.FileUploadBao.php';
include_once MODULES_USER.'bao/class.disciplinebao.inc'; //module dependecy
include_once MODULES_USER.'bao/class.userbao.inc'; //module dependecy

$globalUser = $_SESSION['globalUser'];


//$_FileBAO = new FileBAO();
$_DisciplineBAO = new DisciplineBAO();
$_UserBAO = new UserBAO();

$_FIleUploadBao = new FileUploadBao();




if (isset($_POST['save']))
{
    /*
    echo basename($_FILES["fileToUpload"]["name"]);
    $target_dir = "uploads/";
    $target_file = $target_dir.basename($_FILES["fileToUpload"]["name"]);
    $uploadOk =1;
    //$check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    echo hash_file('md5',$_FILES["fileToUpload"]["tmp_name"]);

    move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file);

    echo gettype($_SESSION['globalUser']);




*/
    //echo basename($_FILES["fileToUpload"]["name"]);
    $target_dir = "uploads/file/";
    $target_file = $target_dir.basename($_FILES["fileToUpload"]["name"]);
    $id = hash_file('md5',$_FILES["fileToUpload"]["tmp_name"]);
    $discipline = $_POST["discipline"];
    $receiver = $_POST["receiver"];
    $link = $_FILES["fileToUpload"]["tmp_name"];

    //echo ($discipline."  ".$receiver);

    $File = new File();
    //$File->setDiscipline($_POST("discipline"));
    //$File->setTimestamp();
    $File->setDiscipline($discipline);
    $File->setID($id);
    $File->setName("");
    $File->setReceiver($receiver);
    $File->setLink($link);
    $File->setTargetfile($target_file);


    $_FIleUploadBao->UploadFile($File);




}
?>

