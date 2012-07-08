<?php
//$doc = array('name' => '佐藤史織', 'tel' => '123-4567-8901', 'email' => 'tsuda@example.com','time' => '20:15');
 $success = array('msg' => 'Success');
 header( 'Content-Type: text/javascript; charset=utf-8' );
 echo $_GET['callback'] . "(" . json_encode($success). ")";
 try {
        //コネクションの確立
        $link = new Mongo();
        //DBの作成
        $db = $link -> mongoDB;
        //コレクションの作成
        $col = $db -> user;
        //コレクションへのデータの挿入
        $doc = array('name' => $_GET['name'], 'tel' => $_GET['tel'], 'email' => $_GET['email'], 'time' => $_GET['time']);
        $col->insert($doc, true);


    } catch (MongoConnectionException $e) {
        die ('コネクションを確立できません。');
    }
