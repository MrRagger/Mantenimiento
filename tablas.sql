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
    IdPiezaValvulaAire VARCHAR (200),
    IdFiltroAire VARCHAR (200),
    Matricula VARCHAR(20),
    Localizacion_PiezaValvulaAire VARCHAR (20),
    Localización_FiltroAire VARCHAR (20),
    PRIMARY KEY (IdPiezaValvulaAire, IdFiltroAire, Matricula),
    FOREIGN KEY (Matricula) REFERENCES Tren(Matricula)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);
    
CREATE TABLE Sensor (
	IdSensorPresion VARCHAR(20),
    IdSensorHumedad VARCHAR(20),
    ColorPresion VARCHAR(20),
    ColorHumedad VARCHAR(20),
    IdPiezaValvulaAire VARCHAR (200),
    IdFiltroAire VARCHAR (200),
	PRIMARY KEY (IdSensorPresion,IdSensorHumedad, IdPiezaValvulaAire,IdFiltroAire),
    FOREIGN KEY (IdPiezaValvulaAire,IdFiltroAire) REFERENCES Pieza(IdPiezaValvulaAire,IdFiltroAire)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

CREATE TABLE Averia(
	IdAveriaValvulaAire VARCHAR(20),
    IdAveriaFiltroAire VARCHAR (20),
    TipoAveriaValvula VARCHAR(20),
    TipoAveriaFiltro VARCHAR(20),
    IdPiezaValvulaAire VARCHAR(200),
    IdFiltroAire VARCHAR (200),
    DescripcionValvula VARCHAR(1000),
    DescripcionFiltro VARCHAR(1000),
    PRIMARY KEY(IdAveriaValvulaAire, IdAveriaFiltroAire,IdPiezaValvulaAire,IdFiltroAire),
    FOREIGN KEY (IdPiezaValvulaAire,IdFiltroAire) REFERENCES Pieza(IdPiezaValvulaAire,IdFiltroAire)
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


INSERT INTO Pieza VALUES('A001ValvulaAire','A001FiltroAire','A001ABC','Motor','Cabina');  
INSERT INTO Pieza VALUES('A002ValvulaAire','A002FiltroAire','A002DEF','Motor','Cabina');
INSERT INTO Pieza VALUES('A003ValvulaAire','A003FiltroAire','A003GHI','Motor','Cabina');
INSERT INTO Pieza VALUES('A004ValvulaAire','A004FiltroAire','A004JKL','Motor','Cabina');
INSERT INTO Pieza VALUES('A005ValvulaAire','A005FiltroAire','A005MNO','Motor','Cabina');
INSERT INTO Pieza VALUES('A006ValvulaAire','A006FiltroAire','A006PQR','Motor','Cabina');
INSERT INTO Pieza VALUES('A007ValvulaAire','A007FiltroAire','A007STU','Motor','Cabina');
INSERT INTO Pieza VALUES('A008ValvulaAire','A008FiltroAire','A008VWX','Motor','Cabina');
INSERT INTO Pieza VALUES('A009ValvulaAire','A009FiltroAire','A009YZA','Motor','Cabina');
INSERT INTO Pieza VALUES('A010ValvulaAire','A010FiltroAire','A010BCD','Motor','Cabina');
INSERT INTO Pieza VALUES('L011ValvulaAire','L011FiltroAire','L011ABC','Motor','Cabina');
INSERT INTO Pieza VALUES('L012ValvulaAire','L012FiltroAire','L012DEF','Motor','Cabina');
INSERT INTO Pieza VALUES('L013ValvulaAire','L013FiltroAire','L013GHI','Motor','Cabina');
INSERT INTO Pieza VALUES('L014ValvulaAire','L014FiltroAire','L014JKL','Motor','Cabina');
INSERT INTO Pieza VALUES('L015ValvulaAire','L015FiltroAire','L015MNO','Motor','Cabina');
INSERT INTO Pieza VALUES('L016ValvulaAire','L016FiltroAire','L016PQR','Motor','Cabina');
INSERT INTO Pieza VALUES('L017ValvulaAire','L017FiltroAire','L017STU','Motor','Cabina');
INSERT INTO Pieza VALUES('L018ValvulaAire','L018FiltroAire','L018VWX','Motor','Cabina');
INSERT INTO Pieza VALUES('L019ValvulaAire','L019FiltroAire','L019YZA','Motor','Cabina');
INSERT INTO Pieza VALUES('L020ValvulaAire','L020FiltroAire','L020BCD','Motor','Cabina');
  


INSERT INTO Sensor VALUES ('A001Presion','A001Humedad', 'verde','rojo','A001ValvulaAire','A001FiltroAire');
INSERT INTO Sensor VALUES ('A002Presion','A002Humedad', 'verde','verde','A002ValvulaAire','A002FiltroAire');
INSERT INTO Sensor VALUES ('A003Presion','A003Humedad', 'verde','verde','A003ValvulaAire','A003FiltroAire');
INSERT INTO Sensor VALUES ('A004Presion','A004Humedad', 'verde','verde','A004ValvulaAire','A004FiltroAire');
INSERT INTO Sensor VALUES ('A005Presion','A005Humedad', 'verde','verde','A005ValvulaAire','A005FiltroAire');
INSERT INTO Sensor VALUES ('A006Presion','A006Humedad', 'rojo','naranja','A006ValvulaAire','A006FiltroAire');
INSERT INTO Sensor VALUES ('A007Presion','A007Humedad', 'verde','verde','A007ValvulaAire','A007FiltroAire');
INSERT INTO Sensor VALUES ('A008Presion','A008Humedad', 'verde','verde','A008ValvulaAire','A008FiltroAire');
INSERT INTO Sensor VALUES ('A009Presion','A009Humedad', 'verde','verde','A009ValvulaAire','A009FiltroAire');
INSERT INTO Sensor VALUES ('A010Presion','A010Humedad', 'verde','verde','A010ValvulaAire','A010FiltroAire');
INSERT INTO Sensor VALUES ('L011Presion','L011Humedad', 'verde','verde','L011ValvulaAire','L011FiltroAire');
INSERT INTO Sensor VALUES ('L012Presion','L012Humedad', 'verde','verde','L012ValvulaAire','L012FiltroAire');
INSERT INTO Sensor VALUES ('L013Presion','L013Humedad', 'verde','verde','L013ValvulaAire','L013FiltroAire');
INSERT INTO Sensor VALUES ('L014Presion','L014Humedad', 'verde','verde','L014ValvulaAire','L014FiltroAire');
INSERT INTO Sensor VALUES ('L015Presion','L015Humedad', 'verde','verde','L015ValvulaAire','L015FiltroAire');
INSERT INTO Sensor VALUES ('L016Presion','L016Humedad', 'verde','verde','L016ValvulaAire','L016FiltroAire');
INSERT INTO Sensor VALUES ('L017Presion','L017Humedad', 'verde','verde','L017ValvulaAire','L017FiltroAire');
INSERT INTO Sensor VALUES ('L018Presion','L018Humedad', 'verde','verde','L018ValvulaAire','L018FiltroAire');
INSERT INTO Sensor VALUES ('L019Presion','L019Humedad', 'rojo','verde','L019ValvulaAire','L019FiltroAire');
INSERT INTO Sensor VALUES ('L020Presion','L020Humedad', 'verde','verde','L020ValvulaAire','L020FiltroAire');


INSERT INTO Averia VALUES('A006PotenciaBaja','A006HumedadBaja', 'Bloqueante','Media','A006ValvulaAire','A006FiltroAire','La potencia del tren bajó debido a la presión de sobrealimentación. El fallo podría estar en la válvula de admisión de aire','Ha habido un leve descenso de la humedad en la cabina. No es una avería grave pero es conveniente arreglarla lo antes posible. Puede ser debido a un fallo en el filtro de aire');
INSERT INTO Averia VALUES('NULL','A001HumedadAlta','NULL', 'Bloqueante','A001ValvulaAire','A001FiltroAire','NULL','Ha habido un gran aumento de la humedad en la cabina, de tal forma que puede dañar otras piezas del tren. Puede ser debido a un fallo en el filtro de aire');
INSERT INTO Averia VALUES('L019PotenciaBaja','NULL', 'Alta','NULL','L019ValvulaAire','L019FiltroAire','La potencia del tren bajó debido a la presión de sobrealimentación. El fallo podría estar en la válvula de admisión de aire','NULL');

SELECT Averia.IdAveria,Averia.Descripcion, Averia.Tipo, Averia.IdPieza, Pieza.Matricula from Averia, Pieza where Averia.IdPieza=Pieza.IdPieza and Pieza.Matricula='L014JKL';

SELECT * from Sensor;

INSERT INTO Averia VALUES ('PotenciaBaja', 'Alta', 'L012ValvulaAire','La sdfsdfs');
SELECT * from Averia;
SELECT idPiezaMandoAceleracion from Pieza;
SELECT * from Tren


    