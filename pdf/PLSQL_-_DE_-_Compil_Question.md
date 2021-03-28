# Compil Questions

### Dans Oracle, la taille des blocks Oracle est égale à la taille des blocks du système d’exploitation. On recommande :

a. Les blocks Système et les blocks Oracle sont toujours de même taille
b. ***Les blocks Système sont de taille inférieure***
c. Les blocks Oracle sont de taille inférieure
d. Aucune importance sur le choix de la taille des blocks Oracle


### Indiquer les commandes SQL modifiant la structure de la table MaTable :

a. UPDATE TABLE MaTable
b. ***ALTER TABLE MaTable***
c. UPDATE MaTable
d. ALTER MaTable


### Dans votre schéma applicatif, vous avez une table qui contient des informations sur des pièces qui sont utilisées pour fabriquer votre produit. Lors de la création de la table PIECES, quelle contrainte vous devez mettre en place ?

a. Placer une contrainte unique sur la colonne Numéro de la pièce de la table PIECES.
b. Placer une contrainte NOT NULL sur la colonne Numéro de la pièce de la table PIECES.
c. ***Placer une contrainte de clé primaire sur la colonne Numéro de la pièce de la table PIECES.***
d. Placer une contrainte de clé étrangère sur le champ Numéro de la pièce de la table PIECES.


### Indiquer les commandes faisant partie du Langage de contrôle de données (DCL) de SQL :

a. GRAND
b. ***ROLLBACK***
c. RIVOKE
d. ***COMMIT***


###  La validation de transactions est implicite sous Oracle :

a. Lors de la déconnexion suite à la fermeture d’une session Oracle
b. A chaque opération si AUTOCOMMIT vaut OFF
c. ***A chaque opération si AUTOCOMMIT vaut ON***
d. Lors de la déconnexion suite à une panne


### L’annulation d’une transaction est implicite sous Oracle :

a. ***Lors de la déconnexion suite à la fermeture d’une session Oracle***
b. A chaque opération si AUTOCOMMIT vaut OFF
c. A chaque opération si AUTOCOMMIT vaut ON
d. ***Lors de la déconnexion suite à une panne***


### La validation de transaction est explicite sous Oracle :

a. Par la commande SET COMMITED
b. Par la commande ALTER AUTOCOMMIT ON
c. ***Par la commande COMMIT***
d. Par la commande ROLLBACK


### L’annulation de transaction est explicite sous Oracle :

a. Par la commande SET COMMITED
b. Par la commande ALTER AUTOCOMMIT OFF
c. Par la commande COMMIT
d. ***Par la commande ROLLBACK***


### Vous avez un problème à caractère urgent sur une base de données. Vous avez peu de temps pour aviser  les utilisateurs, et vous devez arrêter la base de données Oracle aussi rapidement que possible. Quelle est la bonne formule ?

a. SHUTDOWN ABORT
b. ***SHUTDOWN TRANSACTIONAL***
c. IMMEDIATE
d. Aucunes des commandes notées ci-dessus


### La commande SQL listant les tables dont l’utilisateur est propriétaire :

a. SELECT TABLENAME FROM USER_TABLE ;
b. ***SELECT TABLE_NAME FROM USER_TABLES ;***
c. SELECT TABLE_NAME FROM ALL_TABLES ;
d. SELECT * FROM MY_TABLES ;


### La commande SQL listant les tables auxquelles l’utilisateur peut accéder :

a. SELECT TABLENAME FROM USER_TABLE ;
b. SELECT TABLE_NAME FROM USER_TABLES ;
c. ***SELECT TABLE_NAME FROM ALL_TABLES ;***
d. SELECT * FROM DBA_TABLES ;


### Quelles sont les affirmations concernant les types de données dans Oracle 10g/11g?

