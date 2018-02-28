<?php
class cIndex
{
    public $IdAveria;
    public $Tipo;
    public $IdPieza;
	
    public function __construct()    {
        global $conexion;
        $this->conexion = $conexion;
    }

    public static function Averias()
    {
        $cIndex = new static;

		$arrAverias = [];
        $consulta = "SELECT * FROM Averia";
        $res = $cIndex->conexion->query($consulta);
		
		while ($cIndex = $res->fetch_object('cIndex')) {
            array_push($arrAverias,$cIndex);
        }
        return $arrAverias; 
}
}