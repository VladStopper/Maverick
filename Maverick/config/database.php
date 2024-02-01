<?php

class Database {

    private $hostname = "localhost";    //motor donde se encuentra la base de datos
    private $database = "Maverick";     //nombre de la bdd
    private $username = "root";
    private $password = "";
    private $charset = "utf8";




    function conection()
    {
        try
        {
            $conexion = "mysql:host=" . $this->hostname . "; dbname=" . $this->database . "; charset=" . $this->charset;
            $options = [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_EMULATE_PREPARES => false          //config para evitar q las preparaciones que se van a realizar para las consultas no sean emuladas (sean reales) y seguras
            ];

            $pdo = new PDO($conexion, $this->username, $this->password, $options);

            return $pdo;
        }
        catch(PDOException $e)
        {
            echo 'Error de conexion: '. $e->getMessage();
            exit;
        }
    }
}



?>