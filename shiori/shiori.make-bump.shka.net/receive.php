<?php
  header( 'Content-Type: text/javascript; charset=utf-8' );
  try{
    $link = new Mongo();
    $db = $link -> mongoDB;
    $col = $db->user;
    //データの取得と表示
    $res = $col->find();
    //echo '挿入されたデータ：';
    foreach($res as $doc) {
      echo $_GET['callback'] . "(" . json_encode($doc). ")";
     }
     $col -> drop();
  }catch(MongoConnectionException $e){
    die('error');
  }

         
