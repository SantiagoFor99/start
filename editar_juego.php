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
		<br>
		<br>
		<br>
		<br>
      </div>
    </header>
	
	 

    <!-- Portfolio Grid Section -->
		<?php
        $cod=$_REQUEST['cod'];
         $cnx=new PDO("mysql:host=localhost;dbname=local","root","");
            $res = $cnx->query("select * from videojuegos where id_juego=$cod");
        ?>
        <h2 align="center">Editar Registro</h2>
         <form name="form1" action="valida.php" method="post">
            <table border="0" width="400" align="center">
                <?php
                             foreach ($res as $row)
            {
                ?>
                <tr>
                    <td>Id: </td>
                    <td><input type="text" name="cod" required="" value="<?php echo $row[0]; ?>"></td>
                </tr><tr>
                    <td>Juego: </td>
                    <td><input type="text" name="txtJue" required="" value="<?php echo $row[1]; ?>"></td>
                </tr><tr>
                    <td>Cantidad: </td>
                    <td><input type="text" name="txtCan" required="" value="<?php echo $row[2]; ?>"></td>
                </tr><tr>
				<td>Consola: </td>
				<td><select name="txtCon">
					<option value="<?php echo $row[3]; ?>">Consolas</option>
					<option value="2">Xbox 360</option>
					<option value="3">play 2</option>
					<option value="5">wii</option>
					<option value="4">pc</option>
				</select></td>
                     </tr><tr>
                    <th colspan="2">
                        <input type="submit" name="btn" value="Grabar Registro"></th>
						<th colspan="2">
                </tr>
<?php
            }
                ?>
            </table>
            <input type="hidden" name="accion" value="editar_juego">
        </form>
	<!-- About Section -->
    

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
              <ol class="list-inline">
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
                  <a href="gameover.php">Cerrar Sesion</a>
                </li>
                
              </ol>
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
