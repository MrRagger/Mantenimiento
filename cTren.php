<?php
class cTren
{
    public $Matricula;
    public $Tipo;
    public $Capacidad;
    public $NCoches;
    public $Operativo; 
    public $Localizacion;
    public $KM;
	public $conexion;
	
    public function __construct()    {
        global $conexion;
        $this->conexion = $conexion;
    }

    public static function trenes()
    {
        $cTren = new static;

		$arrTrenes = [];
        $consulta = "SELECT * FROM Tren";
        $res = $cTren->conexion->query($consulta);
		
		while ($cTren = $res->fetch_object('cTren')) {
            array_push($arrTrenes,$cTren);
        }
        return $arrTrenes; 
}
}