CREATE DATABASE 1311992289_gso_lok;
USE 1311992289_gso_lok;

CREATE TABLE flokkur
(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nafn VARCHAR(50) NOT NULL
);

CREATE TABLE tegund
(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nafn VARCHAR(50) NOT NULL
);

CREATE TABLE utgefandi
(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nafn VARCHAR(50) NOT NULL
);

CREATE TABLE flytjandi
(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nafn VARCHAR(50) NOT NULL,
    faedingardagur DATE NOT NULL,
    danardagur DATE,
    lysing TEXT,
    flokkur INT NOT NULL,
    verdlaun INT,
    FOREIGN KEY (flokkur) REFERENCES flokkur(ID)
);

CREATE TABLE diskur
(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nafn VARCHAR(50) NOT NULL,
    utgefandi INT NOT NULL,
    utgafudagur DATE NOT NULL,
    tegund INT NOT NULL,
    FOREIGN KEY (utgefandi) REFERENCES utgefandi(ID),
    FOREIGN KEY (tegund) REFERENCES tegund(ID)
);

CREATE TABLE lag
(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nafn VARCHAR(50) NOT NULL,
    Lengd DOUBLE(5,2) NOT NULL,  /*Í mínútum: 5.50 eru fimm mínótur og 50 sekúndur*/
    tegund INT NOT NULL,
    flytjandi INT NOT NULL,
    einkunn DOUBLE(3, 1),
    diskur INT NOT NULL,
    FOREIGN KEY (tegund) REFERENCES tegund(ID),
    FOREIGN KEY (flytjandi) REFERENCES flytjandi(ID),
    FOREIGN KEY (diskur) REFERENCES diskur(ID)
);

CREATE TABLE semjandi
(
	ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nafn VARCHAR(50) NOT NULL
);

CREATE TABLE lag_semj
(
	lag_ID INT NOT NULL,
    semj_ID INT NOT NULL,
    FOREIGN KEY (lag_ID) REFERENCES lag(ID),
    FOREIGN KEY (semj_ID) REFERENCES semjandi(ID)
    
);

/*  Röð sem ætti að droppa í
DROP TABLE lag_semj;
DROP TABLE semjandi;
DROP TABLE lag;
DROP TABLE flytjandi;
DROP TABLE diskur;
DROP TABLE flokkur;
DROP TABLE tegund;
DROP TABLE utgefandi;
*/