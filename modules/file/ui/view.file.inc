<?php

include_once 'blade/view.file.blade.inc';
include_once COMMON.'class.common.inc';
include_once COMMON.'class.common.file.inc';


?>

<table class="table table-striped">

    <?php


    $Result = $_FileBAO->getAllFiles();

    //if DAO access is successful to load all the Terms then show them one by one
    if($Result->getIsSuccess()){

        $FileList = $Result->getResultObject();
        ?>
        <tr>
            <td>To</td>
            <td>Download Link</td>
            <td>Discipline</td>
            <td>Comment</td>
            <td>Time</td>
        </tr>

        <?php
        for($i = 0; $i < sizeof($FileList); $i++) {
            $File = $FileList[$i];
            ?>
            <tr>
                <td><?php
                    $User = new user();
                    $User->setID($File->getName());
                    $User = $_UserBAO->readUser($User);
                    $User = $User->getResultObject();


                    echo $User->getFirstName() ." ". $User->getLastName(); ?></td>
                <td>

                    <a class="btn btn-primary" href="<?php echo "".$File->getLink(); ?>" role="button">Download</a>


                </td>

                <td><?php
                    $Discipline = new discipline();
                    $Discipline->setID($File->getDiscipline());
                    $Discipline = $_DisciplineBAO->readDiscipline($Discipline);
                    $Discipline = $Discipline->getResultObject();
                    echo $Discipline->getName(); ?>

                </td>

                <td><?php
                    echo ($File->getComment());
                    /*
                    $Discipline = new discipline();
                    $Discipline->setID($File->getDiscipline());
                    $Discipline = $_DisciplineBAO->readDiscipline($Discipline);
                    $Discipline = $Discipline->getResultObject();
                    echo $Discipline->getName(); ?>
                    */ ?>

                </td>

                <td><?php
                    echo ($File->getTimestamp());
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
