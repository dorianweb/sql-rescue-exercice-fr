prerequis: 
 docker 
 docker compose
 git

mise en place :

lancer la creation de lenvironement du projet : 

docker compose up --d

docker compose exec  bin/bash



Bienvenu sur l'exercice sql :

l'objectif seras dapprendre les bases du langage afin de savoir utiliser les elements suivants  :

les requetes de lectures 
CREATE
FROM
WHERE
GROUP BY
Having

les requetes d'insertion  INSERT ... INTO ... VALUES


votre mission  :


1) lister les nos sauveteur en affichant avec des nom/prenom distinct :
    nom , prenom, bodycount
2) afficher uniquement les sauveteur puceau  (soit 0 soit null)
3) afficher les sauvetages de la maniere suivante :
   nom_prenom_sauveteur,nom_chat, couleur, date
4) afficher le nombre totale de sauvetage sur l'année 2024 pour les chats de couleur suivante (noir,roux)
5) afin dattribuer les primes semi annuel, lagence a besoin de savoir le nombre total de sauvetage effectuer pour chaque sauveteur sur une periode de 6 mois a MARSEILLE, sorter lui le jeu de données.
5) elle decide finalement de n'offrir une prime qu'au 10 sauveteur avec le plus sauvetage, copier et modifier la requete precedente 
5) elle decide finalement de n'offrir une prime qu'au sauveteur avec un minimum de 4 sauvetage, copier et modifier la requete precedente   
6) quels est la couleur de chat la plus sauver depuis la creation de l'agence
7) le sauveteur X a decider de quitter l'agence supprimer le de la base de données
8) le chat Y a pris du poids ces dernier temps .... rajouter lui 2 kilo 
9) enregistrer un sauvetage et un chat