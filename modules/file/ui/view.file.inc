<?php

include_once 'blade/view.file.blade.inc';
include_once COMMON.'class.common.inc';
include_once COMMON.'class.common.file.inc';


?>

<table class="table table-striped">

    <?php


    //$Result = $_FileBAO->getAllFiles();
    $Result =  $_File_assignBAO->getAllFile_assigns();

    //if DAO access is successful to load all the Terms then show them one by one
    if($Result->getIsSuccess()){

        $FileAssignList = $Result->getResultObject();
        ?>
        <tr>

            <td>Creator</td>
            <td>To</td>
            <td>Download Link</td>
            <td>Discipline</td>
            <td>Comment</td>
            <td>Time</td>
        </tr>

        <?php
        for($i = 0; $i < sizeof($FileAssignList); $i++) {
            $FileAssign = $FileAssignList[$i];
            $File = $FileAssign->getFile();
            ?>
            <tr>
                <td>
                    <?php
                    $User = new user();
                    $User->setID($File->getCreator());
                    $User = $_UserBAO->readUser($User);
                    $User = $User->getResultObject();


                    echo $User->getFirstName() ." ". $User->getLastName(); ?>
                </td>


                <td><?php
                    $User = new user();
                    $User->setID($FileAssign->getReceiver());
                    $User = $_UserBAO->readUser($User);
                    $User = $User->getResultObject();


                    echo $User->getFirstName() ." ". $User->getLastName(); ?>
                </td>


                <td>

                    <a class="btn btn-primary" href="<?php echo "".$File->getLink(); ?>" role="button">Download</a>


                </td>

                <td><?php
                    /*
                    $Discipline = new discipline();
                    $Discipline->setID($File->getDiscipline());
                    $Discipline = $_DisciplineBAO->readDiscipline($Discipline);
                    $Discipline = $Discipline->getResultObject();
                    */
                    echo $FileAssign->getDiscipline() ?>

                </td>

                <td><?php
                    echo ($FileAssign->getFileComment());
                    /*
                    $Discipline = new discipline();
                    $Discipline->setID($File->getDiscipline());
                    $Discipline = $_DisciplineBAO->readDiscipline($Discipline);
                    $Discipline = $Discipline->getResultObject();
                    echo $Discipline->getName(); ?>
                    */ ?>

                </td>

                <td><?php
                    echo ($FileAssign->getTimestamp());
                    /*
                    $Discipline = new discipline();
                    $Discipline->setID($File->getDiscipline());
                    $Discipline = $_DisciplineBAO->readDiscipline($Discipline);
                    $Discipline = $Discipline->getResultObject();
                    echo $Discipline->getName(); ?>
                    */ ?>

                </td>

                <!-- <td><a href="?edit=<?php echo $File->getID(); ?>" onclick="return confirm('sure to edit !'); " >edit</a></td> -->



                <td><a href="?del=<?php echo $File->getID(); ?>" class="badge badge-danger">Delete</a>
                </td>



            </tr>
            <?php

        }

    }
    else{

        echo $Result->getResultObject(); //giving failure message
    }

    ?>


</table>
