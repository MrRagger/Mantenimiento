<!doctype html>
<?php
require('Conexion.php');
$conexion = Conexion::conectar();
$matricula = $_GET["matricula"];
$sql = 'SELECT `Matricula`, `Tipo`, `Capacidad`, `NCoches`, `Operativo`, `Localizacion`, `KM` FROM Tren WHERE Matricula = "'.$matricula.'"';
$resultado = $conexion->query($sql);
$datos_tren = $resultado->fetch_assoc();
$sql = 'SELECT Averia.IdAveria, Averia.Tipo, Averia.IdPieza, Pieza.Matricula from Averia, Pieza where Averia.IdPieza=Pieza.IdPieza and Pieza.Matricula = "'.$matricula.'"';
$resultado = $conexion->query($sql);

$sql = 'SELECT Sensor.Color from Sensor, Pieza where Sensor.IdPieza=Pieza.IdPieza and Sensor.IdSensor="Humedad" and Pieza.Matricula = "'.$matricula.'"';
$sensorH = $conexion->query($sql);
$sensorH = $sensorH->fetch_assoc();
//var_dump($sensorH) or die;
$sql = 'SELECT Sensor.Color from Sensor, Pieza where Sensor.IdPieza=Pieza.IdPieza and Sensor.IdSensor="Presion" and Pieza.Matricula = "'.$matricula.'"';
$sensorP = $conexion->query($sql);
$sensorP = $sensorP->fetch_assoc();

?>
<html lang="es">
	<head>		
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	<link rel="icon" href="favicon.ico">

	<title>Panel de Mantenimiento</title>

	<!-- Bootstrap core CSS -->
	<link href="dist/css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom styles for this template -->
	<link href="dashboard.css" rel="stylesheet">
	<style>
	#Vagon {
		background-image: url(DT_Vagon_M.jpg);
		background-position: left top;
		background-repeat: no-repeat;
		padding: 50px;
		background-size: 808px 200px;
	</style>
</head>

<body>
  <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="index.php">Mantenimiento</a>
    <ul class="navbar-nav px-3">
      <li class="nav-item text-nowrap">
        <a class="nav-link" href="login.php">Desconectar</a>
      </li>
    </ul>
  </nav>
<div class="superior" style="margin-left: 250px;">

	<!-- <div class="imagen" style="display: inline-block; vertical-align:top;"> -->
	<!-- <div class="imagen" style="background-image; treninline-block; vertical-align:top;">
	<img src="DT_Vagon.jpg" width="70%" height="70%">
	</div>
	
	<div style="background-image: tren">
	<div><img id="sensor1" src="sensor- <php echo($sensor1) ?>"></div>
	<img src="sensor-verde">
	<img src="sensor-verde">
	<img src="sensor-verde">
	<img src="sensor-verde">
	<img src="sensor-verde">
	</div>
	
	
    <div class="imagen" style="display:  inline-block; vertical-align:top;width:60%;margin-top: 50px">
      <img src="DT_Vagon.jpg" height="70%" width="100%">
	  <img id = "sensor1" src = "Piloto_verde.png">
    </div> -->
	<div id="Vagon" >
		<img  src = "<?php echo $sensorH['Color'] ?>.png" style= "margin-top:95px ;margin-left: 265px;"/> 
		<img src = "<?php echo $sensorP['Color'] ?>.png" style= "margin-top:95px; margin-left: 105px;"/> 
	</div>	
    <div class="detalles" style="display: inline-block; vertical-align:top;margin-left: 900px;margin-top: -200px">
      <table class="table table-striped table-sm">
        <thead>
          <tr>
            <th>ID</th>
            <th>Atributo</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>Matrícula</td>
            <td><?php echo $matricula ?></td>  
          </tr>

          <tr>
            <td>Capacidad</td>
            <td><?php echo $datos_tren["Capacidad"] ?></td>
          </tr>

          <tr>
            <td>Kilómetros</td>
            <td><?php echo $datos_tren["KM"] ?></td>
          </tr>

          <tr>
           <td>Coches</td>
           <td><?php echo $datos_tren["NCoches"] ?></td>

         </tr>

         <tr>
           <td>Tipo</td>
           <td><?php echo $datos_tren["Tipo"] ?></td>
         </tr>

         <tr>
           <td>Operativo</td>
           <td><?php if($datos_tren["Operativo"]==1){echo "Sí";} else {echo "No";} ?></td>

         </tr>
         <tr>
          <td>Localización</td>
          <td><?php echo $datos_tren["Localizacion"] ?></td>
        </tr>
      </tbody>
    </table>
  </div>
</div>

<div class="container-fluid">
  <div class="row">
    <nav class="col-md-2 d-none d-md-block bg-light sidebar">
      <div class="sidebar-sticky">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active" href="index.php">
              <span data-feather="home"></span>
              Inicio <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="trenes.php">
              <span data-feather="file"></span>
              Lista de trenes
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="shopping-cart"></span>
              Categoría 1
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="users"></span>
              Categoría 2
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="bar-chart-2"></span>
              Categoría 3
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <span data-feather="layers"></span>
              Categoría 4
            </a>
          </li>
        </ul>
      </div>
    </nav>

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
      <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
        <h1 class="h2">Incidencias de mantenimiento</h1>
        <a href="anadir-incidencia.php?matricula=<?php echo $matricula; ?>" class="btn btn-primary" role="button">Añadir incidencia</a>
      </div>

      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>Tipo de avería</th>
              <th>Gravedad</th>
              <th>Pieza afectada</th>
            </tr>
          </thead>
          <tbody>
          <?php
          while($fila = mysqli_fetch_array($resultado)) {
          $tipo = $fila['IdAveria'];
          $gravedad = $fila['Tipo'];
          $pieza = $fila['IdPieza'];
          echo "<tr><td>".$tipo."</td><td>".$gravedad."</td><td>".$pieza."</td></tr>";
          }?> 
          </tbody>
        </table>
      </div>
    </main>
  </div>
</div>

    <!-- Bootstrap core JavaScript
      ================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" 
      crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
      <script src="assets/js/vendor/popper.min.js"></script>
      <script src="dist/js/bootstrap.min.js"></script>

      <!-- Icons -->
      <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
      <script>
        feather.replace()
      </script>

      <!-- Graphs -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
      <script>
        var ctx = document.getElementById("myChart");
        var myChart = new Chart(ctx, {
          type: 'line',
          data: {
            labels: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"],
            datasets: [{
              data: [15339, 21345, 18483, 24003, 23489, 24092, 12034],
              lineTension: 0,
              backgroundColor: 'transparent',
              borderColor: '#007bff',
              borderWidth: 4,
              pointBackgroundColor: '#007bff'
            }]
          },
          options: {
            scales: {
              yAxes: [{
                ticks: {
                  beginAtZero: false
                }
              }]
            },
            legend: {
              display: false,
            }
          }
        });
      </script>
    </body>
    </html>