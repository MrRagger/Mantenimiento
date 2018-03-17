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
	IdPieza VARCHAR(200),
    Matricula VARCHAR(20),
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
INSERT INTO Tren VALUES ('L014JKL', 'Media', 300, 7, False, 'Barcelona',90000);
INSERT INTO Tren VALUES ('L015MNO', 'Media', 300, 7, True, 'Murcia', 100000);
INSERT INTO Tren VALUES ('L016PQR', 'Media', 300, 7, True, 'Alicante', 120000);
INSERT INTO Tren VALUES ('L017STU', 'Media', 300, 7, True, 'Málaga',134000);
INSERT INTO Tren VALUES ('L018VWX', 'Media', 300, 7, True, 'Madrid', 145000);
INSERT INTO Tren VALUES ('L019YZA', 'Media', 300, 7, False, 'Málaga', 155500);
INSERT INTO Tren VALUES ('L020BCD', 'Media', 300, 7, True, 'Bilbao',140230);
SELECT * from Pieza;
/*Como identificador de piezas vamos a asignar el nombre de la pieza más la primera parte de la matrícula del tren 
donde se encuentra esa pieza*/

INSERT INTO Pieza VALUES('A001ValvulaAire','A001ABC','Motor');  
INSERT INTO Pieza VALUES('A001FiltroAire','A001ABC','Cabina');  
INSERT INTO Pieza VALUES('A002ValvulaAire','A002DEF','Motor'); 
INSERT INTO Pieza VALUES('A002FiltroAire','A002DEF','Cabina');
INSERT INTO Pieza VALUES('A003ValvulaAire','A003GHI','Motor'); 
INSERT INTO Pieza VALUES('A003FiltroAire','A003GHI','Cabina');
INSERT INTO Pieza VALUES('A004ValvulaAire','A004JKL','Motor'); 
INSERT INTO Pieza VALUES('A004FiltroAire','A004JKL','Cabina');
INSERT INTO Pieza VALUES('A005ValvulaAire','A005MNO','Motor');
INSERT INTO Pieza VALUES('A005FiltroAire','A005MNO','Cabina');
INSERT INTO Pieza VALUES('A006ValvulaAire','A006PQR','Motor');  
INSERT INTO Pieza VALUES('A006FiltroAire','A006PQR','Cabina');
INSERT INTO Pieza VALUES('A007ValvulaAire','A007STU','Motor');  
INSERT INTO Pieza VALUES('A007FiltroAire','A007STU','Cabina');
INSERT INTO Pieza VALUES('A008ValvulaAire','A008VWX','Motor');  
INSERT INTO Pieza VALUES('A008FiltroAire','A008VWX','Cabina');
INSERT INTO Pieza VALUES('A009ValvulaAire','A009YZA','Motor');  
INSERT INTO Pieza VALUES('A009FiltroAire','A009YZA','Cabina');
INSERT INTO Pieza VALUES('A010ValvulaAire','A010BCD','Motor');  
INSERT INTO Pieza VALUES('A010FiltroAire','A010BCD','Cabina');
INSERT INTO Pieza VALUES('L011ValvulaAire','L011ABC','Motor'); 
INSERT INTO Pieza VALUES('L011FiltroAire','L011ABC','Cabina');
INSERT INTO Pieza VALUES('L012ValvulaAire','L012DEF','Motor'); 
INSERT INTO Pieza VALUES('L012FiltroAire','L012DEF','Cabina');
INSERT INTO Pieza VALUES('L013ValvulaAire','L013GHI','Motor'); 
INSERT INTO Pieza VALUES('L013FiltroAire','L013GHI','Cabina');
INSERT INTO Pieza VALUES('L014ValvulaAire','L014','Motor'); 
INSERT INTO Pieza VALUES('L014FiltroAire','L014QRS','Cabina');
INSERT INTO Pieza VALUES('L015ValvulaAire','L015TUV','Motor'); 
INSERT INTO Pieza VALUES('L015FiltroAire','L015TUV','Cabina');
INSERT INTO Pieza VALUES('L016ValvulaAire','L016WXY','Motor'); 
INSERT INTO Pieza VALUES('L016FiltroAire','L016WXY','Cabina');
INSERT INTO Pieza VALUES('L017ValvulaAire','L017ZAB','Motor'); 
INSERT INTO Pieza VALUES('L016FiltroAire','L016WXY','Cabina');





INSERT INTO Pieza VALUES('L019ValvulaAire','L019YZA','Motor');  
 


INSERT INTO Pieza VALUES('L020FiltroAire','L020BCD','Cabina');  

INSERT INTO Sensor VALUES ('Temperatura', 'verde', 'L012FiltroAire');
INSERT INTO Sensor VALUES ('Humedad', 'verde', 'L020FiltroAire');
INSERT INTO Sensor VALUES ('Aceleracion', 'rojo', 'A001MandoAceleracion');
INSERT INTO Sensor VALUES ('Presion', 'naranja', 'L019ValvulaAire');
INSERT INTO Sensor VALUES ('VelocidadFrenado', 'rojo', 'L014MandoAccionamiento');
INSERT INTO Sensor VALUES ('Velocidad', 'rojo','A006ControladorVelocidad');

INSERT INTO Averia VALUES('Aceleracion', 'Bloqueante','A001MandoAceleracion','No se puede acelerar de forma correcta el tren debido a una obstrucción en el mando de aceleración');
INSERT INTO Averia VALUES('Velocidad', 'Bloqueante','A006ControladorVelocidad','Sistema de control de velocidad ha sido dañado y no muestra de manera exacta la velocidad que adquiere el tren en el camino');
INSERT INTO Averia VALUES('VelocidadFrenadoBaja', 'Bloqueante','L014MandoAccionamiento','El sistema de frenos está dañado debido al fallo del mando de accionamiento del freno de aire comprimido');
INSERT INTO Averia VALUES('PotenciaBaja', 'Alta','L019ValvulaAire','La potencia del tren bajó debido a la presión de sobrealimentación. El fallo podría estar en la válvula de admisión de aire');

SELECT * from Pieza where Pieza. Matricula= 'L019YZA';
/*SELECT Averia.IdAveria,Averia.Descripcion, Averia.Tipo, Averia.IdPieza, Pieza.Matricula from Averia, Pieza where Averia.IdPieza=Pieza.IdPieza and Pieza.Matricula='L014JKL';
*/
/*SELECT * from Pieza;*/

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
    