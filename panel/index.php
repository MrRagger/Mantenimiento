<!doctype html>

<html lang="en">
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
        <a class="nav-link" href="#">Desconectar</a>
      </li>
    </ul>
  </nav>
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
          <h1 class="h2">Inicio</h1>
          <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <!--<span data-feather="calendar"></span>-->
              Este mes
            </button>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuButton">
              <a class="dropdown-item" style="text-align: right;" href="#">Este mes</a>
              <a class="dropdown-item" style="text-align: right;" href="#">Próximo mes</a>
              <a class="dropdown-item" style="text-align: right;" href="#">Mes anterior</a>
            </div>
          </div>
        </div>

        <div class="container-fluid">
          <header>
            <h4 class="display-4 mb-4 text-center">Febrero 2018</h4>
            <div class="row d-none d-sm-flex p-1 bg-dark text-white">
              <h5 class="col-sm p-1 text-center">Domingo</h5>
              <h5 class="col-sm p-1 text-center">Lunes</h5>
              <h5 class="col-sm p-1 text-center">Martes</h5>
              <h5 class="col-sm p-1 text-center">Miércoles</h5>
              <h5 class="col-sm p-1 text-center">Jueves</h5>
              <h5 class="col-sm p-1 text-center">Viernes</h5>
              <h5 class="col-sm p-1 text-center">Sábado</h5>
            </div>
          </header>
          <div class="row border border-right-0 border-bottom-0">
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
              <h5 class="row align-items-center">
                <span class="date col-1">29</span>
                <small class="col d-sm-none text-center text-muted">Sunday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
              <h5 class="row align-items-center">
                <span class="date col-1">30</span>
                <small class="col d-sm-none text-center text-muted">Monday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
              <h5 class="row align-items-center">
                <span class="date col-1">31</span>
                <small class="col d-sm-none text-center text-muted">Tuesday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">1</span>
                <small class="col d-sm-none text-center text-muted">Wednesday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">2</span>
                <small class="col d-sm-none text-center text-muted">Thursday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">3</span>
                <small class="col d-sm-none text-center text-muted">Friday</small>
                <span class="col-1"></span>
              </h5>
              <a class="event d-block p-1 pl-2 pr-2 mb-1 rounded text-truncate small bg-info text-white" title="Test Event 1">Evento de prueba</a>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">4</span>
                <small class="col d-sm-none text-center text-muted">Saturday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="w-100"></div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">5</span>
                <small class="col d-sm-none text-center text-muted">Sunday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">6</span>
                <small class="col d-sm-none text-center text-muted">Monday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">7</span>
                <small class="col d-sm-none text-center text-muted">Tuesday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">8</span>
                <small class="col d-sm-none text-center text-muted">Wednesday</small>
                <span class="col-1"></span>
              </h5>
              <a class="event d-block p-1 pl-2 pr-2 mb-1 rounded text-truncate small bg-success text-white" title="Test Event 2">Evento de prueba</a>
              <a class="event d-block p-1 pl-2 pr-2 mb-1 rounded text-truncate small bg-danger text-white" title="Test Event 3">Evento de prueba</a>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">9</span>
                <small class="col d-sm-none text-center text-muted">Thursday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">10</span>
                <small class="col d-sm-none text-center text-muted">Friday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">11</span>
                <small class="col d-sm-none text-center text-muted">Saturday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="w-100"></div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">12</span>
                <small class="col d-sm-none text-center text-muted">Sunday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">13</span>
                <small class="col d-sm-none text-center text-muted">Monday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">14</span>
                <small class="col d-sm-none text-center text-muted">Tuesday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">15</span>
                <small class="col d-sm-none text-center text-muted">Wednesday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">16</span>
                <small class="col d-sm-none text-center text-muted">Thursday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">17</span>
                <small class="col d-sm-none text-center text-muted">Friday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">18</span>
                <small class="col d-sm-none text-center text-muted">Saturday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="w-100"></div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">19</span>
                <small class="col d-sm-none text-center text-muted">Sunday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">20</span>
                <small class="col d-sm-none text-center text-muted">Monday</small>
                <span class="col-1"></span>
              </h5>
              <a class="event d-block p-1 pl-2 pr-2 mb-1 rounded text-truncate small bg-primary text-white" title="Test Event with Super Duper Really Long Title">Evento de prueba muy largo de titulo</a>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">21</span>
                <small class="col d-sm-none text-center text-muted">Tuesday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">22</span>
                <small class="col d-sm-none text-center text-muted">Wednesday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">23</span>
                <small class="col d-sm-none text-center text-muted">Thursday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">24</span>
                <small class="col d-sm-none text-center text-muted">Friday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">25</span>
                <small class="col d-sm-none text-center text-muted">Saturday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="w-100"></div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">26</span>
                <small class="col d-sm-none text-center text-muted">Sunday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">27</span>
                <small class="col d-sm-none text-center text-muted">Monday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">28</span>
                <small class="col d-sm-none text-center text-muted">Tuesday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">29</span>
                <small class="col d-sm-none text-center text-muted">Wednesday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate ">
              <h5 class="row align-items-center">
                <span class="date col-1">30</span>
                <small class="col d-sm-none text-center text-muted">Thursday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
              <h5 class="row align-items-center">
                <span class="date col-1">1</span>
                <small class="col d-sm-none text-center text-muted">Friday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
              <h5 class="row align-items-center">
                <span class="date col-1">2</span>
                <small class="col d-sm-none text-center text-muted">Saturday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="w-100"></div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
              <h5 class="row align-items-center">
                <span class="date col-1">3</span>
                <small class="col d-sm-none text-center text-muted">Sunday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
              <h5 class="row align-items-center">
                <span class="date col-1">4</span>
                <small class="col d-sm-none text-center text-muted">Monday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
              <h5 class="row align-items-center">
                <span class="date col-1">5</span>
                <small class="col d-sm-none text-center text-muted">Tuesday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
              <h5 class="row align-items-center">
                <span class="date col-1">6</span>
                <small class="col d-sm-none text-center text-muted">Wednesday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
              <h5 class="row align-items-center">
                <span class="date col-1">7</span>
                <small class="col d-sm-none text-center text-muted">Thursday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
              <h5 class="row align-items-center">
                <span class="date col-1">8</span>
                <small class="col d-sm-none text-center text-muted">Friday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
            <div class="day col-sm p-2 border border-left-0 border-top-0 text-truncate d-none d-sm-inline-block bg-light text-muted">
              <h5 class="row align-items-center">
                <span class="date col-1">9</span>
                <small class="col d-sm-none text-center text-muted">Saturday</small>
                <span class="col-1"></span>
              </h5>
              <p class="d-sm-none">No events</p>
            </div>
          </div>
        </div>

        <h2>Futuras incidencias</h2>
        <div class="table-responsive">
          <table class="table table-striped table-sm">
            <thead>
              <tr>
                <th>ID</th>
                <th>Tren</th>
                <th>Tipo</th>
                <th>Fecha</th>
                <th>Prioridad</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>25</td>
                <td>Motor</td>
                <td>30-04-2018</td>
                <td>Alta</td>
              </tr>
              <tr>
                <td>1,002</td>
                <td>amet</td>
                <td>consectetur</td>
                <td>adipiscing</td>
                <td>elit</td>
              </tr>
              <tr>
                <td>1,003</td>
                <td>Integer</td>
                <td>nec</td>
                <td>odio</td>
                <td>Praesent</td>
              </tr>
              <tr>
                <td>1,003</td>
                <td>libero</td>
                <td>Sed</td>
                <td>cursus</td>
                <td>ante</td>
              </tr>
              <tr>
                <td>1,004</td>
                <td>dapibus</td>
                <td>diam</td>
                <td>Sed</td>
                <td>nisi</td>
              </tr>
              <tr>
                <td>1,005</td>
                <td>Nulla</td>
                <td>quis</td>
                <td>sem</td>
                <td>at</td>
              </tr>
              <tr>
                <td>1,006</td>
                <td>nibh</td>
                <td>elementum</td>
                <td>imperdiet</td>
                <td>Duis</td>
              </tr>
              <tr>
                <td>1,007</td>
                <td>sagittis</td>
                <td>ipsum</td>
                <td>Praesent</td>
                <td>mauris</td>
              </tr>
              <tr>
                <td>1,008</td>
                <td>Fusce</td>
                <td>nec</td>
                <td>tellus</td>
                <td>sed</td>
              </tr>
              <tr>
                <td>1,009</td>
                <td>augue</td>
                <td>semper</td>
                <td>porta</td>
                <td>Mauris</td>
              </tr>
              <tr>
                <td>1,010</td>
                <td>massa</td>
                <td>Vestibulum</td>
                <td>lacinia</td>
                <td>arcu</td>
              </tr>
              <tr>
                <td>1,011</td>
                <td>eget</td>
                <td>nulla</td>
                <td>Class</td>
                <td>aptent</td>
              </tr>
              <tr>
                <td>1,012</td>
                <td>taciti</td>
                <td>sociosqu</td>
                <td>ad</td>
                <td>litora</td>
              </tr>
              <tr>
                <td>1,013</td>
                <td>torquent</td>
                <td>per</td>
                <td>conubia</td>
                <td>nostra</td>
              </tr>
              <tr>
                <td>1,014</td>
                <td>per</td>
                <td>inceptos</td>
                <td>himenaeos</td>
                <td>Curabitur</td>
              </tr>
              <tr>
                <td>1,015</td>
                <td>sodales</td>
                <td>ligula</td>
                <td>in</td>
                <td>libero</td>
              </tr>
            </tbody>
          </table>
        </div>
      </main>
    </div>
  </div>

    <!-- Bootstrap core JavaScript
      ================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
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
