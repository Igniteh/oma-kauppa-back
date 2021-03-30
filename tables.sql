CREATE TABLE tuoteryhma (
trnro SMALLINT,
trnimi CHAR(10),
CONSTRAINT tuoteryhma_pk PRIMARY KEY (trnro)
);
INSERT INTO tuoteryhma VALUES (11,'Kauhu');
INSERT INTO tuoteryhma VALUES (12,'Toiminta');
INSERT INTO tuoteryhma VALUES (13,'Sarjakuvat');
INSERT INTO tuoteryhma VALUES (14,'Romanssi');
CREATE TABLE tuote (
tuotenro INTEGER,
tuotenimi CHAR(20) NOT NULL,
hinta DECIMAL(5,2),
kustannus DECIMAL(5,2), 
trnro SMALLINT NOT NULL,
CONSTRAINT tuote_pk PRIMARY KEY (tuotenro),
CONSTRAINT tuotenimi_un UNIQUE (tuotenimi),
CONSTRAINT tuote_ryhma_fk FOREIGN KEY (trnro) 
           REFERENCES tuoteryhma (trnro)
);
alter table tuote drop column kustannus
INSERT INTO tuote (tuotenro, tuotenimi, hinta, trnro) VALUES ('1', 'kauhukirja', '15,00', '11');
INSERT INTO tuote (tuotenro, tuotenimi, hinta, trnro) VALUES ('2', 'toimintakirja', '20,00', '12');
INSERT INTO tuote (tuotenro, tuotenimi, hinta, trnro) VALUES ('3', 'sarjakuva', '25,00', '13');