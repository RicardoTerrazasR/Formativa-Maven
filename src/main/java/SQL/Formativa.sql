DROP TABLE estadistica;
DROP TABLE estudiante;
DROP TABLE administrador;
DROP TABLE curso;


SELECT * FROM estudiante;
SELECT * FROM administrador;
SELECT * FROM curso;
SELECT * FROM estadistica;

CREATE TABLE ADMINISTRADOR (
    IDADMINISTRADOR INT PRIMARY KEY, 
    NOMBRE VARCHAR2(100),                        
    CORREO VARCHAR2(100),            
    CLAVE VARCHAR2(255)        
);

CREATE TABLE ESTUDIANTE (
    IDESTUDIANTE INT PRIMARY KEY, 
    NOMBRE VARCHAR2(100),             
    FECHANACIMIENTO VARCHAR2(100),            
    CORREO VARCHAR2(100),            
    DIRECCION VARCHAR2(255)        
);

CREATE TABLE CURSO (
    IDCURSO INT PRIMARY KEY, 
    NOMBRE VARCHAR2(100), 
    CODIGO VARCHAR2(20), 
    DESCRIPCION VARCHAR2(600), 
    CREDITOS INT,
    DURACION NUMBER
);

CREATE TABLE ESTADISTICA (
    IDESTADISTICA INT PRIMARY KEY,
    IDESTUDIANTE INT,
    IDCURSO INT,
    ASISTENCIA NUMBER(5,2),           -- Porcentaje de asistencia
    TIEMPOESTUDIO NUMBER(5,2),         -- Tiempo de estudio por semana (en horas)
    PROMEDIO NUMBER(5,2),              -- Promedio del estudiante en el curso
    PARTICIPACION NUMBER(5,2),         -- Porcentaje de participaci�n
    IDIOMAS VARCHAR2(100)
);

ALTER TABLE ESTADISTICA
ADD CONSTRAINT FK_ESTUDIANTE
FOREIGN KEY (IDESTUDIANTE) REFERENCES ESTUDIANTE(IDESTUDIANTE);

ALTER TABLE ESTADISTICA
ADD CONSTRAINT FK_CURSO
FOREIGN KEY (IDCURSO) REFERENCES CURSO(IDCURSO);


-- DATOS:
--datos estudiantes
INSERT INTO estudiante (idestudiante, nombre, fechanacimiento, correo, direccion)
VALUES (1, 'Lucas', '2000-12-20', 'lucas@gmail.com','San Isidro');
INSERT INTO estudiante (idestudiante, nombre, fechanacimiento, correo, direccion)
VALUES (2, 'Ana', '1998-06-15', 'ana@gmail.com','Av. larco');
INSERT INTO estudiante (idestudiante, nombre, fechanacimiento, correo, direccion)
VALUES (3, 'Carlos', '1999-03-30', 'carlos@gmail.com','La molina');
INSERT INTO estudiante (idestudiante, nombre, fechanacimiento, correo, direccion)
VALUES (4, 'Marta', '2001-08-10', 'marta@gmail.com','San Isidro');
INSERT INTO estudiante (idestudiante, nombre, fechanacimiento, correo, direccion)
VALUES (5, 'Pedro', '1997-11-05', 'pedro@gmail.com','La molina');

--datos de administrador
INSERT INTO administrador (idAdministrador, nombre, correo, clave)
VALUES (1, 'Ricardo', 'ricardo@gmail.com','1234');
INSERT INTO administrador (idAdministrador, nombre, correo, clave)
VALUES (2, 'cliente', 'cliente@gmail.com','1234');
INSERT INTO administrador (idAdministrador, nombre, correo, clave)
VALUES (3, 'German', 'german@gmail.com','1234');

-- Datos de curso
INSERT INTO CURSO (idcurso, nombre, codigo, descripcion, creditos, duracion)
    VALUES (1, 'Matem�ticas', 'MAT101', 'Este curso es una introducci�n al estudio del �lgebra y c�lculo b�sico. Se enfoca en ense�ar los conceptos fundamentales de las operaciones algebraicas, la resoluci�n de ecuaciones, la teor�a de funciones y los principios b�sicos de c�lculo diferencial e integral. Ideal para estudiantes que desean construir una s�lida base en matem�ticas para futuras asignaturas m�s complejas.', 4, 16);
INSERT INTO CURSO (idcurso, nombre, codigo, descripcion, creditos, duracion)
    VALUES (2, 'Historia Universal', 'HIS102', 'Este curso ofrece una visi�n detallada de los eventos m�s significativos que han marcado la historia de la humanidad, desde las civilizaciones antiguas hasta la era contempor�nea. Los estudiantes explorar�n los cambios pol�ticos, sociales, econ�micos y culturales que han dado forma al mundo moderno, con �nfasis en la historia pol�tica, los grandes movimientos sociales y las guerras m�s importantes.', 3, 12);
