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
	IdAveria VARCHAR(20),
    Tipo VARCHAR(20),
    IdPieza VARCHAR(200),
    Descripcion VARCHAR(1000),
    PRIMARY KEY(IdAveria,IdPieza),
    FOREIGN KEY (IdPieza) REFERENCES Pieza(IdPieza)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);
    
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

INSERT INTO Pieza VALUES('A001ABC','A001ValvulaAire','Motor');  
INSERT INTO Pieza VALUES('A001ABC','A001FiltroAire','Cabina');  
INSERT INTO Pieza VALUES('A002DEF','A002ValvulaAire','Motor'); 
INSERT INTO Pieza VALUES('A002DEF','A002FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A003GHI','A003ValvulaAire','Motor'); 
INSERT INTO Pieza VALUES('A003GHI','A003FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A004JKL','A004ValvulaAire','Motor'); 
INSERT INTO Pieza VALUES('A004JKL','A004FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A005MNO','A005ValvulaAire','Motor');
INSERT INTO Pieza VALUES('A005MNO','A005FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A006PQR','A006ValvulaAire','Motor');  
INSERT INTO Pieza VALUES('A006PQR','A006FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A007STU','A007ValvulaAire','Motor');  
INSERT INTO Pieza VALUES('A007STU','A007FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A008VWX','A008ValvulaAire','Motor');  
INSERT INTO Pieza VALUES('A008VWX','A008FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A009YZA','A009ValvulaAire','Motor');  
INSERT INTO Pieza VALUES('A009YZA','A009FiltroAire','Cabina');
INSERT INTO Pieza VALUES('A010BCD','A010ValvulaAire','Motor');  
INSERT INTO Pieza VALUES('A010BCD','A010FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L011ABC','L011ValvulaAire','Motor'); 
INSERT INTO Pieza VALUES('L011ABC','L011FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L012DEF','L012ValvulaAire','Motor'); 
INSERT INTO Pieza VALUES('L012DEF','L012FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L013GHI','L013ValvulaAire','Motor'); 
INSERT INTO Pieza VALUES('L013GHI','L013FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L014JKL','L014ValvulaAire','Motor'); 
INSERT INTO Pieza VALUES('L014JKL','L014FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L015MNO','L015ValvulaAire','Motor'); 
INSERT INTO Pieza VALUES('L015MNO','L015FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L016PQR','L016ValvulaAire','Motor'); 
INSERT INTO Pieza VALUES('L016PQR','L016FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L017STU','L017ValvulaAire','Motor'); 
INSERT INTO Pieza VALUES('L017STU','L017FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L018VWX','L018ValvulaAire','Motor');
INSERT INTO Pieza VALUES('L018VWX','L018FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L019YZA','L019ValvulaAire','Motor');  
INSERT INTO Pieza VALUES('L019YZA','L019FiltroAire','Cabina');
INSERT INTO Pieza VALUES('L020BCD','L020ValvulaAire','Motor'); 
INSERT INTO Pieza VALUES('L020BCD','L020FiltroAire','Cabina');  
 
INSERT INTO Sensor VALUES ('A001ValvulaAire','Presion', 'rojo');
INSERT INTO Sensor VALUES ('A001FiltroAire','Humedad', 'naranja');
INSERT INTO Sensor VALUES ('A002ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('A003ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('A004ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('A005ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('A006ValvulaAire','Presion', 'rojo');
INSERT INTO Sensor VALUES ('A007ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('A008ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('A009ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('A010ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('L011ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('L012ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('L013ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('L014ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('L015ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('L016ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('L017ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('L018ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('L019ValvulaAire','Presion', 'verde');
INSERT INTO Sensor VALUES ('L020ValvulaAire','Presion', 'verde');
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

INSERT INTO Averia VALUES('PotenciaBaja','Bloqueante','A001ValvulaAire','La potencia del tren bajó debido a la presión de sobrealimentación. El fallo podría estar en la válvula de admisión de aire');
INSERT INTO Averia VALUES('HumedadBaja', 'Media','A001FiltroAire','Ha habido un leve descenso de la humedad en la cabina. No es una avería grave pero es conveniente arreglarla lo antes posible. Puede ser debido a un fallo en el filtro de aire');
INSERT INTO Averia VALUES('HumedadAlta', 'Bloqueante', 'L019FiltroAire','Ha habido un gran aumento de la humedad en la cabina, de tal forma que puede dañar otras piezas del tren. Puede ser debido a un fallo en el filtro de aire');
INSERT INTO Averia VALUES('PotenciaBaja', 'Alta', 'A006ValvulaAire','La potencia del tren bajó debido a la presión de sobrealimentación. El fallo podría estar en la válvula de admisión de aire');
SELECT * from Tren;



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
    