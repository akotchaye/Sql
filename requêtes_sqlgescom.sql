--1 lister tous les employés de la societé
select * 
from EMPLOYE;

--2 lister tous les categories de produits
select *
 from CATEGORIES;

 --3 afficher le nom, prenom ,date de naissance de tous les employes
 select NOM,PRENOM,DATE_NAISSANCE
 from EMPLOYE;

 --4 afficher la liste des villes des clients,chaque ville doit etre affiché une seule fois
 select distinct FONCTION 
 from EMPLOYE;

 --5 afficher la liste des villes des clients ,chaque ville doit etre affiché une seule fois
 select distinct VILLE
 from CLIENTS;

 --6 lister tous les les clients dont le pays est TOGO
 select *
 from CLIENTS 
 where PAYS='TOGO';

 --7 lister tous les employées qui ne sont pas des representants
 select *
 from  EMPLOYES
 where FONCTION <>'Representant(e)';

 --8 afficher le nom de la societe ,la ville, le pays et le fax de tous les clients  qui ont un nom de fax renseigné
select NOM, VILLE, PAYS ,FAX 
from CLIENTS
where FAX <>'';

--9 afficher la liste de tous les employés embauchés en 1999
select * 
from EMPLOYES
where year(DATE_EMBAUCHE)=1999;
-- where DATE_EMBAUCHE>='01/01/1999' AND DATE_EMBAUCHE<='31/12/1999'

--10 afficher le nom,prenom,fonction et salaire des employés qui ont un salaire compris entre 250000 et 350000
select NOM,PRENOM,FONCTION,SALAIRE
from EMPLOYES
where SALAIRE>=250000 and SALAIRE<=350000;

--11 afficher le nom de la societe,l'adresse ,le telephone et la ville des clients qui habitent a lome, kpalime, sokode,kara
select SOCIETE,ADRESSE,TELEPHONE,VILLE
from CLIENTS 
where VILLE='lome'or VILLE='kpalime'or VILLE='sokode'or VILLE='kara';
--a tester: where ville in(lome,kpalime,sokode,kara;)

--12 afficher le nom,prenom,fonction et salaire des representants qui sont en activité depuis 02/01/94
select NOM,PRENOM,FONCTION,SALAIRE
from EMPLOYES
where FONCTION='representant(e)s' and DATE_EMBAUCHE >= 02/01/94;