<!DOCTYPE html>
<?php
session_start();
if(($_SESSION['acceso']<>true)){
    header("Location: log.php");
}
?>
<html>

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Online y Computers </title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template -->
    <link href="css/freelancer.min.css" rel="stylesheet">

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">Online y Computers J y M</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fa fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="mod_pro.php">Productos</a>
            </li>
			<li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="mod_juego.php">Juegos</a>
            </li>
			<li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="mod_usu.php">Usuario</a>
            </li>
			<li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="mod_man.php">Mantenimiento</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Header -->
    <header class="masthead">
      <div class="container">
        <br>
	
      </div>
    </header>
	
	 

    <!-- Portfolio Grid Section -->
	
		<h2 align="center">Listado de Video Juegos</h2>
		
		<form method="POST" name="" action="">
				<input type="text" placeholder="Nombre..." name="xnombre"/>
				<select name="xconsola">
					<option value="">Seleccionar Consola</option>
					<option value="2">Xbox 360</option>
					<option value="3">Play 2</option>
					<option value="4">Pc</option>
					<option value="5">Wii</option>
				</select>
				<button name="buscar" type="submit">Buscar</button>
			</form>
			<?php if((empty($_REQUEST['xnombre']))&&(empty($_REQUEST['xconsola']))&&(empty($_REQUEST['xregistros']))){
			?>
        <table class="table table-bordered">
			<tr bgcolor="#506498">
                <th colspan="4">Videojuegos</th>
                <th><a href="nuevo_juego.php">Agregar</a></th>
            </tr>
            <tr bgcolor="#506498">
                <th>Id</th><th>Nombre</th>
                <th>cantidad</th><th>consola</th><th>Accion</th>
            </tr> 
            <?php
            $cnx=new PDO("mysql:host=localhost;dbname=local","root","");
            $res = $cnx->query("select * from videojuegos");
            $num_resul=  $res->rowCount();
            $registros=14;
            if(isset($_REQUEST['num'])){
                $pagina=$_REQUEST['num'];
                $inicio=(($pagina)-1)*$registros;
            }else{
                 $inicio=0;
                 $pagina=1;
            }
            $res = $cnx->query("select * from videojuegos limit $inicio,$registros");
            $paginas=  ceil($num_resul/$registros);
             foreach ($res as $row)
            {
            ?>
            <tr>
                <td><?php echo $row[0]; ?></td>
                <td><?php echo $row[1]; ?></td>
                <td><?php echo $row[2]; ?></td>
                <td><?php echo $row[3]; ?></td>
              
                <td><a href="editar_juego.php?cod=<?php echo $row[0]; ?>">Editar</a>||
				<a href="valida.php?accion=eliminar_juego&cod=<?php echo $row[0]; ?>">Eliminar</a>
				
				</td>
				
            </tr>   
       <?php
			}
            ?>
        </table>
        <center>
    <?php
    if($pagina>1)
      echo "<a href=mod_juego.php?num=".($pagina-1).">Anterior</a> ";  
    for($i=1;$i<=$paginas;$i++){
        if($i==$pagina)
        echo $i." ";
        else
        echo "<a href=mod_juego.php?num=$i>".$i."</a> ";
    }
     if($pagina<$paginas)
      echo "<a href=mod_juego.php?num=".($pagina+1).">Siguiente</a> "; 
    ?>
</center>
	<?php
			}
	error_reporting(0);
$conexion = new mysqli("localhost","root","","local");
//----- VARIABLES DE CONSULTA -----//
$where="";
if(empty($_REQUEST['xregistros'])){}else{
$limit = $_REQUEST['xregistros'];}
////////////////////// BOTON BUSCAR //////////////////////////////////////

