<?php
$accion=$_REQUEST['accion'];

$cnx=new PDO("mysql:host=localhost;dbname=local","root","");

switch ($accion){
	case 'editar_juego':
		$cod=$_REQUEST['cod'];
        $jue=$_REQUEST['txtJue'];
        $can=$_REQUEST['txtCan'];
        $con=$_REQUEST['txtCon'];
        $res = $cnx->query("update videojuegos set nombre_juego = '$jue', cantidad = $can ,  id_consola= $con where 
                    id_juego=$cod");
		if($res){
		$cnx=null;
		header("Location: mod_juego.php");}
		else{
		echo 'hubo un error';}
        break;
	case 'editar_man':
		$cod=$_REQUEST['cod'];
		$hdd=$_REQUEST['txthdd'];
        $cme=$_REQUEST['txtcme'];
		$cam=$_REQUEST['txtcam'];
        $cpu=$_REQUEST['txtcpu'];
		$car=$_REQUEST['txtcar'];
		$mar=$_REQUEST['txtmar'];
        $abo=$_REQUEST['txtabo'];
        $pre=$_REQUEST['txtpre'];
		$tie=$_REQUEST['txttie'];
        $dan=$_REQUEST['txtdan'];
		$cus=$_REQUEST['txtcus'];
		$res = $cnx->query("update mantenimiento set hdd='$hdd', cantidad_memory=$cme ,memory_carac='$cam',procesador='$cpu', cargador='$car' , id_marca=$mar,abono=$abo, total=$pre , tipo='$tie',observacion='$dan',id_usu=$cus
			where id_mante=$cod");
		if($res){
		$cnx=null;
		header("Location: mod_man.php");}
		else{
		echo 'hubo un error';}
        break;
	case 'editar_pro':
		$cod=$_REQUEST['cod'];
        $des=$_REQUEST['txtDes'];
        $can=$_REQUEST['txtCan'];
        $pre=$_REQUEST['txtPre'];
        $ult=$_REQUEST['txtUlt'];
		$img=$_REQUEST['txtImg'];
        $res = $cnx->query("update productos set descripcion = '$des', id_tipo = $can , precio = $pre , ult_actualiza = '$ult', imagen='$img' where 
                    id_producto=$cod");
        if($res){
		$cnx=null;
		header("Location: mod_pro.php");}
		else{
		echo 'hubo un error';}
		break;
	case 'editar_usu':
		$cod=$_REQUEST['cod'];
		$no1=$_REQUEST['txt1no'];
		$no2=$_REQUEST['txt2no'];
		$ap1=$_REQUEST['txt1ap'];
		$ap2=$_REQUEST['txt2ap'];
        $tel=$_REQUEST['txtTel'];
        $cel=$_REQUEST['txtCel'];
		$mail=$_REQUEST['txtMail'];
		$pas=$_REQUEST['txtPas'];
        $tip=$_REQUEST['txtTip'];
        $res = $cnx->query("update usuario set nom1_usu = '$no1',nom2_usu = '$no2',ape1_usu = '$ap1',ape2_usu = '$ap2' ,telefono = $tel , celular = $cel , correo = '$mail',pass = '$pas',tipo = '$tip' where 
                    id_usu=$cod");
	    if($res){
		$cnx=null;
		header("Location: mod_usu.php");}
		else{
		echo 'hubo un error';}
        break;
	case 'eliminar_juego':
        $cod=$_REQUEST['cod'];
        $res = $cnx->query("delete from videojuegos where id_juego=$cod");
		if($res){
		$cnx=null;
		header("Location: mod_juego.php");}
		else{
		echo 'hubo un error';}
        break;
	case 'eliminar_pro':
        $cod=$_REQUEST['cod'];
        $res = $cnx->query("delete from productos where id_producto=$cod");
		if($res){
		$cnx=null;
		header("Location: mod_pro.php");}
		else{
		echo 'hubo un error';}
        break;
	case 'eliminar_man':
        $cod=$_REQUEST['cod'];
        $res = $cnx->query("delete from mantenimiento where id_mante=$cod");
		if($res){
		$cnx=null;
		header("Location: mod_man.php");}
		else{
		echo 'hubo un error';}
        break;
    case 'eliminar_usu':
        $cod=$_REQUEST['cod'];
        $res = $cnx->query("delete from usuario where id_usu=$cod");
		if($res){
		$cnx=null;
		header("Location: mod_usu.php");}
		else{
		echo 'hubo un error';}
        break;
	case 'insertar_juego':
        
        $jue=$_REQUEST['txtJue'];
        $can=$_REQUEST['txtCan'];
        $con=$_REQUEST['txtCon'];
        $res = $cnx->query("insert into videojuegos values(null,'$jue',$can,$con)");
		if($res){
		$cnx=null;
		header("Location: mod_juego.php");}
		else{
		echo 'hubo un error';}
        break;
	case 'insertar_man':
		$cod=$_REQUEST['txtcod'];
		$hdd=$_REQUEST['txthdd'];
        $cme=$_REQUEST['txtcme'];
		$cam=$_REQUEST['txtcam'];
        $cpu=$_REQUEST['txtcpu'];
		$car=$_REQUEST['txtcar'];
		$mar=$_REQUEST['txtmar'];
        $abo=$_REQUEST['txtabo'];
        $pre=$_REQUEST['txtpre'];
		$tie=$_REQUEST['txttie'];
        $dan=$_REQUEST['txtdan'];
		$res = $cnx->query("insert into mantenimiento values(null,'$hdd',$cme,'$cam','$cpu','$car',$mar,$abo,$pre,'$tie','$dan',$cod)");
		if($res){
		$cnx=null;
		header("Location: mod_man.php");}
		else{
		echo 'hubo un error';}
        break;
    case 'insertar_pro':
        
        $des=$_REQUEST['txtDes'];
        $can=$_REQUEST['txtCan'];
        $pre=$_REQUEST['txtPre'];
        $ult=$_REQUEST['txtUlt'];
		$img=$_REQUEST['txtImg'];
        $res = $cnx->query("insert into productos values(null,'$des',$can,$pre,'$ult','$img')");
		if($res){
		$cnx=null;
		header("Location: mod_pro.php");}
		else{
		echo 'hubo un error';}
        break;
	case 'insertar_usu':
        
        $no1=$_REQUEST['txt1no'];
		$no2=$_REQUEST['txt2no'];
		$ap1=$_REQUEST['txt1ap'];
		$ap2=$_REQUEST['txt2ap'];
        $tel=$_REQUEST['txtTel'];
        $cel=$_REQUEST['txtCel'];
		$mail=$_REQUEST['txtMail'];
		$pas=$_REQUEST['txtPas'];
        $tip=$_REQUEST['txtTip'];
        $res = $cnx->query("insert into usuario values(null,'$no1','$no2','$ap1','$ap2',$tel,$cel,'$mail','$pas','$tip')");
        if($res){
		$cnx=null;
		header("Location: mod_usu.php");}
		else{
		echo 'hubo un error';}
		break;  
}
?>