INSERT INTO CURSO (idcurso, nombre, codigo, descripcion, creditos, duracion)
    VALUES (3, 'F�sica', 'FIS103', 'El curso de F�sica cubre los principios fundamentales de la f�sica cl�sica, incluyendo la mec�nica, la termodin�mica, el electromagnetismo y la �ptica. A trav�s de experimentos y problemas pr�cticos, los estudiantes comprender�n las leyes que rigen el movimiento de los cuerpos, la energ�a, la materia y las interacciones fundamentales. Este curso proporciona una base s�lida para aquellos interesados en carreras cient�ficas o ingenieriles.', 5, 20);
INSERT INTO CURSO (idcurso, nombre, codigo, descripcion, creditos, duracion)
    VALUES (4, 'Qu�mica General', 'QUI104', 'Este curso introduce los principios fundamentales de la qu�mica, incluyendo la teor�a at�mica, la estructura molecular, las reacciones qu�micas y las propiedades de los materiales. Los estudiantes aprender�n a aplicar estos principios a situaciones cotidianas y entender�n la qu�mica que ocurre en el mundo que nos rodea. Es un curso esencial para estudiantes que planean seguir estudios en ciencias biol�gicas, ingenier�as o ciencias ambientales.', 4, 14);
INSERT INTO CURSO (idcurso, nombre, codigo, descripcion, creditos, duracion)
    VALUES (5, 'Literatura Espa�ola', 'LIT105', 'En este curso se estudian las principales obras literarias de la literatura espa�ola, desde los inicios de la literatura medieval hasta los autores contempor�neos m�s influyentes. Los estudiantes leer�n y analizar�n textos de autores como Cervantes, Lorca y P�rez Gald�s, abordando temas como la identidad cultural, la evoluci�n de los g�neros literarios y el contexto hist�rico de cada periodo. Ideal para estudiantes interesados en las humanidades, el an�lisis literario y la cultura espa�ola.', 3, 10);
INSERT INTO CURSO (idcurso, nombre, codigo, descripcion, creditos, duracion)
    VALUES (6, 'Biolog�a', 'BIO106', 'Este curso proporciona una introducci�n integral a los principios b�sicos de la biolog�a, enfoc�ndose en la biolog�a celular, la gen�tica, la ecolog�a y la evoluci�n. Los estudiantes explorar�n los procesos biol�gicos fundamentales como la mitosis, la fotos�ntesis y la herencia gen�tica, as� como los ecosistemas y su equilibrio. Es ideal para aquellos que buscan una comprensi�n profunda de los seres vivos y sus interacciones con el medio ambiente, y sirve de base para estudios avanzados en biolog�a, medicina o ciencias ambientales.', 5, 18);

-- Insertando datos en la tabla ESTADISTICA

INSERT INTO ESTADISTICA (idEstadistica, idEstudiante, idCurso, asistencia, tiempoEstudio, promedio, participacion, idiomas)
VALUES (1, 1, 1, 85.5, 10.0, 9.2, 80.0, 'Espa�ol, Ingl�s');
INSERT INTO ESTADISTICA (idEstadistica, idEstudiante, idCurso, asistencia, tiempoEstudio, promedio, participacion, idiomas)
VALUES (2, 2, 2, 92.0, 8.0, 8.5, 75.0, 'Espa�ol');
INSERT INTO ESTADISTICA (idEstadistica, idEstudiante, idCurso, asistencia, tiempoEstudio, promedio, participacion, idiomas)
VALUES (3, 3, 3, 78.5, 12.0, 7.8, 65.0, 'Espa�ol, Ingl�s');
INSERT INTO ESTADISTICA (idEstadistica, idEstudiante, idCurso, asistencia, tiempoEstudio, promedio, participacion, idiomas)
VALUES (4, 4, 4, 85.5, 10.0, 9.2, 80.0, 'Espa�ol, Ingl�s');


DELETE FROM ESTUDIANTE WHERE IDCURSO = 7;

UPDATE CURSO
SET NOMBRE = 'Programacion con Java'
WHERE IDCURSO = 1;

DROP TABLE curso;

DELETE FROM ESTUDIANTE WHERE IDESTUDIANTE = 4;

DELETE FROM CURSO WHERE IDCURSO = 1;

SELECT e.idEstadistica, 
       est.idEstudiante, 
       est.nombre AS nombreEst, 
       c.idCurso, 
       c.nombre AS nombreCurso, 
       c.duracion AS duracionCurso, 
       e.asistencia, 
       e.tiempoEstudio, 
       e.promedio, 
       e.participacion, 
       e.idiomas 
FROM estadistica e
INNER JOIN estudiante est ON e.idEstudiante = est.idEstudiante
INNER JOIN curso c ON e.idCurso = c.idCurso;

UPDATE estadistica SET idestudiante=?, idcurso=?, asistencia=?, tiempoestudio=?, promedio=?, participacion=?, idiomas=? WHERE idEstadistica=?;

UPDATE estadistica SET idestudiante=1, idcurso=1, asistencia=2, tiempoestudio=85.5, promedio=9.2, participacion=80, idiomas='Espa�ol, Portuguez' WHERE idEstadistica= 1;
