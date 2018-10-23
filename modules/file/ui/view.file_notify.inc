<?php

include_once 'blade/view.notification.blade.inc';
include_once COMMON.'class.common.inc';
include_once COMMON.'class.common.file.inc';

?>





<div class="container">
    <div class="row">
        <div class="col-sm">




            <table class="table table-hover table-dark">

                <?php


                $Result = $_FileBAO->getAllReceivedFiles();

                //if DAO access is successful to load all the Terms then show them one by one
                if($Result->getIsSuccess()){

                $FileList = $Result->getResultObject();
                ?>



                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">From</th>
                    <th scope="col">Time</th>

                </tr>
                </thead>


                <tbody>

                <?php
                for($i = 0; $i < sizeof($FileList); $i++) {
                $File = $FileList[$i];
                ?>
                <tr>
                    <th scope="row"><?php echo ($i+1);?></th>
                    <td><?php
                        $User = new user();
                        $User->setID($File->getCreator());
                        $User = $_UserBAO->readUser($User);
                        $User = $User->getResultObject();


                        echo $User->getFirstName() ." ". $User->getLastName(); ?>
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

                    <td
                        ><button type="button" onclick="testFun(this.name)" class="btn btn-primary" name="<?php echo $File->getID();  ?>  ">Primary</button>
                    </td>

                </tr>

                </tbody>

                    <?php

                }

                }
                else{

                    echo $Result->getResultObject(); //giving failure message
                }

                ?>
            </table>



        </div>
        <div class="col-sm">

            <table class="table table-hover table-dark">

                <tbody>
                <tr>
                    <td>Sender</td>
                    <td id="sender"><p id="test">  </p></td>

                </tr>
                <tr>

                    <td>Discipline</td>
                    <td id="discipline"></td>

                </tr>
                <tr>

                    <td>Comment</td>
                    <td id="comment"></td>

                </tr>
                <tr>

                    <td>Time</td>
                    <td id="time"></td>

                </tr>

                </tbody>

            </table>
            <a  id="downloadButton" href="#" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Download</a>

        </div>



    </div>
</div>


<script>


    function testFun(id) {


        //document.getElementById("sender").innerHTML = "Nothing";

        $.ajax(
            { url: 'modules/file/ui/test.php',
                data: {fileid: id},
                type: 'get',
                success: function(output) {


                    var jsonData = JSON.parse(output);

                    var name  = jsonData[0].FirstName + ' '+jsonData[0].LastName;
                    var discipline = jsonData[0].Name;
                    var  comment = jsonData[0].Comment;
                    var time = jsonData[0].Timestamp;
                    var link = jsonData[0].Link;

                   // alert(name);

                    document.getElementById("sender").innerHTML = name;
                    document.getElementById("discipline").innerHTML = discipline;
                    document.getElementById("comment").innerHTML = comment;
                    document.getElementById("time").innerHTML = time;
                    document.getElementById("downloadButton").href = link;



                }
            });


    }

</script>