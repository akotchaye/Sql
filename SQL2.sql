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

create table Service(
Id_serv integer identity (1000,1) not null,
Id_med integer not null ,
Id_dpt integer not null,
nom_serv nvarchar(15),
primary key(Id_service),
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
Id_dpt nvarchar(15),
libelle_lab nvarchar(30),
primary key(Id_lab),
);
create table Patient(
Id_pat integer identity (1000,1) not null,
Id_med integer not null ,
nom_pat nvarchar(30),
prenom_pat nvarchar(15),
ad_patient nvarchar(50)
primary key(Id_patient),
);
create table Analyse(
Id_analyse integer identity (1000,1) not null,
Id_pat integer not null ,
Id_med integer not null ,
Id_type integer not null,
date_analyse date time,
primary key(Id_analyse),
);
create table Type_analyse(
Id_type integer identity (1000,1) not null,
Id_lab integer not null ,
libelle_type  nvarchar(50),
montant_type numeric(15),
primary key(Id_type),
);
create table Hospitaliser(
Id_serv integer not null,
Id_pat integer not null ,
date_hospitaliser date time,
);
create table Consulter(
Id_pat integer not null,
Id_med integer not null ,
prescription varchar(100),
montant numeric(15),
date_consult date time,
);










