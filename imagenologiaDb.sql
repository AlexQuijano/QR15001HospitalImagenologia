
-- A) creando base

CREATE DATABASE imagenologiaDB;

---- A) 1. 

USE imagenologiaDB;

CREATE TABLE hospitalNacionalRosales(
		hospitalNacionalRosales_cod int primary key identity(1,1) not null,
		nombre varchar(80),
		ubicacion varchar(80),
		tipoDeInstitucion varchar(80)
);

CREATE TABLE paciente(
		paciente_cod int primary key identity(1,1)not null,
		nombres varchar(80),
		apellidos varchar(80),
		fechaNacimiento int,
		HospitalNacionalRosales_cod int,
		CONSTRAINT fk_pacienteHospitalNacionalRosales_cod FOREIGN KEY (HospitalNacionalRosales_cod) REFERENCES hospitalNacionalRosales(HospitalNacionalRosales_cod)


);

CREATE TABLE medicos(
		medicos_cod int primary key identity(1,1) not null,
		nombreMedico varchar(80),
		HospitalNacionalRosales_cod int,
		CONSTRAINT fk_HospitalNacionalRosales_cod FOREIGN KEY (HospitalNacionalRosales_cod) REFERENCES hospitalNacionalRosales(HospitalNacionalRosales_cod)		
		--HospitalNacionalRosales_cod FK
);

CREATE TABLE cita(
		cita_cod int primary key identity(1,1) not null,
		fechaEmision int,
		fechaVencimiento int,
		medicos_cod int,
		CONSTRAINT fk_medico_cod FOREIGN KEY (medicos_cod) REFERENCES medicos(medicos_cod)
		
);

CREATE TABLE imagenologia(
		imagenologia_cod int primary key identity(1,1) not null,
		cita_cod int,
		CONSTRAINT fk_cita_cod FOREIGN KEY (cita_cod) REFERENCES cita(cita_cod)
);

CREATE TABLE tipoImagenologia(
		tipoImagenologia_cod int primary key identity(1,1) not null,
		imagenologia_cod int,
		CONSTRAINT fk_tipoImagenologia_cod FOREIGN KEY (imagenologia_cod) REFERENCES imagenologia(imagenologia_cod)
		
);

CREATE TABLE catalogoImag(
		catalogoImag_cod int primary key identity(1,1) not null,
		radiologia varchar(2),
		termografia varchar(2),
		endoscopia varchar(2),
		microscopia varchar(2),
		fotografia varchar(2),
		electroencefalografia varchar(2),
		resonanciaMagnetica varchar(2),
		fluroscopia varchar(2),
		medicinaNuclear varchar(2),
		ultrasonido varchar(2),
		tipoImagenologia_cod int

);


-- B) insertando datos

INSERT INTO hospitalNacionalRosales VALUES ('HOSPITAL NACIONAL ROSALES','Direccion del Hospital','Publico')

INSERT INTO paciente VALUES ('1','Alex','Quijano','1997','1')
,('2','Alex','Quijano','1997','1')
,('3','Alex','Quijano','1997','1')
,('4','Alex','Quijano','1997','1')
,('5','Alex','Quijano','1997','1')
,('6','Alex','Quijano','1997','1')
,('7','Alex','Quijano','1997','1')
,('8','Alex','Quijano','1997','1')
,('10','Alex','Quijano','1997','1')

select * from paciente

INSERT medicos VALUES ('1','Edgardo','Rosales'),
 ('2','Edgardo','Rosales'),
 ('3','Edgardo','Rosales'),
 ('4','Edgardo','Rosales'),
 ('5','Edgardo','Rosales'),
 ('6','Edgardo','Rosales'),
 ('7','Edgardo','Rosales'),
 ('8','Edgardo','Rosales'),
 ('9','Edgardo','Rosales'),
 ('10','Edgardo','Rosales')

INSERT cita VALUES('1','10/10/2019','10/10/2019','1'),
('2','10/10/2019','10/10/2019','2'),
('3','10/10/2019','10/10/2019','3'),
('4','10/10/2019','10/10/2019','4'),
('5','10/10/2019','10/10/2019','5'),
('6','10/10/2019','10/10/2019','6'),
('7','10/10/2019','10/10/2019','7'),
('8','10/10/2019','10/10/2019','8'),
('9','10/10/2019','10/10/2019','9'),
('10','10/10/2019','10/10/2019','10')

INSERT imagenologia VALUES ('1','1'),
('2','2'),
('3','3'),
('4','4'),
('5','5'),
('6','6'),
('7','7'),
('8','8'),
('9','9'),
('10','10');


INSERT tipoImagenologia VALUES('1','1'),
('2','2'),
('3','3'),
('4','4'),
('5','5'),
('6','6'),
('7','7'),
('8','8'),
('9','9'),
('10','10')


INSERT catalogoImag 
VALUES('1','NO'),
	  ('1','NO'),
	  ('1','NO'),
	  ('1','NO'),
	  ('1','NO'),
	  ('1','NO'),
	  ('1','NO'),
	  ('1','NO'),
	  ('1','NO'),
	  ('1','NO');

SELECT * FROM hospitalNacionalRosales;
SELECT * FROM paciente;
SELECT * FROM medicos;
SELECT* FROM cita;
SELECT * FROM imagenologia;
SELECT * FROM tipoImagenologia;
SELECT * FROM imagenologia;





-- 8)
-------------- INSERT, SELECT, UPDATE, DELETE
SELECT * FROM hospitalNacionalRosales;


INSERT INTO hospitalNacionalRosales VALUES ('HNR','AvenidaNorte','Estado')
INSERT INTO hospitalNacionalRosales VALUES ('HNR','CalleCuatro','EstadoPublico')
INSERT INTO hospitalNacionalRosales VALUES ('HNR','KilometroDiez','Estado')
INSERT INTO hospitalNacionalRosales VALUES ('HNR','Saquiro','Estado')
INSERT INTO hospitalNacionalRosales VALUES ('HNR','PorAlli','Estado')



SELECT * FROM hospitalNacionalRosales;

UPDATE hospitalNacionalRosales SET hospitalNacionalRosales_cod = 20 WHERE ubicacion = 'PorAlli'
SELECT * FROM hospitalNacionalRosales;


DELETE FROM hospitalNacionalRosales WHERE hospitalNacionalRosales_cod = 20
SELECT * FROM hospitalNacionalRosales;



-- 9) 

WHERE atFecha BETWEEN 20181025 AND 20190425