a. Uniquement une colonne de type LONG au maximum par table.
b. Les colonnes de type TIMESTAMP enregistrent uniquement des valeurs de
temps avec des fractions de secondes.
c. Les colonnes de type BLOB sont utilisées pour enregistrer des données
binaires des fichiers du système d’exploitation.
d. ***La largeur minimale que l’on peut spécifier dans une colonne de type
VARCHAR2 est 1.***


### Dans ce qui suit, indiquez les éléments ne faisant pas partie des vues du dictionnaire de données d’Oracle :

a. ***USER_VUES***
b. USER_CONSTRAINTS
c. ***USER_TABLE*** &rarr; Il y a un "s"
d. DICT


### Indiquez dans la liste suivante les objets manipulables par Oracle :

a. ***INDEX***
b. ***VIEW***
c. ***PROCEDURE***
d. ***TRIGGER***


### Indiquez dans ce qui suit les commandes permettant de définir une clé primaire dans la table latable

a. CREATE CONSTRAINT PK_Table PRIMARY KEY..
b. ***ALTER TABLE latable ADD CONSTRAINT..***
c. ALTER TABLE latable UPDATE CONSTRAINT..
d. ALTER TABLE latable DROP CONSTRAINT..


### Indiquez dans ce qui suit les commandes permettant d’ajouter une colonne à la table latable :

a. ***ALTER TABLE latable ADD lacolonne..***
b. CREATE TABLE latable ADD lacolonne..
c. ALTER TABLE latable INSERT lacolonne..
d. ADD COLUMN lacolonne TO latable..


### Indiquer les commandes qui permettent de créer la vue V1 :

a. INSERT VIEW V1..
b. INSERT INTO VIEW V1..
c. ***CREATE VIEW V1..***
d. REMPLACE VIEW V1..


### Est-il possible de savoir le nombre de lignes que contient une table qu’on a déjà créé ?

a. OUI à tout moment
b. NON jamais
c. OUI sous condition qu’elle ne soit pas vide
d. NON tant qu’elle est vide

*-> aucune bonne réponse*

### Parmi les propriétés suivantes lesquelles font partie des propriétés ACID des bases de données :

a. ***Durabilité***
b. ***Atomicité***
c. ***Concurrence***
d. ***Isolation***


### Différences entre vues logiques et vues matérialisées :

a. Aucune différence
b. Vues logiques créées par CREATE LOGICAL VIEW..
***c. Vues matérialisées créées par CREATE CONCRETE VIEW..***
d. Les vues logiques sont stockées uniquement sur le poste client


### Les commandes GRANT et REVOKE s’appliquent sur :

a. Les tables uniquement
b. Les vues uniquement
c. ***Les vues et les tables***
d. Les vues matérialisées et les tables uniquement

### Evaluer la requête suivante :

```sql
SELECT INTERVAL '300' MONTH,
INTERVAL '54-2' YEAR TO MONTH,
INTERVAL '11:12:10.1234567' HOUR TO SECOND
FROM dual;
```

*Quel est le résultat en sortie de cette requête ?*

a. ***+25-00 , +54-02, +00 11:12:10.123457***
b. +00-300, +54-02, +00 11:12:10.123457
c. +25-00 , +00-650, +00 11:12:10.123457
d. +00-300 , +00-650, +00 11:12:10.123457


### Lesquels parmi les modes suivants qui font partie des modes de verrouillage de données sous Oracle :

e. ***RS***
f. TX
g. ***SRX***
h. STX


### Lequel des énoncés suivants est un exemple de variable d'environnement Oracle ?

a. ORACLE_DIR
b. ***$ORACLE_HOME***
c. $ORA_HOME
d. ORACLE_HM$


### PL/SQL comporte :

a. ***La gestion de blocs de programmes***
b. La gestion de classes objets
c. ***La gestion des exceptions***
d. ***La gestion de fonctions***


### Toute procédure PL/SQL doit se terminer par :

