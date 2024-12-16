-- Active: 1733995062935@@127.0.0.1@3306@my_db
--création de la table client 
CREATE TABLE CLIENT (
    ClientID NUMBER PRIMARY KEY,
    Nom vARCHAR2(50) NOT NULL,
    Adresse VARCHAR2(100),
    Téléphone VARCHAR2(15) UNIQUE
);

--Création de la table PRODUIT
CREATE TABLE PRODUIT (
    ProduitID NUMBER PRIMIRY KEY,
    Nom VARCHAR2(50) NOT NULL,
    Prix NUMBER(10, 2) NOT NULL
);


CREATE TABLE orders (
     CommandeID varchar(20) DEFAULT NULL,
   ClientID  varchar(20) DEFAULT NULL,
    
    ProduitID int DEFAULT NULL,
 
    KEY ClientID _FK (ClientID ),
    KEY ProduitID_FK ( ProduitID),
    CONSTRAINT ClientID _FK FOREIGN KEY (ClientID ) REFERENCES client (ClientID ),
    CONSTRAINT ProduitID_FK FOREIGN KEY (ProduitID) REFERENCES produit (ProduitId),
   );