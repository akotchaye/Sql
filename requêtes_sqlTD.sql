1--nom et numero des avions localisés à Nice ou dont la capacité est inferieur à 350 passagers
select NUMAV,NOMAV
from AVION 
where LOC='Nice' or CAPACITE<350;
2--liste des vols au depart de Nice allant a paris apres 18h
select*
from VOL
where VILLE_DEP='Nice' and H_DEP>'18:00:00:00';


3--quels sont les numeros des vols effectués par un pilote Nicois au depart ou a l'arrivee de nice avec un avion localisée a paris
select NUMVOL
from VOL
where NUMPIL=(select NUMPIL 
              from PILOTE
               where ADR='Nice' )
and NUMAV=(select NUMAV 
           from AVION 
           where LOC='Paris' )
and VILLE_DEP='Nice'  
or  VILLE_ARR='Nice'; 

 ;
4--quels sont les noms et numeros des pilotes habitant dans la meme ville que le pilote dupont
select NUMPIL, NOMPIL 
from PILOTE 
where ADR=(select ADR
           from PILOTE
           where NOMPIL='Dupont');
5--quels sont les numeros et noms des pilotes domiciliés dans la meme ville que le pilote Dupont et le salaire est superieur a celui de dupont
select NUMPIL, NOMPIL 
from PILOTE 
where ADR=(select ADR
           from PILOTE
           where NOMPIL='Dupont')
and SAL>(select SAL
         from PILOTE
          where NOMPIL='Dupont');         