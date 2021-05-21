CREATE DATABASE eval;

USE eval;

CREATE TABLE est_compose(
        com_num     Int NOT NULL ,    
        pro_num     Int NOT NULL ,
        est_qte     Int NOT NULL
        ,CONSTRAINT est_compose_PK PRIMARY KEY (com_num,pro_num)
        ,CONSTRAINT est_compose_Produit_FK FOREIGN KEY (pro_num) REFERENCES Produit(pro_num)
        ,CONSTRAINT est_compose_Commande_FK FOREIGN KEY (com_num) REFERENCES Commande(com_num)
);

CREATE TABLE Produit(
        pro_num     Int NOT NULL ,
        pro_libelle Varchar(50)  ,
        pro_drescription Varchar(50) 
        ,CONSTRAINT Produit_PK PRIMARY KEY (pro_num)
  
);

CREATE TABLE Commande(
        com_num     Int NOT NULL , 
        cli_num     Int NOT NULL ,   
        com_date    DATETIME ,
        com_obs     Varchar(50)
        ,CONSTRAINT Commande_PK PRIMARY KEY (com_num)
        ,CONSTRAINT Commande_Client_FK FOREIGN KEY (cli_num) REFERENCES Client(cli_num)
);

CREATE TABLE Client(
        cli_num     Int NOT NULL , 
        cli_nom    Varchar(50)  ,
        cli_adresse Varchar(50) ,
        cli_tel     Varchar(50)
        ,CONSTRAINT Client_PK PRIMARY KEY (cli_num)
);