a. ;
b. ***/***
c. \
d. .


###  Lesquelles des commandes ci-dessous suppriment l'utilisateur avec tous ses objets de schéma de la base de données ?

a. Drop user brent;
b. Delete from dba_users where username='BRENT';
c. Alter system remove user brent cascade;
d. ***Drop user brent cascade;****


### Après modification d'une table, que devez-vous effectuer pour rendre cette modification permanente ?

a. ***COMMIT***
b. SAVEPOINT
c. Rien après l'instruction Update, le changement est permanent
d. SAVE WORK


### Lorsqu'une table est mise à jour, où est stockée l'image avant l'information (qui peut être utilisé pou annuler les modifications) ?

a. Temporary segment
b. Redo log buffer
c. Undo buffer
d. Undo segment

*-> aucune bonne réponse*

### Lesquelles des commandes suivantes ne commenceront pas implicitement une transaction ?

a. UPDATE
b. DELETE
c. SELECT FOR UPDATE
d. ***Aucune, toutes les commandes sont des transactions implicites***


### Vous effectuez un niveau différentiel supplémentaire 1 des sauvegardes de votre base de données sur chaque journée de travail et le niveau 0 de sauvegarde le dimanche, sur la bande. Quels sont les deux affirmations vraies à propos des sauvegardes dif :

a. ***La sauvegarde effectuée le dimanche contient tous les blocs qui ont
déjà été utilisés dans la base de données***
b. La sauvegarde effectuée le dimanche contient tous les blocs qui ont
changé depuis la dernière sauvegarde de niveau 1
c. ***La sauvegarde effectuée chaque journée de travail contient tous les
blocs qui ont changé depuis le dernier niveau 0 de sauvegarde***
d. La sauvegarde effectuée le lundi contient tous les blocs qui ont chan
depuis le niveau 0 de sauvegarde, et tous les autres jours ouvrables
contient tous les blocs qui ont changé depuis la sauvegarde de niveau


### Vous avez deux tables avec l'intégrité référentielle appliquée entre elles. Vous devez insérer des donnée à la table enfant d'abord parce que cela va être une opération longue et les données de la table parent seront disponibles par la suite, qui peut être :
a. Définir la contrainte différée avant de commencer l'opération
b. ***Alter la contrainte à l'état NOVALIDATE avant de commencer l'opération***
c. Activer le mode peut être repris pour la session avant de commencer
l'opération
d. Définir le paramètre COMMIT_WAIT à FORCE_WAIT de la session avant de
commencer l'opération


### Lesquels des paramètres d'export Data Pump permettent de visualiser les définitions de tables, mais le contenu des tables dont Sacagawea est propriétaire ?

a. owner= sacagawea rows=no
b. ***schemas= sacagawea content=metadata_only***
c. owner= sacagawea content=metadata_only
d. tablespaces= Sacagawea data=no


### Quels sont les types de segments qui sont protégés par Redo :

a. Segments d’index
b. Segments de tables
c. Segments temporaires
d. Segments Undo


### La représentation logique des bases de données Orale comporte :

a. ***TABLESPACE***
b. FILE
c. ***SEGMENT***
d. ***EXTENT***


### Lesquels parmi les objets suivants qui peuvent être packagés :

a. ***Déclencheur***
b. ***Procédure***
c. ***Fonction***
d. Block PL/SQL Anonyme


### Quels sont les outils d’administration qui ne sont pas installés par défaut avec Oracle :

a. SQL*Plus
b. SQL Developer
c. SQL*Loader
d. Oracle Enterprise Manager


### Vous vous connectez à la base de données en utilisant la commande sqlplus :
` M1Asyria/Efrei@x.y:1521/z`

*A quelle base de données êtes-vous connectés ?*

a. M1Asyria
b. Efrei
c. x.y
d. ***z***


### Deux utilisateurs consultent la même table :

a. OUI à tout moment ils voient le même contenu
b. NON ils ne voient jamais le même contenu
c. ***Possible qu'ils voient le même contenu***
d. ***Possible qu'ils ne voient pas le même contenu***


### Lesquels, parmi les modes suivants, font partie des modes de verrouillage de données sous Oracle :

a. ***X***
b. TX
c. RSX
d. RTX


### PL/SQL comporte :

a. La gestion de la visibilité des méthodes et attributs
b. La gestion de classes objets
c. ***La gestion des exceptions***
d. ***La gestion de procédures stockées***


### Lesquelles des commandes suivantes ne commenceront pas implicitement une transaction ?

a. UPDATE
b. DELETE
c. ***SELECT***
d. Aucune, toutes les commandes sont des transactions implicites


### On considère la table R(A, B, C) avec le contenu suivant. En se fondant sur ce contenu, quels ensembles d’attributs peuvent constituer la clé primaire ?

|R|A|B|C|
|-|-|-|-|
| |1|1|0|
| |0|0|-1|
| |3|2|0|
| |1|3|5|

a. (A)
b. ***(B)***
c. (C)
d. ***(A, C)***

### Indiquez dans ce qui suit les commandes permettant de définir une clé primaire dans la table latable:

a. ***CREATE TABLE latable (PK_Table PRIMARY KEY..***
b. ***ALTER TABLE latable ADD CONSTRAINT..***
c. CREATE TABLE latable (lacolonne PRIMARY KEY ..
d. ALTER TABLE latable MODIFY CONSTRAINT..


### Indiquez dans ce qui suit les commandes permettant d’ajouter une colonne à la table latable :

a. ***ALTER TABLE latable ADD lacolonne..***
b. CREATE TABLE latable ADD lacolonne..
c. ALTER TABLE latable INSERT lacolonne..
d. CREATE TABLE latable (lacolonne ..


### Votre organisation a acheté une application qui utilise une base de données Oracle. Votre travail consiste à installer et à configurer cette base de données. Laquelle des affirmations suivantes devez-vous effectuer en premier ?

a. Créer des points de montage et des répertoires en utilisant le modèle
de l'OFA.
b. Montez le CD et démarrer Oracle Universal Installer.
c. ***Examiner les guides d'installation et les notes pour vous familiariser
avec le processus d'installation.***
d. Travailler avec l'administrateur système Unix pour configurer les
paramètres du noyau.


### Vous vous connectez à la base de données en utilisant la commande sqlplus :

`scott/tiger@abc.com:1522/orcl`

*A quelle base de données êtes-vous connectés ?*

a. abc.com
b. ***orcl***
c. scott
d. Aucune des réponses n'est valable


### Laquelle des commandes suivantes permet de modifier le mot de passe à « gironde » de l’utilisateur Simon ?

a. Alter user simon password gironde
b. Update user simon set password=gironde
b. ***Alter user simon identified by gironde***
c. Set password=gironde for simon


### Lequel des énoncés suivants n'est pas valide en mode Data Pump export ?

a. ***JAVA***
b. SCHEMA
c. TABLE
d. TABLESPACE


### Quel privilège permet de placer la base de données en mode NOARCHIVELOG?

a. ***sysdba***
b. root
c. dba
d. operator

### On crée une vue à partir de la table EMPLOYEES du schéma HR

```sql
CREATE OR REPLACE VIEW V_EMP as
SELECT department_id, sum(salary) somme, count(*) nbre
FROM employees
GROUP BY department_id;
```
Ensuite on exécute l'instruction suivante :
```sql
UPDATE V_EMP
SET SOMME=20000
WHERE DEPARTMENT_ID=20;
```
Parmi les énoncés suivants, quelle est la bonne réponse ?

a. On ne peut pas modifier la colonne SOMME à partir de la vue V_EMP
b. La colonne SOMME de la table EMPLOYEES sera modifiée par 20000 pou
le département 20.
c. ***La colonne SALARY de la table EMPLOYEES sera modifiée par 20000
pour le département 20.***
d. ***La colonne SOMME de la vue sera modifiée par 20000 pour le
département 20.***


### A quoi ne sert pas une vue :

a. ***à assurer l’indépendance logique***
b. à assurer la tolérance aux pannes
c. à simplifier les requêtes complexes
d. à assurer la confidentialité des données


### Comment permettre aux utilisateurs de se connecter sans leur demander de s'authentifier ? (Choisissez la meilleure réponse)

a. Grant CREATE SESSION to PUBLIC
b. Créer un utilisateur comme celui-ci, sans mot de passe : CREATE
USER ANON IDENTIFIED BY '';
c. Créer un profil qui désactive l'authentification par mot de passe
et l'attribuer aux utilisateurs
d. ***Vous ne pouvez pas faire cela car tous les utilisateurs doivent
être authentifiés***


### Vous émettez ces commandes:

```sql
GRANT SELECT ON hr.regions TO John;  -- 1
GRANT ALL ON hr.regions TO John;     -- 2
GRANT dba TO John;                   -- 3
GRANT SELECT ON hr.regions TO public;-- 4
```

*Quelles commandes pourraient être révoquées pour empêcher JOHN de voir le
contenu de HR.REGIONS ?*

a. ***1, 2 and 3***
b. 1, 3, and 4
c. 2, 3, and 4
d. 3 and 4


### Étudiez ce script (les numéros de ligne ont été ajoutés)

```sql
CREATE ROLE hr_role IDENTIFIED BY pass;  -- 1
GRANT CREATE table TO hr_role;           -- 2
GRANT SELECT table TO hr_role; 			 -- 3
GRANT CONNECT TO hr_role;				 -- 4
```

*Quelle ligne produira une erreur lors de son exécution ?*

a. Line 1, parce que seuls les utilisateurs, pas les rôles, ont des
mots de passe
b. Line 2, car seuls les utilisateurs, et non les rôles, peuvent créer
et posséder des tables***
c. Line 3, parce que SELECT TABLE n'est pas un privilège
d. ***Line 4, car un rôle ne peut pas avoir un privilège système en plus
des privilèges de table***


### Laquelle de ces commandes mettra fin à une transaction ? (Choisissez toutes les bonnes réponses)

a. ***CREATE***
b. ***GRANT***
c. SAVEPOINT
d. ***SET AUTOCOMMIT ON***


### Un programme est structuré en bloc d’instructions qui peuvent être de type :   (Choisissez la meilleure réponse)

a. ***Functions***
b. ***Procedures***
c. Triggers
d. Rôles


### Laquelle de ces instructions n'est pas valide dans une procédure PL/SQL ?

a. CASE
b. IF
c. LOOP
d. ***RETURN***


### Si un programmeur ne demande pas un type de verrou lors de la mise à jour de plusieurs lignes d'une même table, quels verrous va-t-il avoir ? (Choisissez la meilleure réponse)

a. Pas de verrouillage du tout - le niveau de verrouillage par défaut
est NONE, afin de maximiser la simultanéité
b. Un verrou exclusif sur la table, car c'est la méthode la plus
rapide lorsque plusieurs lignes sont en cours de mise à jour
c. Verrous partagés sur la table et sur chaque ligne, car c'est le
plus sûr (mais pas le plus rapide) méthode
d. Un verrou exclusif sur chaque ligne et un verrou partagé sur la
table, car cela maximise la concurrence d'accès en toute sécurité


### Un administrateur de base de données souhaite développer un script de contrôle vers la base de données avec la programmation événementielle. De quel objet s'agit-il alors ?

a. Trigger
b. Vue
c. Verrous
d. Procédure stockée


### Vous vous connectez à la base de données en utilisant l’URL suivante : 
`M1APP/LSI@oracle:1521/efrei`. A quelle base de données êtesvous connectés ?

a. M1APP
b. LSI
c. oracle
d. ***efrei***


### Lesquels dans cette liste ne sont pas des types de segments Oracle ?

a. SEGMENTS D’INDEX
b. ***SEGMENTS DE TABLES***
c. ***SEGMENTS DE VUES***
d. SEGMENTS D’AMORCAGE
e. SEGMENTS D’AMORCAGE