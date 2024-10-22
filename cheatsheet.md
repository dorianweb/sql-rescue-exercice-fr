Salut jeune tricheur :

pour commencer regarde ce petit tuto il texpliquera la base :

https://www.youtube.com/watch?v=dQw4w9WgXcQ


Bon mtn les choses serieuse  voici un guide qui repertorie tout ce que tu va apprendre en fesant lexercie ^^ : 

le SELECT permet de lister les champs que l'on souhaite voir apparaitre en retour.

3 option s'offre alors a nous  :

- lister les colonnes de la table desire :  select <column_A>,<column_B>,....,<column_N> 

recuperons les utilisateur et affichons leur identifiant, prenom et leur bodycount 
SELECT u.id, u.firstname, u.body_count
FROM hero as u


- utiliser une fonction d'aggregation  : COUNT,SUM ,AVG, MIN, MAX 

SELECT SUM(u.bodycount)
From hero as u

- combiner les  2, cepandant cela demande lajout d'une clause group by sur l'ensemble de la selection qui ne fait pas parti de la fonction d'aggregation

SELECT count(u.*)
FROM hero as u



les utilities du SELECT : 


DISTINCT: permet de prevenir la recuperation de la meme information  2 fois ( recuperer un seul jean claude et ceux malgres que on en a 10 en base) 
SELECT DISTINCT CONCAT(u.lastname," ",u.firstname) as full_name
FROM hero as u

as: permet de renommer un champs, souvent utiliser pour differencier les colonnes de meme nom de 2 tables differentes
case ... when ... end : sujet d'un autre cours permet de cree des champs daffichage conditionnel, usage avec un AS recommander  




La clause FROM permet de definir les tables et jointure sur lesquels les condition WHERE et la clause SELECT seront appliquable, on peut demander les données de deux facon :

- de maniere simple avec des jointures : 

SELECT u.firstname, c.name, r.date , r.place
FROM hero as u 
INNER JOIN  rescue as r on u.id = r.hero_id 
INNER JOIN cat as c on c.id = r.cat_id  


une jointure est une condition qui permet d'associer le contenu de 2 table grace a des données communes, dans lexemple precedents on recupere le nom des chat et sauveteur liée au sauvetage.

il existe different type de jointure je vous invite a regarder l'image dans le dossier asset afin de voir les differentes possibilitée ,
les inner join font la liaison a partir de ce qui est commun au deux table 


- de maniere complexe en utilisant une sous requete:
 cf: se seras surement l'objet d'un cours plus avancer ou plus bas ici ou une autre branche



la clause WERE   : 
permet de trier lensemble des lignes afin  filtrer les données a l'unité ou d'alleger le contenu dune requete, elle se compose de beaucoup doption voici une liste non exhaustive:


SELECT h.* 
FROM hero as h INNER JOIN rescue as r on  

1) equal or null
WHERE h.bodycount = 0 or h.bodycount is null  

2) like 
hero.name like "mich*" or hero.name in("a","b","c") 



 les conditions sur la meme colonne sont en general concurent et doivent etre liée avec un  OR:
hero.name like "mich*" OR hero.name in("a","b","c") 

les conditions sur 2 colonnes differentes sont liée avec un AND:
hero.name like "mich*" and hero.birthdate <= SUBDATE(NOW, INTERVAL 18 YEAR)




la clause GROUP BY  sert a grouper les données par X,Y colonne :

SELECT count(u.*) , 
FROM hero as u





























