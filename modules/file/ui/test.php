<?php

if ($_SERVER['REQUEST_METHOD'] == 'GET') {

    $fileID = $_GET['fileid'];
    $conn = mysqli_connect("localhost", "root", "", "cseku");



    $sql = "SELECT fms_file.ID, ums_user.FirstName, ums_user.LastName, fms_file.Link, ums_discipline.Name, fms_file.Comment, fms_file.Timestamp
FROM fms_file,ums_user,ums_discipline
WHERE fms_file.ID = '$fileID' AND ums_user.ID = fms_file.CreatorID AND fms_file.CreatorID = ums_user.ID AND ums_user.DisciplineID = ums_discipline.ID;";




    $result=mysqli_query($conn,$sql);


    $rows = array();

    while($r = mysqli_fetch_assoc($result)) {
        $rows[] = $r;
    }
    echo(json_encode($rows));


    mysqli_close($conn);

}
?>