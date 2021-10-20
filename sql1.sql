create table Medecin(
Id_med integer identity (1000,1) not null,
Id_serv integer not null,
Id_lab integer not null,
Id_dpt  integer not null,
nom_med  nvarchar(15),
prenom_med nvarchar(30),
specialite_med nvarchar(15),
fonction_med nvarchar(20),
ad_med varchar(100),
primary key(Id_med),
);

create table Services(
Id_serv integer identity (1000,1) not null,
Id_med integer not null ,
Id_dpt integer not null,
nom_serv nvarchar(15),
primary key(Id_serv),
);



create table Departement(
Id_dpt integer identity (1000,1) not null,
Id_med  integer not null,
nom_dpt  nvarchar(15),
primary key(Id_dpt),
);







create table Laboratoire(
Id_lab integer identity (1000,1) not null,
Id_med integer not null ,
Id_dpt integer not null ,
libelle_lab nvarchar(30),
primary key(Id_lab),
);



create table Patient(
Id_pat integer identity (1000,1) not null,
Id_med integer not null ,
nom_pat nvarchar(30),
prenom_pat nvarchar(15),
ad_patient varchar(100)
primary key(Id_patient)
);




create table Analyse(
Id_analyse integer identity (1000,1) not null,
Id_pat integer not null ,
Id_med integer not null ,
Id_type integer not null,
date_analyse datetime,
primary key(Id_analyse)
);



create table Type_analyse(
Id_type integer identity (1000,1) not null,
Id_lab integer not null ,
libelle_type  nvarchar(50),
montant_type numeric(15),
primary key(Id_type)
);

create table Hospitaliser(
Id_serv integer not null,
Id_pat integer not null ,
date_hospitaliser datetime
);



create table Consulter(
Id_pat integer not null,
Id_med integer not null ,
prescription varchar(100),
montant numeric(15),
date_consult datetime
);



ALTER TABLE Medecin add  foreign key(Id_serv)references Services(Id_serv);
ALTER TABLE Medecin add  foreign key(Id_lab)references Laboratoire(Id_lab);
ALTER TABLE Medecin add  foreign key(Id_dpt)references Departement(Id_dpt);
ALTER TABLE Services add  foreign key(Id_med)references Medecin(Id_med);
ALTER TABLE Services add  foreign key(Id_dpt)references Departement(Id_dpt);
ALTER TABLE Departement add  foreign key(Id_med)references Medecin(Id_med);
ALTER TABLE Laboratoire add  foreign key(Id_dpt)references Departement(Id_dpt);
ALTER TABLE Laboratoire add  foreign key(Id_med)references Medecin(Id_med);
ALTER TABLE Patient add  foreign key(Id_med)references Medecin(Id_med);
ALTER TABLE Analyse add  foreign key(Id_pat)references Patient(Id_pat);
ALTER TABLE Analyse add  foreign key(Id_med)references Medecin(Id_med);
ALTER TABLE Analyse add  foreign key(Id_type)references Type_Analyse(Id_type);
ALTER TABLE Type_Analyse add  foreign key(Id_lab)references Laboratoire(Id_lab);
ALTER TABLE Hospitaliser add  foreign key(Id_serv)references Services(Id_serv);
ALTER TABLE Hospitaliser add  foreign key(Id_pat)references Patient(Id_pat);
ALTER TABLE Consulter add  foreign key(Id_pat)references Patient(Id_pat);
ALTER TABLE Consulter add  foreign key(Id_med)references Medecin(Id_med);

