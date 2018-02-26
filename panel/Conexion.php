<?php
class Conexion
{
    public static function conectar()
    {
        $con = new mysqli("77.104.160.115","onlyf1st_root","mantenimiento","onlyf1st_mantenimiento");
        $con->set_charset('utf8');
        return $con;
    }
}