<?php
$usu=$_REQUEST['txtUsu'];
$pas=$_REQUEST['txtPas'];

$cnx=new PDO("mysql:host=localhost;dbname=local","root","");
$res=$cnx->query("select * from usuario where nom1_usu='$usu' and pass='$pas' and tipo!='user'");

$can=$res->rowCount();

if($can>0){
    session_start();
     $_SESSION['acceso']=true;
    header("Location: index_log.html");
}else{
    header("Location: log.php?msg=Usuario o pas incorrectos");
}
?>