CREATE DATABASE Db_Hosto;

CREATE TABLE MEDECIN
(
 ID_MED INTEGER NOT NULL IDENTITY( 1000,1),
 ID_SERV INTEGER,
 ID_LAB INTEGER,
 ID_DPT INTEGER,
 NOM_MED VARCHAR(15),
 PRENOM_MED VARCHAR(30),
 SPÉCIALITÉ_MED VARCHAR(30),
 FONCTION_MED VARCHAR(30),
 ADRESSE_MED VARCHAR(50),
PRIMARY KEY( ID_MED)
);
CREATE TABLE SERVICES
(
 ID_SERV INTEGER IDENTITY( 1000,1) NOT NULL,
 ID_MED INTEGER,
 ID_DPT INTEGER,
 NOM_SERV NVARCHAR(15),
 PRIMARY KEY( ID_SERV)
);

CREATE TABLE DEPARTEMENT
(
 ID_DPT INTEGER IDENTITY( 1000,1) NOT NULL,
 ID_MED INTEGER,
 NOM_DPT NVARCHAR(15),
 PRIMARY KEY( ID_DPT)
);


CREATE TABLE LABORATOIRE
(
 ID_LAB INTEGER IDENTITY( 1000,1) NOT NULL,
 ID_DPT INTEGER,
 ID_MED INTEGER,
 LIBELLÉ_LAB NVARCHAR(50),
 PRIMARY KEY( ID_LAB)
);
CREATE TABLE PATIENT
(
 ID_PAT INTEGER IDENTITY( 1000,1) NOT NULL,
 ID_MED INTEGER,
 NOM_PAT NVARCHAR(30),
 PRENOM_PAT NVARCHAR(30),
 ADRESSE_PAT NVARCHAR(50),
 PRIMARY KEY (ID_PAT)
);

CREATE TABLE ANALYSE
(
 ID_ANALYSE INTEGER IDENTITY( 1000,1) NOT NULL,
 ID_PAT INTEGER,
 ID_MED INTEGER,
 ID_TYPE INTEGER,
 DATE_ANALYSE DATETIME,
 RESULTAT VARCHAR(100),
 PRIMARY KEY (ID_ANALYSE)
);




CREATE TABLE TYPE_ANALYSE
(
 ID_TYPE INTEGER IDENTITY( 1000,1) NOT NULL,
 ID_LAB INTEGER,
 LIBELLÉ_TYPE NVARCHAR(50),
 MONTANT_TYPE NUMERIC(15),
 PRIMARY KEY (ID_TYPE)
);

CREATE TABLE HOSPITALISER
(
 ID_SERV INTEGER,
 ID_PAT INTEGER,
 DATE_HOSPITALISER DATETIME,
  PRIMARY KEY (ID_SERV,ID_PAT)
);

CREATE TABLE CONSULTER
(
 ID_PAT INTEGER,
 ID_MED INTEGER,
 PRESCRIPTION VARCHAR(100),
 MONTANT NUMERIC(15),
 DATE_CONSULT DATETIME,
  PRIMARY KEY (ID_PAT,ID_MED)
);

ALTER TABLE MEDECIN add  foreign key(ID_SERV)references SERVICES(ID_SERV);
ALTER TABLE MEDECIN add  foreign key(ID_LAB)references LABORATOIRE(ID_LAB);
ALTER TABLE MEDECIN add  foreign key(ID_DPT)references DEPARTEMENT(ID_DPT);
ALTER TABLE SERVICES add  foreign key(ID_MED)references MEDECIN(ID_MED);
ALTER TABLE SERVICES add  foreign key(ID_DPT)references DEPARTEMENT(ID_DPT);
ALTER TABLE DEPARTEMENT add  foreign key(ID_MED)references MEDECIN(ID_MED);
ALTER TABLE LABORATOIRE add  foreign key(ID_DPT)references DEPARTEMENT(ID_DPT);
ALTER TABLE LABORATOIRE add  foreign key(ID_MED)references MEDECIN(ID_MED);
ALTER TABLE PATIENT add  foreign key(ID_MED)references MEDECIN(ID_MED);
ALTER TABLE ANALYSE add  foreign key(ID_PAT)references PATIENT(ID_PAT);
ALTER TABLE ANALYSE add  foreign key(ID_MED)references MEDECIN(ID_MED);
ALTER TABLE ANALYSE add  foreign key(ID_TYPE)references TYPE_ANALYSE(ID_TYPE);
ALTER TABLE TYPE_ANALYSE add  foreign key(ID_LAB)references LABORATOIRE(ID_LAB);
ALTER TABLE HOSPITALISER add  foreign key(ID_SERV)references SERVICES(ID_SERV);
ALTER TABLE HOSPITALISER add  foreign key(ID_PAT)references PATIENT(ID_PAT);
ALTER TABLE CONSULTER add  foreign key(ID_PAT)references PATIENT(ID_PAT);
ALTER TABLE CONSULTER add  foreign key(ID_MED)references MEDECIN(ID_MED);
