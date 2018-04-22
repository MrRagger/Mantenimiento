CREATE TABLE Tren (
	Matricula VARCHAR(20),
    Tipo VARCHAR(20),
    Capacidad INT,
    NCoches INT,
    Operativo BOOL,
    Localizacion VARCHAR (20),
    KM INT,
    PRIMARY KEY (Matricula));

  CREATE TABLE Pieza(
	Matricula VARCHAR(20),
	IdPieza VARCHAR(200),
	Localizacion_Pieza VARCHAR(20),
    PRIMARY KEY (IdPieza,Matricula),
    FOREIGN KEY (Matricula) REFERENCES Tren(Matricula)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);
    
CREATE TABLE Sensor (
	IdPieza VARCHAR (200),
	IdSensor VARCHAR(20),
    Color VARCHAR(20),
    PRIMARY KEY (IdSensor,IdPieza),
    FOREIGN KEY (IdPieza) REFERENCES Pieza(IdPieza)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

CREATE TABLE Averia(
	IdAveria Int auto_increment,
	Id VARCHAR(20),
    Tipo VARCHAR(20),
    IdPieza VARCHAR(200),
    Descripcion VARCHAR(1000),
    PRIMARY KEY(IdAveria,IdPieza),
    FOREIGN KEY (IdPieza) REFERENCES Pieza(IdPieza)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);
    
CREATE TABLE Puestos(
	Matricula VARCHAR(20),
	Id Int auto_increment,
	Categoria VARCHAR(20),
    PRIMARY KEY (Id, Matricula),
    FOREIGN KEY (Matricula) REFERENCES Tren(Matricula)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

INSERT INTO Puestos (Matricula, Categoria) VALUES('A001ABC', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A001ABC', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A001ABC', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A001ABC', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A002DEF', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A003GHI', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A004JKL', 'Maquinista');    
INSERT INTO Puestos (Matricula, Categoria) VALUES('A005MNO', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A006PQR', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A007STU', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A008VWX', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A009YZA', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A010BCD', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L011ABC', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L012DEF', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L013GHI', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L014JKL', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L015MNO', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L016PQR', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L017STU', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L018VWX', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L019YZA', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L020BCD', 'Maquinista');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A002DEF', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A003GHI', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A004JKL', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A005MNO', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A006PQR', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A007STU', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A008VWX', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A009YZA', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A010BCD', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L011ABC', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L012DEF', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L013GHI', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L014JKL', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L015MNO', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L016PQR', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L017STU', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L018VWX', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L019YZA', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L020BCD', 'Revisor');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A002DEF', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A003GHI', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A004JKL', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A005MNO', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A006PQR', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A007STU', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A008VWX', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A009YZA', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A010BCD', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L011ABC', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L012DEF', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L013GHI', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L014JKL', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L015MNO', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L016PQR', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L017STU', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L018VWX', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L019YZA', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L020BCD', 'Camarero');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A002DEF', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A003GHI', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A004JKL', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A005MNO', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A006PQR', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A007STU', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A008VWX', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A009YZA', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('A010BCD', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L011ABC', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L012DEF', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L013GHI', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L014JKL', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L015MNO', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L016PQR', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L017STU', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L018VWX', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L019YZA', 'Azafato');
INSERT INTO Puestos (Matricula, Categoria) VALUES('L020BCD', 'Azafato');
SELECT Puestos.Matricula, Puestos.Id, Puestos.Categoria from Puestos,Tren WHERE Puestos.Matricula=Tren.Matricula AND Puestos.Matricula='A002DEF';


/*CREATE TABLE Empleado(
	DNI VARCHAR(20),
    Nombre VARCHAR(20),
    Apellido1 VARCHAR(20),
    Apellido2 VARCHAR (20),
    Salario INT,
    KM INT,
    Foto BLOB,
    Id_Categoria VARCHAR(30),
    Id_Estacion_Base VARCHAR (30),
    PRIMARY KEY (DNI));

CREATE TABLE Tarea(
	DNI VARCHAR(20),
	Id Int auto_increment,
    Descripcion VARCHAR(10000),
    PRIMARY KEY (Id,DNI),
    FOREIGN KEY (DNI) REFERENCES Empleado(DNI)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);
    

INSERT INTO Empleado (DNI, Nombre, Apellido1, Apellido2, Salario, KM, Id_Categoria, Id_Estacion_Base) VALUES ('50896790J', 'Javier', 'Martín', 'Pérez', 1200, 20000, 'Maquinista','Madrid');
INSERT INTO Empleado (DNI, Nombre, Apellido1, Apellido2, Salario, KM, Id_Categoria, Id_Estacion_Base) VALUES ('23349009K', 'María', 'Martínez', 'Alonso', 1000, 234900, 'Mecánico', 'Barcelona');
INSERT INTO Empleado (DNI, Nombre, Apellido1, Apellido2, Salario, KM, Id_Categoria, Id_Estacion_Base) VALUES ('34803478M', 'Pedro', 'García','Rodríguez',1050 ,342893, 'Maquinista', 'Valencia');
INSERT INTO Empleado (DNI, Nombre, Apellido1, Apellido2, Salario, KM, Id_Categoria, Id_Estacion_Base) VALUES ('34895398L', 'Miguel', 'Barroso', 'Jiménez', 1000, 348901, 'Mecánico', 'Bilbao');

INSERT INTO Tarea (DNI,Descripcion) VALUES ('50896790J','Conducir');
INSERT INTO Tarea (DNI,Descripcion) VALUES ('23349009K', 'Arreglar Filtro de Aire');
INSERT INTO Tarea (DNI,Descripcion) VALUES ('34803478M','Conducir');
INSERT INTO Tarea (DNI,Descripcion) VALUES ('34895398L','Arreglar Rodamiento');

SELECT * from Tarea;
SELECT * from Empleado;
*/
    
INSERT INTO Tren  VALUES ('A001ABC', 'Alta', 400, 10, False, 'Madrid', 200000);
INSERT INTO Tren  VALUES ('A002DEF', 'Alta', 400, 10, True, 'Valencia', 185000);
INSERT INTO Tren  VALUES ('A003GHI', 'Alta', 400, 10, True, 'Alicante', 190000);
INSERT INTO Tren  VALUES ('A004JKL', 'Alta', 400, 10, True, 'Barcelona', 195000);
INSERT INTO Tren  VALUES ('A005MNO', 'Alta', 400, 10, True, 'Murcia', 240000);
INSERT INTO Tren  VALUES ('A006PQR', 'Alta', 400, 10, False, 'Valladolid', 250000);
INSERT INTO Tren  VALUES ('A007STU', 'Alta', 400, 10, True, 'León', 500000);
INSERT INTO Tren  VALUES ('A008VWX', 'Alta', 400, 10, True, 'Málaga', 400000);
INSERT INTO Tren  VALUES ('A009YZA', 'Alta', 400, 10, True, 'Sevilla', 300000);
INSERT INTO Tren  VALUES ('A010BCD', 'Alta', 400, 10, True, 'Madrid',267890);
INSERT INTO Tren VALUES ('L011ABC', 'Media', 300, 7, True, 'Bilbao', 275400);
INSERT INTO Tren VALUES ('L012DEF', 'Media', 300, 7, True, 'Pamplona', 150000);
INSERT INTO Tren VALUES ('L013GHI', 'Media', 300, 7, True, 'Valencia', 165000);
INSERT INTO Tren VALUES ('L014JKL', 'Media', 300, 7, True, 'Barcelona',90000);
INSERT INTO Tren VALUES ('L015MNO', 'Media', 300, 7, True, 'Murcia', 100000);
INSERT INTO Tren VALUES ('L016PQR', 'Media', 300, 7, True, 'Alicante', 120000);
INSERT INTO Tren VALUES ('L017STU', 'Media', 300, 7, True, 'Málaga',134000);
INSERT INTO Tren VALUES ('L018VWX', 'Media', 300, 7, True, 'Madrid', 145000);
INSERT INTO Tren VALUES ('L019YZA', 'Media', 300, 7, False, 'Málaga', 155500);
INSERT INTO Tren VALUES ('L020BCD', 'Media', 300, 7, True, 'Bilbao',140230);
/*SELECT * from Pieza;*/
/*Como identificador de piezas vamos a asignar el nombre de la pieza más la primera parte de la matrícula del tren 
donde se encuentra esa pieza*/

INSERT INTO Pieza VALUES('A001ABC','A001Rodamiento','Motor');  
INSERT INTO Pieza VALUES('A001ABC','A001FiltroAire','Cabina');  
INSERT INTO Pieza VALUES('A002DEF','A002Rodamiento','Motor'); 
INSERT INTO Pieza VALUES('A002DEF','A002FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A003GHI','A003Rodamiento','Motor'); 
INSERT INTO Pieza VALUES('A003GHI','A003FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A004JKL','A004Rodamiento','Motor'); 
INSERT INTO Pieza VALUES('A004JKL','A004FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A005MNO','A005Rodamiento','Motor');
INSERT INTO Pieza VALUES('A005MNO','A005FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A006PQR','A006Rodamiento','Motor');  
INSERT INTO Pieza VALUES('A006PQR','A006FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A007STU','A007Rodamiento','Motor');  
INSERT INTO Pieza VALUES('A007STU','A007FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A008VWX','A008Rodamiento','Motor');  
INSERT INTO Pieza VALUES('A008VWX','A008FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A009YZA','A009Rodamiento','Motor');  
INSERT INTO Pieza VALUES('A009YZA','A009FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A010BCD','A010Rodamiento','Motor');  
INSERT INTO Pieza VALUES('A010BCD','A010FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L011ABC','L011Rodamiento','Motor'); 
INSERT INTO Pieza VALUES('L011ABC','L011FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L012DEF','L012Rodamiento','Motor'); 
INSERT INTO Pieza VALUES('L012DEF','L012FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L013GHI','L013Rodamiento','Motor'); 
INSERT INTO Pieza VALUES('L013GHI','L013FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L014JKL','L014Rodamiento','Motor'); 
INSERT INTO Pieza VALUES('L014JKL','L014FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L015MNO','L015Rodamiento','Motor'); 
INSERT INTO Pieza VALUES('L015MNO','L015FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L016PQR','L016Rodamiento','Motor'); 
INSERT INTO Pieza VALUES('L016PQR','L016FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L017STU','L017Rodamiento','Motor'); 
INSERT INTO Pieza VALUES('L017STU','L017FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L018VWX','L018Rodamiento','Motor');
INSERT INTO Pieza VALUES('L018VWX','L018FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L019YZA','L019Rodamiento','Motor');  
INSERT INTO Pieza VALUES('L019YZA','L019FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L020BCD','L020Rodamiento','Motor'); 
INSERT INTO Pieza VALUES('L020BCD','L020FiltroAire','Cabina');  
 
INSERT INTO Sensor VALUES ('A001Rodamiento','Temperatura', 'rojo');
INSERT INTO Sensor VALUES ('A001FiltroAire','Humedad', 'naranja');
INSERT INTO Sensor VALUES ('A002Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('A003Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('A004Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('A005Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('A006Rodamiento','Temperatura', 'rojo');
INSERT INTO Sensor VALUES ('A007Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('A008Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('A009Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('A010Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('L011Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('L012Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('L013Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('L014Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('L015Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('L016Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('L017Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('L018Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('L019Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('L020Rodamiento','Temperatura', 'verde');
INSERT INTO Sensor VALUES ('A002FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('A003FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('A004FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('A005FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('A006FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('A007FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('A008FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('A009FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('A010FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('L011FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('L012FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('L013FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('L014FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('L015FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('L016FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('L017FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('L018FiltroAire','Humedad', 'verde');
INSERT INTO Sensor VALUES ('L019FiltroAire','Humedad', 'rojo');
INSERT INTO Sensor VALUES ('L020FiltroAire','Humedad', 'verde');

UPDATE Sensor SET Color='verde' WHERE IdSensor='Humedad' AND IdPieza='L020FiltroAire';

Select * from Sensor;

INSERT INTO Averia (Id,Tipo, IdPieza,Descripcion) VALUES('Temperatura_Muy_Alta','Bloqueante','A001Rodamiento','El sensor ha detectado un gran aumento de temperatura poniendo en peligro el funcionamiento del motor. Hay que revisarlo');
INSERT INTO Averia (Id,Tipo, IdPieza,Descripcion)VALUES('Humedad_Baja', 'Media','A001FiltroAire','Ha habido un leve descenso de la humedad en la cabina. No es una avería grave pero es conveniente arreglarla lo antes posible. Puede ser debido a un fallo en el filtro de aire');
INSERT INTO Averia (Id,Tipo, IdPieza,Descripcion)VALUES('Humedad_Alta', 'Bloqueante', 'L019FiltroAire','Ha habido un gran aumento de la humedad en la cabina, de tal forma que puede dañar otras piezas del tren. Puede ser debido a un fallo en el filtro de aire');
INSERT INTO Averia (Id,Tipo, IdPieza,Descripcion)VALUES('Temperatura_Alta', 'Alta', 'A006Rodamiento','El sensor ha detectado un leve aumento de temperatura poniendo en peligro el funcionamiento del motor. Hay que revisarlo');
/*SELECT * from Tren;*/


/*La potencia del tren bajó debido a la presión de sobrealimentación. El fallo podría estar en la válvula de admisión de aire');*/
/*SELECT * from Pieza where Pieza. Matricula= 'L019YZA';*/
/*SELECT Averia.IdAveria,Averia.Descripcion, Averia.Tipo, Averia.IdPieza, Pieza.Matricula from Averia, Pieza where Averia.IdPieza=Pieza.IdPieza and Pieza.Matricula='L014JKL';
*/


/*INSERT INTO Averia VALUES ('PotenciaBaja', 'Alta', 'L012ValvulaAire','La sdfsdfs');
SELECT idPieza from Pieza;*/


/*SDFJLSDJFLSDJFLSDFJSLDFJ*/
/*CREATE TABLE Pieza(
	IdPiezaMandoAceleracion VARCHAR(200),
    IdPiezaValvulaAire VARCHAR (200),
    IdFiltroAire VARCHAR (200),
    IdControladorVelocidad VARCHAR(200),
    IdMandoAccionamiento VARCHAR (200),
    Matricula VARCHAR(20),
    Localizacion_PiezaMandoAceleracion VARCHAR(20),
    Localizacion_PiezaValvulaAire VARCHAR (20),
    Localización_FiltroAire VARCHAR (20),
    Localizacion_ControladorVelocidad VARCHAR (20),
    Localizacion_MandoAccionamiento VARCHAR(20),
    PRIMARY KEY (IdPiezaMandoAceleracion,IdPiezaValvulaAire, IdFiltroAire, IdControladorVelocidad,IdMandoAccionamiento,Matricula),
    FOREIGN KEY (Matricula) REFERENCES Tren(Matricula)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);*/
/*select * from Sensor;
select* from Averia;*/
