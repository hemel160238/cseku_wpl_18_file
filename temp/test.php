<?php
/**
 * Created by PhpStorm.
 * User: ASUS
 * Date: 22-Oct-18
 * Time: 9:54 PM
 */


if(isset($_GET['action']) && !empty($_GET['action'])) {
    $action = $_GET['action'];
    echo $action;
}