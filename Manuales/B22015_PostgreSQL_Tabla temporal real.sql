CREATE TEMPORARY TABLE tbm_estudiantes_temporal
(
  co_est integer NOT NULL,
  tx_nom character varying(60) NOT NULL,
  co_ciu smallint,
  st_reg character(1) DEFAULT 'A'
)


INSERT INTO tbm_estudiantes_temporal
SELECT * FROM tbm_estudiantes WHERE co_ciu=1;


INSERT INTO tbm_estudiantes_temporal VALUES(5, 'Pedro García', 4, 'A')

SELECT * FROM tbm_estudiantes_temporal;