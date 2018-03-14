<!doctype html>
<?php
require('Conexion.php');
$conexion = Conexion::conectar();
$matricula = $_GET["matricula"];
$sql = 'SELECT `Matricula`, `Tipo`, `Capacidad`, `NCoches`, `Operativo`, `Localizacion`, `KM` FROM Tren WHERE Matricula = "'.$matricula.'"';
$resultado = $conexion->query($sql);
$datos_tren = $resultado->fetch_assoc();
$sql = 'SELECT Pieza.Matricula, Averia.IdAveriaFiltroAire,Averia.IdFiltroAire,Averia.TipoAveriaFiltro, Averia.DescripcionFiltro
		from Averia, Pieza where Averia.IdFiltroAire=Pieza.IdFiltroAire and Pieza.Matricula="'.$matricula.'"';
$sql_2 = 'SELECT Pieza.Matricula, Averia.IdAveriaValvulaAire,
		Averia.IdPiezaValvulaAire,Averia.TipoAveriaValvula,Averia.DescripcionValvula
		from Averia, Pieza where Averia.IdPiezaValvulaAire=Pieza.IdPiezaValvulaAire and Pieza.Matricula="'.$matricula.'"';
$resultado_valvula = $conexion->query($sql_2);
$resultado_filtro = $conexion->query($sql);
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
    <div class="imagen" style="display: inline-block; vertical-align:top;width:60%;margin-top: 50px">
      <img src="DT_Vagon.jpg" height="70%" width="100%">
    </div>
    <div class="detalles" style="display: inline-block; vertical-align:top;margin-left: 200px;margin-top: 20px">
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
        <a class="btn btn-primary" href="anadir-incidencia.php?matricula=<?php echo $matricula; ?>" role="button">Añadir incidencia</a>
      </div>

      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>Tipo de avería</th>
              <th>Gravedad</th>
              <th>Pieza afectada</th>
              <th>Descripción</th>
            </tr>
          </thead>
          <tbody>
          <?php
          while($fila = mysqli_fetch_array($resultado_filtro )) {
          if($fila['IdAveriaFiltroAire'] != "NULL"){
          	$tipo = $fila['IdAveriaFiltroAire'];
          $gravedad = $fila['TipoAveriaFiltro'];
          $pieza = $fila['IdFiltroAire'];
          $descripcion = $fila['DescripcionFiltro'];
          echo "<tr><td>".$tipo."</td><td>".$gravedad."</td><td>".$pieza."</td><td>".$descripcion."</tr>";
          }
          }
          while($fila = mysqli_fetch_array($resultado_valvula)) {
          if($fila['IdAveriaValvulaAire'] != "NULL"){
          	$tipo = $fila['IdAveriaValvulaAire'];
          $gravedad = $fila['TipoAveriaValvula'];
          $pieza = $fila['IdPiezaValvulaAire'];
          $descripcion = $fila['DescripcionValvula'];
          echo "<tr><td>".$tipo."</td><td>".$gravedad."</td><td>".$pieza."</td><td>".$descripcion."</tr>";
          }
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