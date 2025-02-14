/* Création de la table User */
CREATE TABLE User (
                      id INT PRIMARY KEY AUTO_INCREMENT,
                      name varchar(50) NOT NULL,
                      email varchar(100) NOT NULL,
                      password varchar(50) NOT NULL,
                      longitude varchar(100) NOT NULL,
                      longitude varchar(100) NOT NULL
);

/* Création de la table Sensor */
CREATE TABLE Sensor (
                        id INT PRIMARY KEY AUTO_INCREMENT,
                        name varchar(100) NOT NULL,
                        position int NOT NULL,
                        value int NOT NULL,
                        date DATE NOT NULL
);

/* Création de la table Type */
CREATE TABLE Type (
                      id INT PRIMARY KEY AUTO_INCREMENT,
                      name varchar(100) NOT NULL,
                      unit varchar(50) NOT NULL,
                      idSensor INT,
                      FOREIGN KEY (idSensor) REFERENCES Sensor(id)
);

/* Création de la table Electrovalve */
CREATE TABLE Electrovalve (
                              id INT PRIMARY KEY AUTO_INCREMENT,
                              name VARCHAR(50),
                              position INT NOT NULL
);

/* Création de la table UserSettings */
CREATE TABLE ValveSettings (
                              id INT PRIMARY KEY AUTO_INCREMENT,
                              rainThreshold INT NOT NULL,
                              moistureThreshold INT NOT NULL,
                              duration INT NOT NULL,
                              idElectrovalve INT,
                              FOREIGN KEY (idElectrovalve) REFERENCES Electrovalve(id)
);


/* Création de la table Irrigation */
CREATE TABLE Irrigation (
                            id INT PRIMARY KEY AUTO_INCREMENT,
                            dateStart DATE NOT NULL,
                            dateEnd DATE NOT NULL,
                            volume INT NOT NULL,
                            idElectrovalve INT NOT NULL,
                            FOREIGN KEY (idElectrovalve) REFERENCES Electrovalve(id)
);


/* Création de la table Schedule */
CREATE TABLE Schedule (
                      id INT PRIMARY KEY AUTO_INCREMENT,
                      hourStart INT NOT NULL,
                      hourEnd INT NOT NULL,
                      days TEXT NOT NULL,
                      idSettings INT,
                      FOREIGN KEY (idSettings) REFERENCES ValveSettings(id)
);


