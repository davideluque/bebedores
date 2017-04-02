/* COMANDO PARA ELIMINAR TODOS LOS DATOS PREVIOS EN LAS TABLAS */

DELETE FROM VENDE;
DELETE FROM GUSTA;
DELETE FROM FRECUENTA;
DELETE FROM BEBIDA;
DELETE FROM BEBEDOR;
DELETE FROM FUENTE_SODA;

INSERT INTO FUENTE_SODA VALUES ('1010', 'Marco Polo');
INSERT INTO FUENTE_SODA VALUES ('1011', 'La Montaña');
INSERT INTO FUENTE_SODA VALUES ('1012', 'Soledad');
INSERT INTO FUENTE_SODA VALUES ('1013', 'Cano Briones');
INSERT INTO FUENTE_SODA VALUES ('1014', 'Bavaria');
INSERT INTO FUENTE_SODA VALUES ('1015', 'La Vertiente');
INSERT INTO FUENTE_SODA VALUES ('1016', 'Fuente Holandesa');
INSERT INTO FUENTE_SODA VALUES ('1017', 'Montserrat');
INSERT INTO FUENTE_SODA VALUES ('1018', 'Di Olattes');
INSERT INTO FUENTE_SODA VALUES ('1019', 'Rolaines');
INSERT INTO FUENTE_SODA VALUES ('1020', 'Giros');

INSERT INTO FUENTE_SODA VALUES ('1021', 'Fuente Holandesa');

INSERT INTO BEBEDOR VALUES ('V2340', 'Luis Perez');
INSERT INTO BEBEDOR VALUES ('V2341', 'Jose Rodriguez');
INSERT INTO BEBEDOR VALUES ('V2342', 'Marcos Campos');
INSERT INTO BEBEDOR VALUES ('V2343', 'Daniela Perez');
INSERT INTO BEBEDOR VALUES ('V2344', 'Mauricio Valera');
INSERT INTO BEBEDOR VALUES ('V2345', 'Manuel Marrero');
INSERT INTO BEBEDOR VALUES ('V2346', 'Carlos Jerez');
INSERT INTO BEBEDOR VALUES ('V2347', 'Maria Martinez');
INSERT INTO BEBEDOR VALUES ('V2348', 'Veronica Gomez');
INSERT INTO BEBEDOR VALUES ('V2349', 'Carla Rivas');
INSERT INTO BEBEDOR VALUES ('V2350', 'Angelica Goncalves');

--INSERT INTO BEBEDOR VALUES ('V2351', 'Luis Perez');
INSERT INTO BEBEDOR VALUES ('V2452', 'Daniela Perez');

INSERT INTO FRECUENTA VALUES ('V2340', '1015');
INSERT INTO FRECUENTA VALUES ('V2340', '1018');
INSERT INTO FRECUENTA VALUES ('V2340', '1016');
INSERT INTO FRECUENTA VALUES ('V2340', '1010');
INSERT INTO FRECUENTA VALUES ('V2342', '1010');
INSERT INTO FRECUENTA VALUES ('V2342', '1015');
INSERT INTO FRECUENTA VALUES ('V2345', '1012');
INSERT INTO FRECUENTA VALUES ('V2347', '1013');
INSERT INTO FRECUENTA VALUES ('V2343', '1010');
INSERT INTO FRECUENTA VALUES ('V2348', '1016');
INSERT INTO FRECUENTA VALUES ('V2348', '1018');
INSERT INTO FRECUENTA VALUES ('V2348', '1017');
INSERT INTO FRECUENTA VALUES ('V2346', '1019');
INSERT INTO FRECUENTA VALUES ('V2346', '1011');
INSERT INTO FRECUENTA VALUES ('V2344', '1015');
INSERT INTO FRECUENTA VALUES ('V2344', '1018');
INSERT INTO FRECUENTA VALUES ('V2344', '1016');
INSERT INTO FRECUENTA VALUES ('V2344', '1010');
INSERT INTO FRECUENTA VALUES ('V2341', '1014');
INSERT INTO FRECUENTA VALUES ('V2341', '1011');

INSERT INTO BEBIDA VALUES ('01', 'Malta');
INSERT INTO BEBIDA VALUES ('02', 'Coca-Cola');
INSERT INTO BEBIDA VALUES ('03', 'Frescolita');
INSERT INTO BEBIDA VALUES ('04', 'Agua');
INSERT INTO BEBIDA VALUES ('05', 'Jugo de Fresa');
INSERT INTO BEBIDA VALUES ('06', 'Jugo de Naranja');
INSERT INTO BEBIDA VALUES ('07', 'Cerveza');
INSERT INTO BEBIDA VALUES ('08', 'Vino');
INSERT INTO BEBIDA VALUES ('09', 'Champaña');
INSERT INTO BEBIDA VALUES ('10', 'Vodka');
INSERT INTO BEBIDA VALUES ('11', 'Malta');
INSERT INTO BEBIDA VALUES ('12', 'Coca-Cola');
INSERT INTO BEBIDA VALUES ('13', 'Frescolita');
INSERT INTO BEBIDA VALUES ('14', 'Vino');
INSERT INTO BEBIDA VALUES ('15', 'Jugo de Naranja');

INSERT INTO GUSTA VALUES ('V2340', '01');
INSERT INTO GUSTA VALUES ('V2340', '08');
INSERT INTO GUSTA VALUES ('V2340', '04');
INSERT INTO GUSTA VALUES ('V2340', '05');
INSERT INTO GUSTA VALUES ('V2345', '01');
INSERT INTO GUSTA VALUES ('V2345', '13');
INSERT INTO GUSTA VALUES ('V2345', '12');
INSERT INTO GUSTA VALUES ('V2341', '05');
INSERT INTO GUSTA VALUES ('V2348', '01');
INSERT INTO GUSTA VALUES ('V2348', '13');
INSERT INTO GUSTA VALUES ('V2349', '01');
INSERT INTO GUSTA VALUES ('V2342', '01');
INSERT INTO GUSTA VALUES ('V2342', '12');
INSERT INTO GUSTA VALUES ('V2343', '06');
INSERT INTO GUSTA VALUES ('V2347', '09');
INSERT INTO GUSTA VALUES ('V2346', '01');
INSERT INTO GUSTA VALUES ('V2341', '01');

INSERT INTO VENDE VALUES ('1016', '09', '2250');
INSERT INTO VENDE VALUES ('1015', '09', '500');
INSERT INTO VENDE VALUES ('1014', '09', '1750');
INSERT INTO VENDE VALUES ('1013', '01', '1400');
INSERT INTO VENDE VALUES ('1010', '01', '2600');
INSERT INTO VENDE VALUES ('1018', '01', '400');
INSERT INTO VENDE VALUES ('1019', '01', '800');
INSERT INTO VENDE VALUES ('1011', '01', '500');
INSERT INTO VENDE VALUES ('1017', '05', '400');
INSERT INTO VENDE VALUES ('1017', '02', '1500');
INSERT INTO VENDE VALUES ('1012', '07', '3000');
INSERT INTO VENDE VALUES ('1014', '10', '2240');
INSERT INTO VENDE VALUES ('1016', '04', '4400');
INSERT INTO VENDE VALUES ('1010', '03', '2230');
