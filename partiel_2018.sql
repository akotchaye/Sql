create database partiel_2018;


create table Disque(
CodeOuvD  integer identity(1000,1)not NULL,
Titre     varchar(30),
Style     varchar(30),
Pays       varchar(30),
Annee       datetime,
Producteur  varchar(30),
primary key (CodeOuvD));






create table  Exemplaire_Disque(
    NumExD integer identity(1000,1) not NULL,
    CodeOuvD integer not NULL,
    DateAchat datetime,
    Etat varchar(30),
    primary key(NumExD));


   
    
    
create table  Livre(
  CodeOuvL integer identity (1000,1) not NULL;
  Titre varchar(30) ,
  Editeur varchar(30),
  Collections varchar(30),
  primary key(CodeOuvL));



  create table Exemplaire_Livre (
      NumExL integer identity(1000,1) not NULL,
      CodeOuvL integer not null,
      DateAchat datetime,
      Etat varchar(30),
      primary key(NumExL));

        


     

      
  create table  Auteurs(
    CodeOuv integer identity(1000,1)not NULL,
    identite varchar(30),
    primary key(CodeOuv));

   

create table Abonne(
    NumAbo integer identity (1000,1) not NULL,
    Nom  varchar(30),
    Prenom  varchar(30),
    Rue  varchar(30),
    Ville varchar(30),
    CodeP varchar(30),
    Telephone numeric(8),
    primary key (NumAbo));

    

create table Pret(
NumAbo integer not NULL,
CodeOuv integer not NULL,
NumExD integer  not NULL,
NumExL integer  not NULL,
DisqueOuLivre varchar(30),
DatePret datetime);



 
 
        
create table personnel(
    NumEmp integer identity(1000,1) not null,
    Nom varchar(30),
    Prenom varchar(30),
    Adresse varchar(30),
    Fonction varchar(30),
    Salaire numeric(10),
    primary key (NumEmp));


   

---insertion des elements dans les tables

insert into  Disque values('mawuyrasegne','classic','togo','1995-10-01 12:54:24:85','EROYLLES');
  insert into Disque values('mawuyrasegne','classic','togo','1995-10-01 12:54:24:85','booba');
insert into  Disque values('decalé','coupe-decale','côte d''ivoire','1997-11-06 12:44:21:85','koffi');
insert into  Disque values('la paix','zouglou','benin','1997-05-12 12:00:24:15','renaud');
 

 
 insert into  Exemplaire_Disque values(1002,'1995-10-01 12:54:24:35','bon');
    insert into  Exemplaire_Disque values(1024,'1458-10-10 12:50:14:15','delabre');
    insert into  Exemplaire_Disque values(1022'1958-04-01 16:59:29:45','bon');
    insert into Exemplaire_Disque values(1458'1195-12-11 22:57:14:15','mauvais');




  insert into Livre values('la paix','kodjo','');
   insert into Livre values('sentinelle','EROYLLES','roman');
    insert into  Livre values('fuite','ama','pampa');
     insert into  Livre values('de qui de quoi','EROYLLES','roman');

 insert into Exemplaire_Livre values(1004,'1995-02-12','delabre');
       insert into  Exemplaire_Livre values(1025,'1995-10-15','bon');
        insert into  Exemplaire_Livre values(1056,'1996-05-12','mauvais');
   

         insert into Auteurs vlues('chanteur');
     insert into Auteurs vlues('ecrivain');
      insert into Auteurs vlues('musicien');
       insert into  Auteurs vlues('comedien');


       insert into  Abonne values('koffi','zack','kozah','lome','10lome21',92426845);
     insert into  Abonne values('ronaldo','hodre','kodhar','lome','10lome481',99624145);
      insert into  Abonne values('boris-jean','jean','elephant','atakpame','10loka54',92410245);


 insert into  pret values(1000,1024,4588,1010,'disque','2001-12-12 12:14:25:36');
insert into  pret values(124,4875,4563,1254,'livre','2051-11-10 10:16:25:16');
insert into  pret values(1789,4545,5125,1022,'disque','2001-12-12 12:14:25:36');
insert into pret values(5478,526,124,3215,'livre','2020-10-11 12:10:1:46');
insert into  pret values(1458,2458,1236,1456,'livre','2501-02-12 12:00:25:16');



 insert into   Personnel values('koffi','afi','19rue des flamboyants','caissier',18000);
     insert into  Personnel values('abalo','lorent','19rue des flamboyants','caissier',2500);
      insert into   Personnel values('koffi','abi','flamboyants','garagiste',1000000);
       insert into   Personnel values('mokoga','assani','goudron','bibliothequaire',580000);
        insert into  Personnel values('koffi','afi','19rue des flamboyants','garagiste',3500000);
         insert into  Personnel values('molomolo','eric','adidogome','technicien de surface',450);





    
ALTER TABLE Exemplaire_Disque add  foreign key(CodeOuvD)references Disque(CodeOuvD);
 ALTER TABLE Exemplaire_Livre add  foreign key(CodeOuvL)references Livre (CodeOuvL);
 ALTER TABLE pret add foreign key(NumAbo) references Abonne(NumAbo);
 ALTER TABLE pret add foreign key(CodeOuv) references Auteurs(CodeOuv);
 ALTER TABLE pret add foreign key(NumExD) references Exemplaire_Disque(NumExD);
 ALTER TABLE pret add foreign key(NumExL) references Exemplaire_Livre(NumExL));



--requêtes sur les tables

0---
select *
from  Disque,Exemplaire_Disque, Livre,Exemplaire_Livre,Auteurs,Abonne,Pret,personnel;
1--
select *
from LIVRE;

2--
select titre
from LIVRE
where Editeur='EROYLLES'
and Collections='roman';
3--
select distinct Titre
from Disque
intersect
select distinct titre
from Livre;
5--
select distinct Style
from Disque;
6--
select nom,salaire
from personnel
where(salaire*12)>500000
order by 1 asc,2 desc;
10--
select *
from Abonne
where nom like '%ALDO%'
and ville='lome';
9--
select Editeur
from Livre
where collections ='';
8--
select CodeOuvD
from Exemplaire_disque
where NumExD >=max(NumExD) ;
                    
4--
select identite 
from Disque,livre,auteurs
where CodeOuv=CodeOuvL
and CodeOuv=codeOuvD;



