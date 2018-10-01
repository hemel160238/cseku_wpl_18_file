<?php
/**
 * Created by PhpStorm.
 * User: ASUS
 * Date: 9/4/2018
 * Time: 1:29 AM
 */
include_once COMMON.'class.common.file.inc';
include_once MODULES_FILE.'dao/class.FileUploadDao.php';

class FileUploadDao
{

    private $_DB;

    public function __construct()
    {
        $this->_DB = DBUtil::getInstance();


    }


    public function UploadFile($File)
    {
        $target_file = $File->getTargetfile();
        $link = $File->getLink();
        $id = $File->getID();
        $name = $File->getName();
        $discipline = $File->getDiscipline();
        $receiver = $File->getReceiver();
        $creator = $File->getCreator();
/*
        $fileType = pathinfo($target_file,PATHINFO_EXTENSION);
        $file_ID = Util::getGUID();
        $target_dir = "uploads/file/";
        $target_file = $target_dir.$file_ID.'.'.$fileType;
*/

        //echo ($target_file." and and ".$link."     ".$File->getCreator()."  ".$File->getID()."  ".$File->getReceiver());


        if(move_uploaded_file($link, $target_file))
        {
            $SQL = "INSERT INTO fms_file(ID, CreatorID, Name, Link, DisciplineID, Receiver) VALUES ('$id','$creator','$receiver','$target_file','$discipline', '$receiver')";
            $SQL = $this->_DB->doQuery($SQL);

            echo ("File Upload Done ");




        }








    }


}