-- Creation des tables
-- Mettez les contraintes de cles primaires et contraintes de domaines

CREATE TABLE Etudiant (
  NumEtu NUMBER(8),
  Nom VARCHAR2(20),
  Prenom VARCHAR2(20),
  DateNais DATE,
  Rue VARCHAR2(50),
  CP CHAR(5),
  Ville VARCHAR2(25)
);

CREATE TABLE Matiere (
  CodeMat CHAR(3),
  Libelle VARCHAR2(20),
  Coef NUMBER(3,2)
);

CREATE TABLE Epreuve (
  NumEpreuve NUMBER(10),
  DateEpreuve,
  Lieu VARCHAR2(20),
  CodeMat CHAR(3)
);

CREATE TABLE Notation (
  NumEtu NUMBER(8),
  NumEpreuve NUMBER(10),
  Note NUMBER(4,2)
);

-- Remplissage des tables

INSERT INTO Etudiant VALUES (110,'Dupont','Albert','01-06-1990','RuedeCrimée','69001','Lyon');
INSERT INTO Etudiant VALUES (222,'West','James','03-09-1993','Studio',NULL,'Hollywood');
INSERT INTO Etudiant VALUES (300,'Martin','Marie','05-06-1998','RuedesAcacias','69130','Ecully');
INSERT INTO Etudiant VALUES (421,'Durand','Gaston','15-11-1990','RuedelaMeuse','69008','Lyon');
INSERT INTO Etudiant VALUES (575,'Titgoutte','Justine','28-02-1995','CheminduChâteau','69630','Chaponost');
INSERT INTO Etudiant VALUES (667,'Dupond','Noémie','18-09-1997','RuedeDôle','69007','Lyon');
INSERT INTO Etudiant VALUES (999,'Phantom','Marcel','30-01-1990',NULL,NULL,NULL);

INSERT INTO Matiere VALUES ('STA','Statistique',0.4);
INSERT INTO Matiere VALUES ('INF','Informatique',0.4);
INSERT INTO Matiere VALUES ('ECO','Econométrie',0.2);

INSERT INTO Epreuve VALUES(11031,'15-12-2018','Salle191L','STA');
INSERT INTO Epreuve VALUES(11032,'01-04-2019','AmphiG','STA');
INSERT INTO Epreuve VALUES(21031,'30-10-2018','Salle191L','INF');
INSERT INTO Epreuve VALUES(21032,'01-06-2019','Salle192L','INF');
INSERT INTO Epreuve VALUES(31030,'02-07-2019','Salle05R','ECO');

INSERT INTO Notation VALUES (110,11031,10);
INSERT INTO Notation VALUES (110,11032,11.5);
INSERT INTO Notation VALUES (110,21031,8.5);
INSERT INTO Notation VALUES (110,21032, NULL);
INSERT INTO Notation VALUES (110,31030,13);
INSERT INTO Notation VALUES (222,11031,9);
INSERT INTO Notation VALUES (222,11032,14);
INSERT INTO Notation VALUES (222,21031,12);
INSERT INTO Notation VALUES (222,21032,16);
INSERT INTO Notation VALUES (222,31030,20);
INSERT INTO Notation VALUES (300,11031,14);
INSERT INTO Notation VALUES (300,11032,20);
INSERT INTO Notation VALUES (300,21031,20);
INSERT INTO Notation VALUES (300,21032,13.5);
INSERT INTO Notation VALUES (300,31030,16);
INSERT INTO Notation VALUES (421,11031,5.5);
INSERT INTO Notation VALUES (421,11032,17);
INSERT INTO Notation VALUES (421,21031,1.5);
INSERT INTO Notation VALUES (421,21032, NULL);
INSERT INTO Notation VALUES (421,31030,10);
INSERT INTO Notation VALUES (575,11031,13);
INSERT INTO Notation VALUES (575,11032,9);
INSERT INTO Notation VALUES (575,21031,12.5);
INSERT INTO Notation VALUES (575,21032,14);
INSERT INTO Notation VALUES (575,31030,7);
INSERT INTO Notation VALUES (667,11031,16);
INSERT INTO Notation VALUES (667,11032,20);
INSERT INTO Notation VALUES (667,21031,8.5);
INSERT INTO Notation VALUES (667,21032,9.5);
