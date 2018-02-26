<!doctype html>


<?php
require('Conexion.php');
$conexion = Conexion::conectar();
require('cTren.php');


?>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="favicon.ico">

  <title>Tren</title>

  <!-- Bootstrap core CSS -->
  <link href="dist/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="dashboard.css" rel="stylesheet">
</head>

<body>
  <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="index.php">Tren</a>
    <ul class="navbar-nav px-3">
      <li class="nav-item text-nowrap">
        <a class="nav-link" href="#">Desconectar</a>
      </li>
    </ul>
  </nav>
  

  <div class="imagen" style="display: inline-block; vertical-align:top;">
  <img src="DT_Vagon.jpg" width="70%" height="70%">
  </div>
  <div class="detalles" style="display: inline-block; vertical-align:top;">
    
	<!--CONSULTAR CON MANU :)
  <table class="table table-striped table-sm">
  <thead>
              <tr>
                <th>ID</th>
                <th>Atributo</th>
              </tr>
            </thead>
            <tbody>
  <tr>
  <td>Matricula</td>
  <td>Numero matriucla</td>  
  </tr>
  
  <tr>
    <td>Capacidad</td>
	<td>Tamaño</td>
  </tr>
  
  <tr>
    <td>Kilómetros</td>
	<td>KM recorridos</td>
  </tr>
	
	<tr>
	  <td>Coches</td>
	  <td>Numero coches</td>
	  
	</tr>
	
	<tr>
	  <td>Tipo</td>
	  <td>Tipo tren</td>
	</tr>
	
	<tr>
	  <td>Operativo</td>
  <td>Si o no</td>
  
  </tr>
<tr>
  <td>Localización</td>
  <td>Localización tren</td>
  </tr>
  </tbody>
  </table>
  
  =? -->
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
              <a class="nav-link" href="#">
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
        </div>

        <div class="table-responsive">
          <table class="table table-striped table-sm">
            <thead>
              <tr>
                <th>Matricula</th>
                <th>Tipo</th>
                <th>Capacidad</th>
                <th>NCoches</th>
                <th>Operativo</th>
				<th>Localizacion</th>
				<th>KM</th>
              </tr>
            </thead>
            <tbody>
				  
	  <?php
	
			$trenesitos = cTren::trenes();
			
			foreach($trenesitos as $x){ ?>
		
		<tr>
		
		<td><?php echo $x->Matricula; ?></td>
		<td><?php echo $x->Tipo; ?></td>
		<td><?php echo $x->Capacidad; ?></td>
		<td><?php echo $x->NCoches; ?></td>
		<td><?php echo $x->Operativo; ?></td>
		<td><?php echo $x->Localizacion; ?></td>
		<td><?php echo $x->KM; ?></td>
		
		
	<?php } ?>
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