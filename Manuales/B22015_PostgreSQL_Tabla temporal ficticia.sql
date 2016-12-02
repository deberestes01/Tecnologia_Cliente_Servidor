CREATE DATABASE "dbPruebas01";


CREATE TABLE tbm_ciudades
(
  co_ciu smallint NOT NULL,
  tx_nom VARCHAR(60) NOT NULL,
  st_reg character(1) DEFAULT 'A',
  CONSTRAINT tbm_ciudades_pk PRIMARY KEY (co_ciu)
);


CREATE TABLE tbm_estudiantes
(
  co_est integer NOT NULL,
  tx_nom character varying(60) NOT NULL,
  co_ciu smallint,
  st_reg character(1) DEFAULT 'A',
  CONSTRAINT tbm_estudiantes_pk PRIMARY KEY (co_est)
);

ALTER TABLE tbm_estudiantes ADD CONSTRAINT "$1" FOREIGN KEY (co_ciu) REFERENCES tbm_ciudades (co_ciu);


INSERT INTO tbm_ciudades (co_ciu, tx_nom, st_reg) VALUES (1, 'Guayaquil', 'A');
INSERT INTO tbm_ciudades (co_ciu, tx_nom, st_reg) VALUES (2, 'Quito', 'A');
INSERT INTO tbm_ciudades (co_ciu, tx_nom, st_reg) VALUES (3, 'Cuenca', 'A');
INSERT INTO tbm_ciudades (co_ciu, tx_nom, st_reg) VALUES (4, 'Manta', 'A');
INSERT INTO tbm_ciudades (co_ciu, tx_nom, st_reg) VALUES (5, 'Santo Domingo', 'A');
INSERT INTO tbm_ciudades (co_ciu, tx_nom, st_reg) VALUES (6, 'Machala', 'A');


INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (1, 'Ana', 1, 'A');
INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (2, 'Pedro', 2, 'A');
INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (3, 'Claudia', 3, 'A');
INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (4, 'Luis', 1, 'A');
INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (5, 'Sara', 1, 'A');
INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (6, 'Carlos', 1, 'A');
INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (7, 'Andrea', 1, 'A');
INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (8, 'Eduardo', 4, 'A');
INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (9, 'Pablo', 2, 'A');
INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (10, 'Marlene', 1, 'A');
INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (11, 'Clara', 6, 'A');
INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (12, 'Fabricio', 2, 'A');
INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (13, 'Martha', 2, 'A');
INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (14, 'Francisco', 1, 'A');
INSERT INTO tbm_estudiantes (co_est, tx_nom, co_ciu, st_reg) VALUES (15, 'Pilar', 3, 'A');



CREATE TABLE tbm_estudiantes_temporal
(
  co_est integer NOT NULL,
  tx_nom character varying(60) NOT NULL,
  co_ciu smallint,
  st_reg character(1) DEFAULT 'A'
)


DELETE FROM tbm_estudiantes_temporal;

INSERT INTO tbm_estudiantes_temporal
SELECT * FROM tbm_estudiantes WHERE co_ciu=1;

DELETE FROM tbm_estudiantes_temporal;

DROP TABLE tbm_estudiantes_temporal;