INSERT INTO Medecin VALUES(nom_med,prenom_med,specialite_med,fonction_med,ad_med)/*pas d'identifiant*/
("nommed1","prenommed1","medecin-chercheur","cardiologue","admed0000"),
("nommed2","prenommed2","medecin-chercheur","cardiologie","admed0001"),
("nommed3","prenommed3","medecin-praticien","obstetricien","admed0010"),
("nommed4","prenommed4","medecin-chercheur","cardiologie","admed0011"),
("nommed5","prenommed5","medecin-praticien","ophtamologue","admed0100"),
("nommed6","prenommed6","medecin-chercheur","pediatre","admed0101"),
("nommed7","prenommed7","medecin-chercheur","psychologue","admed0110"),
("nommed8","prenommed8","medecin-praticien","ophtamologue","admed0111"),
("nommed9","prenommed9","medecin-chercheur","neurologue","admed1000"),
("nommed10","prenommed10","medecin-praticien","obstetricien","admed1001");


INSERT INTO Services VALUES(nom_serv)
("nomserv0"),
("nomserv1"),
("nomserv2"),
("nomserv3"),
("nomserv4"),
("nomserv5"),
("nomserv6"),
("nomserv7"),
("nomserv8"),
("nomserv9");

INSERT INTO Departement VALUES(nom_dpt)
("nomdpt0"),
("nomdpt1"),
("nomdpt2"),
("nomdpt3"),
("nomdpt4"),
("nomdpt5"),
("nomdpt6"),
("nomdpt7"),
("nomdpt8"),
("nomdpt9");

INSERT INTO Laboratoire VALUES(libelle_lab)
("liblab0"),
("liblab1"),
("liblab2"),
("liblab3"),
("liblab4"),
("liblab5"),
("liblab6"),
("liblab7"),
("liblab8"),
("liblab9");

INSERT INTO Patient VALUES(nom_pat,prenom_pat,ad_patient)
("nompat1","prenompat1","adpat0000"),
("nompat1","prenompat1","adpat0000"),
("nompat1","prenompat1","adpat0000"),
("nompat1","prenompat1","adpat0000"),
("nompat1","prenompat1","adpat0000"),
("nompat1","prenompat1","adpat0000"),
("nompat1","prenompat1","adpat0000"),
("nompat1","prenompat1","adpat0000"),
(,"nompat1","prenompat1","adpat0000"),
("nompat1","prenompat1","adpat0000");

INSERT INTO Analyse VALUES(date_analyse)
('2010-01-01 12:10:20:85'),
('2010-01-01 12:10:20:85'),
('2010-01-01 12:10:20:85'),
('2010-01-01 12:10:20:85'),
('2010-01-01 12:10:20:85'),
('2010-01-01 12:10:20:85'),
('2010-01-01 12:10:20:85'),
('2010-01-01 12:10:20:85'),
('2010-01-01 12:10:20:85'),
('2010-01-01 12:10:20:85');


INSERT INTO Type_analyse VALUES(libelle_type,montant_type)
(selle,15000),
(selle,15000),
(selle,15000),
(selle,15000),
(selle,15000),
(selle,15000),
(selle,15000),
(selle,15000),
(selle,15000),
(selle,15000),
(selle,15000);


INSERT INTO Hospitaliser VALUES(date_hospitaliser)
(2012-02-10 12:12:12:12),
(2012-02-10 12:12:12:12),
(2012-02-10 12:12:12:12),
(2012-02-10 12:12:12:12),
(2012-02-10 12:12:12:12),
(2012-02-10 12:12:12:12),
(2012-02-10 12:12:12:12),
(2012-02-10 12:12:12:12),
(2012-02-10 12:12:12:12),
(2012-02-10 12:12:12:12);


INSERT INTO Consulter VALUES (prescription,montant,date_consult) 
("prescription1",5000,2012-01-20 14:45:00:00),
("prescription1",5000,2012-01-20 14:45:00:00),
("prescription1",5000,2012-01-20 14:45:00:00),
("prescription1",5000,2012-01-20 14:45:00:00),
("prescription1",5000,2012-01-20 14:45:00:00),
("prescription1",5000,2012-01-20 14:45:00:00),
("prescription1",5000,2012-01-20 14:45:00:00),
("prescription1",5000,2012-01-20 14:45:00:00),
("prescription1",5000,2012-01-20 14:45:00:00),
("prescription1",5000,2012-01-20 14:45:00:00);