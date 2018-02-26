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
	IdPieza VARCHAR(20),
    Matricula VARCHAR(20),
    PRIMARY KEY (IdPieza,Matricula),
    FOREIGN KEY (Matricula) REFERENCES Tren(Matricula)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);
    
CREATE TABLE Sensor (
	IdSensor VARCHAR(20),
    color VARCHAR(20),
    IdPieza VARCHAR (20),
    PRIMARY KEY (IdSensor,IdPieza),
    FOREIGN KEY (IdPieza) REFERENCES Pieza(IdPieza)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);

CREATE TABLE Averia(
	IdAveria VARCHAR(20),
    Tipo VARCHAR(20),
    IdPieza VARCHAR(20),
    PRIMARY KEY(IdAveria,IdPieza),
    FOREIGN KEY (IdPieza) REFERENCES Pieza(IdPieza)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT);
    
INSERT INTO Tren  VALUES ('A001ABC', 'Alta', 400, 10, True, 'Madrid', 200000);
INSERT INTO Tren  VALUES ('A002DEF', 'Alta', 400, 10, False, 'Valencia', 185000);
INSERT INTO Tren  VALUES ('A003GHI', 'Alta', 400, 10, True, 'Alicante', 190000);
INSERT INTO Tren  VALUES ('A004JKL', 'Alta', 400, 10, False, 'Barcelona', 195000);
INSERT INTO Tren  VALUES ('A005MNO', 'Alta', 400, 10, True, 'Murcia', 240000);
INSERT INTO Tren  VALUES ('A006PQR', 'Alta', 400, 10, True, 'Valladolid', 250000);
INSERT INTO Tren  VALUES ('A007STU', 'Alta', 400, 10, True, 'León', 500000);
INSERT INTO Tren  VALUES ('A008VWX', 'Alta', 400, 10, True, 'Málaga', 400000);
INSERT INTO Tren  VALUES ('A009YZA', 'Alta', 400, 10, True, 'Sevilla', 300000);
INSERT INTO Tren  VALUES ('A010BCD', 'Alta', 400, 10, True, 'Madrid',267890);
INSERT INTO Tren VALUES ('L011ABC', 'Media', 300, 7, True, 'Bilbao', 275400);
INSERT INTO Tren VALUES ('L012DEF', 'Media', 300, 7, False, 'Pamplona', 150000);
INSERT INTO Tren VALUES ('L013GHI', 'Media', 300, 7, True, 'Valencia', 165000);
INSERT INTO Tren VALUES ('L014JKL', 'Media', 300, 7, False, 'Barcelona',90000);
INSERT INTO Tren VALUES ('L015MNO', 'Media', 300, 7, True, 'Murcia', 100000);
INSERT INTO Tren VALUES ('L016PQR', 'Media', 300, 7, True, 'Alicante', 120000);
INSERT INTO Tren VALUES ('L017STU', 'Media', 300, 7, True, 'Málaga',134000);
INSERT INTO Tren VALUES ('L018VWX', 'Media', 300, 7, True, 'Madrid', 145000);
INSERT INTO Tren VALUES ('L019YZA', 'Media', 300, 7, False, 'Málaga', 155500);
INSERT INTO Tren VALUES ('L020BCD', 'Media', 300, 7, True, 'Bilbao',140230);

/*Como identificador de piezas vamos a asignar el nombre de la pieza más la primera parte de la matrícula del tren 
donde se encuentra esa pieza*/

INSERT INTO Pieza VALUES('cabinaA001','A001ABC');  
INSERT INTO Pieza VALUES('turbinaL019','L019YZA');  
INSERT INTO Pieza VALUES('turbinaL012','L012DEF');  
INSERT INTO Pieza VALUES('cabinaA006','A006PQR');  
INSERT INTO Pieza VALUES('frenosL014','L014JKL');  


INSERT INTO Sensor VALUES ('temperatura', 'naranja', 'cabinaA001');
INSERT INTO Sensor VALUES ('humedad', 'naranja', 'cabinaA006');
INSERT INTO Sensor VALUES ('presión', 'rojo', 'turbinaL019');
INSERT INTO Sensor VALUES ('presión', 'rojo', 'turbinaL012');
INSERT INTO Sensor VALUES ('desgaste', 'rojo', 'frenosL014');

INSERT INTO Averia VALUES('Climatización', 'Alta','cabinaA001');
INSERT INTO Averia VALUES('Climatización', 'Alta','cabinaA006');
INSERT INTO Averia VALUES('DesgasteFrenos', 'Bloqueante','frenosL014');
INSERT INTO Averia VALUES('SubidaPresión', 'Bloqueante','turbinaL019');
INSERT INTO Averia VALUES('BajadaPresión', 'Bloqueante','turbinaL012');





    

    