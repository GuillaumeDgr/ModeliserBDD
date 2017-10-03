#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: user
#------------------------------------------------------------

CREATE TABLE user(
        id    int (11) Auto_increment  NOT NULL ,
        name  Varchar (25) ,
        email Varchar (25) ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: organization
#------------------------------------------------------------

CREATE TABLE organization(
        id          int (11) Auto_increment  NOT NULL ,
        name        Varchar (25) ,
        website_url Varchar (25) ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: tweet
#------------------------------------------------------------

CREATE TABLE tweet(
        id      int (11) Auto_increment  NOT NULL ,
        content Varchar (25) ,
        PRIMARY KEY (id )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Poste
#------------------------------------------------------------

CREATE TABLE Poste(
        id       Int NOT NULL ,
        id_tweet Int NOT NULL ,
        PRIMARY KEY (id ,id_tweet )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Appartient
#------------------------------------------------------------

CREATE TABLE Appartient(
        id              Int NOT NULL ,
        id_organization Int NOT NULL ,
        PRIMARY KEY (id ,id_organization )
)ENGINE=InnoDB;

ALTER TABLE Poste ADD CONSTRAINT FK_Poste_id FOREIGN KEY (id) REFERENCES user(id);
ALTER TABLE Poste ADD CONSTRAINT FK_Poste_id_tweet FOREIGN KEY (id_tweet) REFERENCES tweet(id);
ALTER TABLE Appartient ADD CONSTRAINT FK_Appartient_id FOREIGN KEY (id) REFERENCES user(id);
ALTER TABLE Appartient ADD CONSTRAINT FK_Appartient_id_organization FOREIGN KEY (id_organization) REFERENCES organization(id);
