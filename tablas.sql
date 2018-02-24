CREATE TABLE Tren (
	Matricula VARCHAR(10),
    Tipo VARCHAR(10),
    Capacidad INT,
    NCoches INT,
    Operativo BOOL,
    PRIMARY KEY (Matricula));

  CREATE TABLE Pieza(
	IdPieza VARCHAR(10),
    Matricula VARCHAR(10),
    IdSensor VARCHAR (10),
    PRIMARY KEY (IdPieza),
    FOREIGN KEY (Matricula) REFERENCES Tren(Matricula)
    ON DELETE RESTRICT
    ON UPDATE CASCADE);
    
CREATE TABLE Sensor (
	IdSensor VARCHAR(10),
    color VARCHAR(10),
    IdPieza VARCHAR (10),
    PRIMARY KEY (IdSensor),
    FOREIGN KEY (IdPieza) REFERENCES Pieza(IdPieza)
    ON DELETE RESTRICT
    ON UPDATE CASCADE);

CREATE TABLE Averia(
	IdAveria VARCHAR(10),
    Tipo VARCHAR(10),
    IdPieza VARCHAR(10),
    PRIMARY KEY(IdAveria),
    FOREIGN KEY (IdPieza) REFERENCES Pieza(IdPieza)
    ON DELETE RESTRICT
    ON UPDATE CASCADE);
    


    

    