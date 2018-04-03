<?php 
$matricula = $_GET["matricula"];
require('Conexion.php');
$conexion = Conexion::conectar();
$sql = 'INSERT INTO `Averia`(`IdAveria`, `Tipo`, `IdPieza`, `Descripcion`) VALUES ("'.$_POST['tipo'].'","'.$_POST['gravedad'].'","'.$_POST['pieza_afectada'].'","'.$_POST['descripcion'].'")';
$resultado = $conexion->query($sql);
sleep(2);
header("Location: https://maintenancepanel.000webhostapp.com/tren.php?matricula=".$matricula); 
?>