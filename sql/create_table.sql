CREATE TABLE IF NOT EXISTS azien(
    cod_azien INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(64) NOT NULL,
    descr VARCHAR(256)
);

CREATE TABLE IF NOT EXISTS dipen(
		cod_dipen INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(64) NOT NULL,
    descr VARCHAR(256)
);

CREATE TABLE IF NOT EXISTS dipen_azien(
    cod_dipen_azien INT PRIMARY KEY AUTO_INCREMENT,
    cod_azien INT NOT NULL,
    cod_dipen INT NOT NULL,
    FOREIGN KEY (cod_azien) REFERENCES azien(cod_azien),
    FOREIGN KEY (cod_dipen) REFERENCES dipen(cod_dipen)
);

CREATE TABLE IF NOT EXISTS tipol(
    cod_tipol INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(64) NOT NULL,
    descr VARCHAR(256)
);

CREATE TABLE IF NOT EXISTS model(
    cod_model INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(64) NOT NULL,
    descr VARCHAR(256)
);

CREATE TABLE IF NOT EXISTS regio(
    cod_regio VARCHAR(3) PRIMARY KEY,
    nome VARCHAR(64) NOT NULL
);

CREATE TABLE IF NOT EXISTS provi(
    cod_provi VARCHAR(3) PRIMARY KEY,
    cod_regio VARCHAR(3) NOT NULL,
    nome VARCHAR(64) NOT NULL,
    FOREIGN KEY (cod_regio) REFERENCES regio(cod_regio)
);

CREATE TABLE IF NOT EXISTS comun(
    cod_comun INT PRIMARY KEY AUTO_INCREMENT,
    cod_provi VARCHAR(3) NOT NULL,
    nome VARCHAR(64) NOT NULL,
    pref varchar(3),
	cap varchar(5),
	cod_fis varchar(4),
    num_abi int,
    FOREIGN KEY (cod_provi) REFERENCES provi(cod_provi)
);


CREATE TABLE IF NOT EXISTS dispo(
    cod_dispo INT PRIMARY KEY AUTO_INCREMENT,
    cod_tipol INT NOT NULL,
    cod_comun INT NOT NULL,
    cod_model INT NOT NULL,
    indirizzo_instl VARCHAR(64) NOT NULL,
    prezzo INT NOT NULL,
    FOREIGN KEY (cod_tipol) REFERENCES tipol(cod_tipol),
    FOREIGN KEY (cod_comun) REFERENCES comun(cod_comun),
    FOREIGN KEY (cod_model) REFERENCES model(cod_model)
);

CREATE TABLE IF NOT EXISTS misur(
    cod_misur INT PRIMARY KEY AUTO_INCREMENT,
    cod_dispo INT NOT NULL,
    azoto DECIMAL(10,2) NOT NULL,
    pm2_5 DECIMAL(10,2) NOT NULL,
    pm10 DECIMAL(10,2) NOT NULL,
    anidride DECIMAL(10,2) NOT NULL,
    data_misur DATE NOT NULL,
    FOREIGN KEY (cod_dispo) REFERENCES dispo(cod_dispo)
);


CREATE TABLE IF NOT EXISTS dispo_dipen(
    cod_dispo_dipen INT PRIMARY KEY AUTO_INCREMENT,
    cod_dispo INT NOT NULL,
    cod_dipen INT NOT NULL,
    FOREIGN KEY (cod_dispo) REFERENCES dispo(cod_dispo),
    FOREIGN KEY (cod_dipen) REFERENCES dipen(cod_dipen)
);

CREATE TABLE IF NOT EXISTS patol(
    cod_patol INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(64) NOT NULL,
    descr VARCHAR(256)
);

CREATE TABLE IF NOT EXISTS patol_regio(
    cod_patol_regio INT PRIMARY KEY AUTO_INCREMENT,
    cod_patol INT NOT NULL,
    cod_regio VARCHAR(3) NOT NULL,
    infetti INT NOT NULL,
    FOREIGN KEY (cod_patol) REFERENCES patol(cod_patol),
    FOREIGN KEY (cod_regio) REFERENCES regio(cod_regio)
);
