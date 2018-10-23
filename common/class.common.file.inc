<?php


class File{
    private $_ID;
    private $_Creator;
    private $_Name;
    private $_Link;
    private $_Discipline;
    private $_Timestamp;
    private $_Receiver;
    private $_Targetfile;
    private $_Comment;

    /**
     * @return mixed
     */
    public function getComment()
    {
        return $this->_Comment;
    }

    /**
     * @param mixed $Comment
     */
    public function setComment($Comment)
    {
        $this->_Comment = $Comment;
    }

    /**
     * @return mixed
     */
    public function getTargetfile()
    {
        return $this->_Targetfile;
    }

    /**
     * @param mixed $Targetfile
     */
    public function setTargetfile($Targetfile)
    {
        $this->_Targetfile = $Targetfile;
    }


    /**
     * @return mixed
     */
    public function getReceiver()
    {
        return $this->_Receiver;
    }

    /**
     * @param mixed $Receiver
     */
    public function setReceiver($Receiver)
    {
        $this->_Receiver = $Receiver;
    }


    public function setID($ID){
        $this->_ID = $ID;
    }

    public function getID(){
        return $this->_ID;
    }

    public function setCreator($Creator){
        $this->_Creator = $Creator;
    }

    public function getCreator(){
        return $this->_Creator;
    }
    public function setName($Name){
        $this->_Name = $Name;
    }

    public function getName(){
        return $this->_Name;
    }
    public function setLink($Link){
        $this->_Link = $Link;
    }

    public function getLink(){
        return $this->_Link;
    }

    public function setDiscipline($Discipline){
        $this->_Discipline = $Discipline;
    }

    public function getDiscipline(){
        return $this->_Discipline;
    }

    public function setTimestamp($Timestamp){
        $this->_Timestamp = $Timestamp;
    }
    public function getTimestamp(){
        return $this->_Timestamp;
    }
}

class File_assign{
    private $_ID;
    private $_File;
    private $_FileComment;
    private $_IsApproved;
    private $_IsRejected;
    private $_PreviousUser;
    private $_CurrentUser;
    private $_IsPending;
    private $_HasSeen;
    private $_CreationDate='0001-01-01';
    private $_ApproveDate='0001-01-01';
    private $_AssignDate='0001-01-01';

    public function setID($ID){
        $this->_ID = $ID;
    }

    public function getID(){
        return $this->_ID;
    }

    public function setFile($File){
        $this->_File = $File;
    }
    public function getFile(){
        return $this->_File;
    }

    public function setFileComment($FileComment){
        $this->_FileComment = $FileComment;
    }
    public function getFileComment(){
        return $this->_FileComment;
    }

    public function setIsApproved($IsApproved){
        $this->_IsApproved = $IsApproved;
    }
    public function getIsApproved(){
        return $this->_IsApproved;
    }

    public function setIsRejected($IsRejected){
        $this->_IsRejected = $IsRejected;
    }
    public function getIsRejected(){
        return $this->_IsRejected;
    }

    public function setPreviousUser($PreviousUser){
        $this->_PreviousUser = $PreviousUser;
    }
    public function getPreviousUser(){
        return $this->_PreviousUser;
    }

    public function setCurrentUser($CurrentUser){
        $this->_CurrentUser = $CurrentUser;
    }
    public function getCurrentUser(){
        return $this->_CurrentUser;
    }

    public function setIsPending($IsPending){
        $this->_IsPending = $IsPending;
    }
    public function getIsPending(){
        return $this->_IsPending;
    }

    public function setHasSeen($HasSeen){
        $this->_HasSeen = $HasSeen;
    }
    public function getHasSeen(){
        return $this->_HasSeen;
    }

    public function setCreationDate($CreationDate){
        $this->_CreationDate = $CreationDate;
    }
    public function getCreationDate(){
        return $this->_CreationDate;
    }

    public function setApproveDate($ApproveDate){
        $this->_ApproveDate = $ApproveDate;
    }
    public function getApproveDate(){
        return $this->_ApproveDate;
    }

    public function setAssignDate($AssignDate){
        $this->_AssignDate = $AssignDate;
    }
    public function getAssignDate(){
        return $this->_AssignDate;
    }

}


?>