if (isset($_REQUEST['buscar']))
{
	$nombre=$_REQUEST['xnombre'];
	$consola=$_REQUEST['xconsola'];

	if (empty($_REQUEST['xconsola']))
	{
		$where="where nombre_juego like '%".$nombre."%'";
	}

	else if (empty($_REQUEST['xnombre']))
	{
		$where="where id_consola=".$consola."";
	}
	else
	{
		$where="where nombre_juego like '%".$nombre."%' and id_consola=".$consola."";
	}

}
/////////////////////// CONSULTA A LA BASE DE DATOS ////////////////////////
if((empty($_REQUEST['xnombre']))&&(empty($_REQUEST['xconsola']))&&(empty($_REQUEST['xregistros']))){}else{
$alumnos="SELECT * FROM videojuegos $where $limit";
$resAlumnos=$conexion->query($alumnos);
$resCarreras=$conexion->query($alumnos);

if(mysqli_num_rows($resAlumnos)==0)
{
	$mensaje="<h1>No hay registros que coincidan con su criterio de búsqueda.</h1>";
}
}
?>
			
			<?php
				if((empty($_REQUEST['xnombre']))&&(empty($_REQUEST['xconsola']))&&(empty($_REQUEST['xregistros']))){}else{
			?>
			<table class="table table-bordered">
			<tr bgcolor="#506498">
                <th colspan="4">Videojuegos</th>
                <th><a href="nuevo_juego.php">Agregar</a></th>
            </tr>
            <tr bgcolor="#506498">
					<th>Id</th>
					<th>Descripcion </th>
					<th>Cantidad  </th>
					<th>Id_Consola </th>
					<th>Accion </th>
				</tr>

				<?php
				
				while ($registroAlumnos = $resAlumnos->fetch_array(MYSQLI_BOTH))
				{
					echo'<tr>
						 <td>'.$registroAlumnos['id_juego'].'</td>
						 <td>'.$registroAlumnos['nombre_juego'].'</td>
						 <td>'.$registroAlumnos['cantidad'].'</td>
						 <td>'.$registroAlumnos['id_consola'].'</td>
						 <td><a href="editar_juego.php?cod='.$registroAlumnos['id_juego'].'">Editar</a>||
				<a href="valida.php?accion=eliminar_juego&cod='.$registroAlumnos['id_juego'].'">Eliminar</a>
				
				</td>
						 </tr>';
				}
				?>
			</table>
				<?php } ?>
    <!-- Footer -->
    <footer class="text-center">
      <div class="footer-above">
        <div class="container">
          <div class="row">
            <div class="footer-col col-md-5">
              <h3>Online</h3>
			  <hr>
              <p>
                <br>Dirección :Calle 142 # 103
				<br>Mail :jymonline2011@hotmail.com 
				<br>Tel :6839776
				<br>Cel :3193144317</p>
            </div>
            <div class="footer-col col-md-3">
              <h3>Paginas</h3>
              <ul class="list-inline">
                <li >
                  <a href="index_log.html">Inicio</a>
                </li>
				<li >
                  <a href="index_log.html">Promociones</a>
                </li>
                <li >
                  <a href="mod_pro.php">Accesorios</a>
                </li>
                <li >
                  <a href="mod_juego.php">Video Juegos</a>
                </li>
				<li >
                  <a href="mod_man.php">Mantenimientos</a>
                </li>
				<li >
                  <a href="mod_usu.php">Usuarios</a>
                </li>
				<li >
                  <a href="gameover.php">Cerrar Sesion</a>
                </li>
              </ul>
            </div>
            <div class="footer-col col-md-4">
              <h3>Computers</h3>
			  <hr>
              <p>
                <br>Dirección :Cra 103 # 141-15
				<br>Mail :mant.pc2015@gmail.com 
				<br>Tel :6814434
				<br>Cel :321796442</p>

            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
    <div class="scroll-top d-lg-none">
      <a class="btn btn-primary js-scroll-trigger" href="#page-top">
        <i class="fa fa-chevron-up"></i>
      </a>
    </div>
   
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/popper/popper.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="js/jqBootstrapValidation.js"></script>
    <script src="js/contact_me.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/freelancer.min.js"></script>

  </body>

</html>