<?php
/**
 * Created by PhpStorm.
 * User: ASUS
 * Date: 9/4/2018
 * Time: 1:28 AM
 */
include_once MODULES_FILE.'dao/class.FileUploadDao.php';
class FileUploadBao
{
    private $_DB;
    private $_FileUploadDao;
    private $_globaluser;

    /**
     * @return mixed
     */
    public function getGlobaluser()
    {
        return $this->_globaluser;
    }


    public function __construct()
    {
        $this->_FileUploadDao = new FileUploadDao();
        $this->_globaluser = $_SESSION['globalUser'];
    }


    public function UploadFile($File)
    {
        //$globalUser = $_SESSION['globalUser'];
        $File->setCreator($this->getGlobaluser()->getID());
        //$this->_globaluser->getID();

        $Result = new Result();
        $Result = $this->_FileUploadDao->UploadFile($File);
    }

}