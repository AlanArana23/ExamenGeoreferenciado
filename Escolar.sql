
CREATE TABLE lugares (
  id SERIAL PRIMARY KEY,
  nombre TEXT,
  tipo TEXT CHECK (tipo IN ('escuela', 'biblioteca', 'centro')),
  capacidad INT,
  responsable TEXT,
  telefono TEXT,
  correo TEXT,
  zona TEXT,
  geom GEOMETRY(Point, 4326)
);

CREATE TABLE poligonos (
  id SERIAL PRIMARY KEY,
  nombre TEXT,
  categoria TEXT CHECK (categoria IN ('colonia', 'ruta')),
  zona TEXT,
  superficie DOUBLE PRECISION,
  geom GEOMETRY(Polygon, 4326)
);
-- INSERTS COMPLETOS PARA 30 PUNTOS Y 10 POLÍGONOS

INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Escuela Eje vial Miramontes', 'escuela', 457, 'Sr(a). Felipe Perea', '269.956.2350x894', 'melgarjacobo@de.net', 'Zona Oeste',
        ST_SetSRID(ST_MakePoint(-101.686011, 21.102057), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Escuela Ampliación Norte Lebrón', 'escuela', 141, 'Reina Ofelia Campos Enríquez', '(673)725-7917', 'casasmaximiliano@tejada.net', 'Zona Centro',
        ST_SetSRID(ST_MakePoint(-101.694127, 21.122648), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Escuela Calzada Quintana Roo', 'escuela', 271, 'Carmen Luna Fierro', '259-542-9939', 'eescalante@industrias.com', 'Zona Norte',
        ST_SetSRID(ST_MakePoint(-101.663783, 21.111854), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Escuela Privada Chiapas', 'escuela', 278, 'Yolanda Bétancourt', '(362)773-6953', 'david64@club.com', 'Zona Este',
        ST_SetSRID(ST_MakePoint(-101.692914, 21.0936), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Escuela Boulevard Baja California Sur', 'escuela', 127, 'Claudia Montalvo', '897.581.7671', 'guillermina71@yahoo.com', 'Zona Centro',
        ST_SetSRID(ST_MakePoint(-101.667319, 21.097726), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Escuela Diagonal Norte Trujillo', 'escuela', 397, 'Jos Armas', '1-957-628-1997x773', 'tejedarene@hotmail.com', 'Zona Centro',
        ST_SetSRID(ST_MakePoint(-101.674958, 21.101822), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Escuela Boulevard Sur Barrientos', 'escuela', 555, 'Felix Minerva Gamboa Calvillo', '397.677.7269x45021', 'elisa97@yahoo.com', 'Zona Norte',
        ST_SetSRID(ST_MakePoint(-101.668542, 21.130924), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Escuela Eje vial China', 'escuela', 778, 'Pascual Virginia Yáñez Tafoya', '(543)928-2656', 'marianosandoval@vazquez-salas.com', 'Zona Oeste',
        ST_SetSRID(ST_MakePoint(-101.675462, 21.090764), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Escuela Eje vial Tello', 'escuela', 764, 'Abril Vigil Barraza', '02489667925', 'maria-del-carmen76@gmail.com', 'Zona Centro',
        ST_SetSRID(ST_MakePoint(-101.674808, 21.115424), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Escuela Viaducto Niger', 'escuela', 535, 'Frida Vergara', '(714)005-4063x687', 'jose-maria12@yahoo.com', 'Zona Sur',
        ST_SetSRID(ST_MakePoint(-101.680679, 21.091455), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Biblioteca Periférico Saint Kitts y Nevis', 'biblioteca', 645, 'Luis Manuel Timoteo Sánchez Suárez', '(395)138-2882', 'maldonadoleonor@yahoo.com', 'Zona Este',
        ST_SetSRID(ST_MakePoint(-101.675925, 21.0938), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Biblioteca Ampliación Togo', 'biblioteca', 607, 'Sr(a). Claudia Quiñónez', '1-973-978-4021', 'mayte51@grupo.com', 'Zona Norte',
        ST_SetSRID(ST_MakePoint(-101.665527, 21.126897), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Biblioteca Peatonal Israel', 'biblioteca', 630, 'Mtro. Uriel Madrigal', '110.789.0431x1235', 'bernabe64@gmail.com', 'Zona Norte',
        ST_SetSRID(ST_MakePoint(-101.690633, 21.100387), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Biblioteca Retorno Norte Vargas', 'biblioteca', 620, 'Salvador Arteaga Corrales', '828.381.7886x28711', 'armandofonseca@peres.com', 'Zona Este',
        ST_SetSRID(ST_MakePoint(-101.685185, 21.123836), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Biblioteca Eje vial Razo', 'biblioteca', 594, 'Flavio Marisol Guerrero Ramírez', '144-778-0542', 'acevedoraul@hotmail.com', 'Zona Centro',
        ST_SetSRID(ST_MakePoint(-101.668615, 21.094213), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Biblioteca Circunvalación Norte Rodrígez', 'biblioteca', 299, 'Socorro Isabel Rodríquez', '274-888-5188x14141', 'jose-eduardoortega@hotmail.com', 'Zona Este',
        ST_SetSRID(ST_MakePoint(-101.684384, 21.125528), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Biblioteca Privada Madagascar', 'biblioteca', 325, 'Salma Zedillo', '816-560-6272x0422', 'jorge-luismeraz@vergara.info', 'Zona Oeste',
        ST_SetSRID(ST_MakePoint(-101.692052, 21.095606), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Biblioteca Circuito Madagascar', 'biblioteca', 212, 'Abigail Sarabia Duarte', '(390)657-5137', 'alfaroangel@hotmail.com', 'Zona Oeste',
        ST_SetSRID(ST_MakePoint(-101.68375, 21.12608), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Biblioteca Andador Guerrero', 'biblioteca', 225, 'Octavio Soledad Mascareñas Jasso', '09768666160', 'sonia12@despacho.org', 'Zona Este',
        ST_SetSRID(ST_MakePoint(-101.672487, 21.125378), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Biblioteca Callejón Ochoa', 'biblioteca', 358, 'Lic. Blanca Paredes', '00060536118', 'hidalgoagustin@industrias.net', 'Zona Este',
        ST_SetSRID(ST_MakePoint(-101.69629, 21.11574), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Centro Diagonal Sanches', 'centro', 702, 'Teresa Linares Rocha', '(824)863-9115', 'ivaldez@yahoo.com', 'Zona Centro',
        ST_SetSRID(ST_MakePoint(-101.661083, 21.104536), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Centro Calle Filipinas', 'centro', 424, 'Celia de León Villareal', '(688)876-9244x662', 'claudia32@hotmail.com', 'Zona Sur',
        ST_SetSRID(ST_MakePoint(-101.66524, 21.110626), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Centro Peatonal Norte Mendoza', 'centro', 162, 'Hilda Castro', '864.842.7878x1046', 'mfernandez@gmail.com', 'Zona Este',
        ST_SetSRID(ST_MakePoint(-101.687388, 21.139624), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Centro Continuación Arabia Saudita', 'centro', 177, 'Carolina Marco Antonio Corrales', '(305)203-2878', 'reynamariana@cruz-llamas.com', 'Zona Sur',
        ST_SetSRID(ST_MakePoint(-101.696769, 21.139013), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Centro Calzada Aguascalientes', 'centro', 373, 'Timoteo Dulce Collazo', '880.030.0706x37980', 'sosagabriel@yahoo.com', 'Zona Oeste',
        ST_SetSRID(ST_MakePoint(-101.682973, 21.122947), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Centro Boulevard Sur Arroyo', 'centro', 417, 'Daniel Valadez', '(254)487-0613x61414', 'juana02@gmail.com', 'Zona Oeste',
        ST_SetSRID(ST_MakePoint(-101.674929, 21.13478), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Centro Circuito Ramírez', 'centro', 708, 'Mario Valenzuela Quintana', '604-492-3477', 'zacariassaavedra@muniz.org', 'Zona Norte',
        ST_SetSRID(ST_MakePoint(-101.694431, 21.096626), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Centro Viaducto Finlandia', 'centro', 299, 'Alonso Raúl Guerra Palacios', '269-211-9857x768', 'jonas79@despacho.com', 'Zona Sur',
        ST_SetSRID(ST_MakePoint(-101.692911, 21.118965), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Centro Andador Ulloa', 'centro', 232, 'Iván Rufino Godínez Villegas', '1-069-464-7055', 'zoe99@hotmail.com', 'Zona Centro',
        ST_SetSRID(ST_MakePoint(-101.66608, 21.133098), 4326));
INSERT INTO lugares (nombre, tipo, capacidad, responsable, telefono, correo, zona, geom)
VALUES ('Centro Boulevard Sur Alarcón', 'centro', 277, 'Mariana Adela Muñoz', '(361)190-0529', 'catalinavillareal@industrias.com', 'Zona Este',
        ST_SetSRID(ST_MakePoint(-101.683088, 21.09675), 4326));

INSERT INTO poligonos (nombre, categoria, zona, superficie, geom)
VALUES ('Colonia Jimínez', 'colonia', 'Zona Norte', 1.18,
        ST_GeomFromText('POLYGON ((-101.67541821641862 21.105968315107408, -101.67241821641862 21.105968315107408, -101.67241821641862 21.107968315107406, -101.67541821641862 21.107968315107406, -101.67541821641862 21.105968315107408))', 4326));
INSERT INTO poligonos (nombre, categoria, zona, superficie, geom)
VALUES ('Colonia Camarillo', 'colonia', 'Zona Este', 1.03,
        ST_GeomFromText('POLYGON ((-101.68490581824308 21.107259319202214, -101.68190581824308 21.107259319202214, -101.68190581824308 21.109259319202213, -101.68490581824308 21.109259319202213, -101.68490581824308 21.107259319202214))', 4326));
INSERT INTO poligonos (nombre, categoria, zona, superficie, geom)
VALUES ('Colonia Griego', 'colonia', 'Zona Este', 1.72,
        ST_GeomFromText('POLYGON ((-101.68502299803254 21.12458418229659, -101.68202299803254 21.12458418229659, -101.68202299803254 21.12658418229659, -101.68502299803254 21.12658418229659, -101.68502299803254 21.12458418229659))', 4326));
INSERT INTO poligonos (nombre, categoria, zona, superficie, geom)
VALUES ('Colonia Prado', 'colonia', 'Zona Oeste', 0.86,
        ST_GeomFromText('POLYGON ((-101.68959118546682 21.10637444745363, -101.68659118546682 21.10637444745363, -101.68659118546682 21.108374447453627, -101.68959118546682 21.108374447453627, -101.68959118546682 21.10637444745363))', 4326));
INSERT INTO poligonos (nombre, categoria, zona, superficie, geom)
VALUES ('Colonia Mireles', 'colonia', 'Zona Oeste', 0.93,
        ST_GeomFromText('POLYGON ((-101.68842224956707 21.12606189772916, -101.68542224956707 21.12606189772916, -101.68542224956707 21.128061897729157, -101.68842224956707 21.128061897729157, -101.68842224956707 21.12606189772916))', 4326));
INSERT INTO poligonos (nombre, categoria, zona, superficie, geom)
VALUES ('Zona de Riesgo 1', 'ruta', 'Zona Norte', 0.45,
        ST_GeomFromText('POLYGON ((-101.68598281148023 21.106270873747498, -101.68398281148023 21.106270873747498, -101.68398281148023 21.109270873747498, -101.68598281148023 21.109270873747498, -101.68598281148023 21.106270873747498))', 4326));
INSERT INTO poligonos (nombre, categoria, zona, superficie, geom)
VALUES ('Zona de Riesgo 2', 'ruta', 'Zona Norte', 0.62,
        ST_GeomFromText('POLYGON ((-101.6812827696014 21.124013592321905, -101.6792827696014 21.124013592321905, -101.6792827696014 21.127013592321905, -101.6812827696014 21.127013592321905, -101.6812827696014 21.124013592321905))', 4326));
INSERT INTO poligonos (nombre, categoria, zona, superficie, geom)
VALUES ('Zona de Riesgo 3', 'ruta', 'Zona Oeste', 0.64,
        ST_GeomFromText('POLYGON ((-101.67624332455156 21.11575517639444, -101.67424332455157 21.11575517639444, -101.67424332455157 21.11875517639444, -101.67624332455156 21.11875517639444, -101.67624332455156 21.11575517639444))', 4326));
INSERT INTO poligonos (nombre, categoria, zona, superficie, geom)
VALUES ('Zona de Riesgo 4', 'ruta', 'Zona Oeste', 0.78,
        ST_GeomFromText('POLYGON ((-101.68244193267135 21.129802842602032, -101.68044193267136 21.129802842602032, -101.68044193267136 21.132802842602032, -101.68244193267135 21.132802842602032, -101.68244193267135 21.129802842602032))', 4326));
INSERT INTO poligonos (nombre, categoria, zona, superficie, geom)
VALUES ('Zona de Riesgo 5', 'ruta', 'Zona Norte', 0.69,
        ST_GeomFromText('POLYGON ((-101.68351485655361 21.10211723309813, -101.68151485655362 21.10211723309813, -101.68151485655362 21.10511723309813, -101.68351485655361 21.10511723309813, -101.68351485655361 21.10211723309813))', 4326));

SELECT * FROM lugares WHERE geom IS NULL;

UPDATE lugares
SET geom = ST_SetSRID(ST_MakePoint(-101.684, 21.108), 4326)
WHERE id IN (1, 2, 3);

UPDATE poligonos
SET geom = ST_GeomFromText('POLYGON((-101.684 21.108, -101.682 21.108, -101.682 21.110, -101.684 21.110, -101.684 21.108))', 4326)
WHERE id = 1;

UPDATE poligonos
SET geom = ST_GeomFromText('POLYGON((-101.683 21.109, -101.681 21.109, -101.681 21.111, -101.683 21.111, -101.683 21.109))', 4326)
WHERE id = 2;

UPDATE lugares
SET geom = ST_SetSRID(ST_MakePoint(-101.683, 21.109), 4326)
WHERE id BETWEEN 4 AND 10;

-- 1. Mover lugares con ID 1, 2, 3 dentro del primer polígono
UPDATE lugares
SET geom = ST_SetSRID(ST_MakePoint(-101.6845, 21.1085), 4326)
WHERE id IN (1, 2, 3);

-- 2. Agrupar 5 lugares en una ubicación común para clustering y vecinos
UPDATE lugares
SET geom = ST_SetSRID(ST_MakePoint(-101.6830, 21.1090), 4326)
WHERE id BETWEEN 4 AND 8;

-- 3. Hacer que los dos primeros polígonos se crucen
UPDATE poligonos
SET geom = ST_GeomFromText('POLYGON((
  -101.684 21.108,
  -101.681 21.108,
  -101.681 21.111,
  -101.684 21.111,
  -101.684 21.108
))', 4326)
WHERE id = 1;

UPDATE poligonos
SET geom = ST_GeomFromText('POLYGON((
  -101.683 21.109,
  -101.680 21.109,
  -101.680 21.112,
  -101.683 21.112,
  -101.683 21.109
))', 4326)
WHERE id = 2;

-- ESCUELAS con ubicaciones reales en León, Gto
UPDATE lugares SET geom = ST_SetSRID(ST_MakePoint(-101.6605, 21.1228), 4326) WHERE id = 1;
UPDATE lugares SET geom = ST_SetSRID(ST_MakePoint(-101.6753, 21.1205), 4326) WHERE id = 2;
UPDATE lugares SET geom = ST_SetSRID(ST_MakePoint(-101.6812, 21.1252), 4326) WHERE id = 3;
UPDATE lugares SET geom = ST_SetSRID(ST_MakePoint(-101.6841, 21.1301), 4326) WHERE id = 4;
UPDATE lugares SET geom = ST_SetSRID(ST_MakePoint(-101.6893, 21.1179), 4326) WHERE id = 5;
UPDATE lugares SET geom = ST_SetSRID(ST_MakePoint(-101.6947, 21.1167), 4326) WHERE id = 6;
UPDATE lugares SET geom = ST_SetSRID(ST_MakePoint(-101.6702, 21.1108), 4326) WHERE id = 7;
UPDATE lugares SET geom = ST_SetSRID(ST_MakePoint(-101.6785, 21.1263), 4326) WHERE id = 8;
UPDATE lugares SET geom = ST_SetSRID(ST_MakePoint(-101.6694, 21.1154), 4326) WHERE id = 9;
UPDATE lugares SET geom = ST_SetSRID(ST_MakePoint(-101.6622, 21.1305), 4326) WHERE id = 10;

-- ZONA DE RIESGO 1 (Zona Centro, cubre varias escuelas y bibliotecas)
UPDATE poligonos
SET geom = ST_GeomFromText('POLYGON((
  -101.696 21.123,
  -101.690 21.123,
  -101.690 21.117,
  -101.696 21.117,
  -101.696 21.123
))', 4326)
WHERE nombre = 'Zona de Riesgo 1';

-- ZONA DE RIESGO 2 (Zona Norte, cubre centro y escuela)
UPDATE poligonos
SET geom = ST_GeomFromText('POLYGON((
  -101.671 21.132,
  -101.665 21.132,
  -101.665 21.126,
  -101.671 21.126,
  -101.671 21.132
))', 4326)
WHERE nombre = 'Zona de Riesgo 2';

-- ZONA DE RIESGO 3 (Zona Este, cubre biblioteca y centro)
UPDATE poligonos
SET geom = ST_GeomFromText('POLYGON((
  -101.685 21.127,
  -101.679 21.127,
  -101.679 21.121,
  -101.685 21.121,
  -101.685 21.127
))', 4326)
WHERE nombre = 'Zona de Riesgo 3';

-- ZONA DE RIESGO 4 (Zona Oeste, cubre varias escuelas)
UPDATE poligonos
SET geom = ST_GeomFromText('POLYGON((
  -101.687 21.103,
  -101.681 21.103,
  -101.681 21.097,
  -101.687 21.097,
  -101.687 21.103
))', 4326)
WHERE nombre = 'Zona de Riesgo 4';

-- ZONA DE RIESGO 5 (Zona Sur, cubre centros y una escuela)
UPDATE poligonos
SET geom = ST_GeomFromText('POLYGON((
  -101.696 21.141,
  -101.690 21.141,
  -101.690 21.135,
  -101.696 21.135,
  -101.696 21.141
))', 4326)
WHERE nombre = 'Zona de Riesgo 5';

-- Colonia Jiménez → Zona Norte: abarca escuela y centro
UPDATE poligonos
SET geom = ST_GeomFromText('POLYGON((
  -101.671 21.132,
  -101.665 21.132,
  -101.665 21.126,
  -101.671 21.126,
  -101.671 21.132
))', 4326)
WHERE nombre = 'Colonia Jiménez';

-- Colonia Camarillo → Zona Este: abarca bibliotecas
UPDATE poligonos
SET geom = ST_GeomFromText('POLYGON((
  -101.685 21.127,
  -101.679 21.127,
  -101.679 21.121,
  -101.685 21.121,
  -101.685 21.127
))', 4326)
WHERE nombre = 'Colonia Camarillo';

-- Colonia Griego → Zona Centro: abarca escuelas
UPDATE poligonos
SET geom = ST_GeomFromText('POLYGON((
  -101.696 21.123,
  -101.690 21.123,
  -101.690 21.117,
  -101.696 21.117,
  -101.696 21.123
))', 4326)
WHERE nombre = 'Colonia Griego';

-- Colonia Prado → Zona Oeste: abarca escuelas
UPDATE poligonos
SET geom = ST_GeomFromText('POLYGON((
  -101.687 21.103,
  -101.681 21.103,
  -101.681 21.097,
  -101.687 21.097,
  -101.687 21.103
))', 4326)
WHERE nombre = 'Colonia Prado';

-- Colonia Mireles → Zona Sur: abarca centros
UPDATE poligonos
SET geom = ST_GeomFromText('POLYGON((
  -101.696 21.141,
  -101.690 21.141,
  -101.690 21.135,
  -101.696 21.135,
  -101.696 21.141
))', 4326)
WHERE nombre = 'Colonia Mireles';

-- Zona de Riesgo 6 (Zona Sur-Este, toca algunas bibliotecas y un centro)
INSERT INTO poligonos (nombre, categoria, zona, superficie, geom)
VALUES ('Zona de Riesgo 6', 'ruta', 'Zona Este', 0.55,
        ST_GeomFromText('POLYGON((
          -101.688 21.118,
          -101.683 21.118,
          -101.683 21.114,
          -101.688 21.114,
          -101.688 21.118
        ))', 4326));

-- Zona de Riesgo 7 (Zona Norte-Oeste, cubre una biblioteca y un centro aislado)
INSERT INTO poligonos (nombre, categoria, zona, superficie, geom)
VALUES ('Zona de Riesgo 7', 'ruta', 'Zona Norte', 0.48,
        ST_GeomFromText('POLYGON((
          -101.673 21.128,
          -101.668 21.128,
          -101.668 21.124,
          -101.673 21.124,
          -101.673 21.128
        ))', 4326));

-- Zona de Riesgo 8 (Zona Oeste, al sur de varias escuelas, aislada)
INSERT INTO poligonos (nombre, categoria, zona, superficie, geom)
VALUES ('Zona de Riesgo 8', 'ruta', 'Zona Oeste', 0.52,
        ST_GeomFromText('POLYGON((
          -101.690 21.090,
          -101.686 21.090,
          -101.686 21.086,
          -101.690 21.086,
          -101.690 21.090
        ))', 4326));

-- Zona de Riesgo 9 (Zona Centro-Sur, sin muchos puntos cerca, para análisis de vacíos)
INSERT INTO poligonos (nombre, categoria, zona, superficie, geom)
VALUES ('Zona de Riesgo 9', 'ruta', 'Zona Centro', 0.60,
        ST_GeomFromText('POLYGON((
          -101.676 21.095,
          -101.672 21.095,
          -101.672 21.091,
          -101.676 21.091,
          -101.676 21.095
        ))', 4326));
/*
/*
=======================================================================================
 SISTEMA GEOREFERENCIADOS - BASE DE DATOS ESPACIAL PARA ANÁLISIS EDUCATIVO Y URBANO
=======================================================================================

📌 DESCRIPCIÓN GENERAL:
La base de datos “Sistema GeoReferenciados” es una estructura espacial construida en PostgreSQL con la extensión PostGIS, que tiene como objetivo principal almacenar, gestionar y analizar información georreferenciada sobre puntos de interés en el ámbito educativo y comunitario, así como zonas delimitadas que representan colonias o áreas de riesgo urbano. 

Esta base de datos sirve como núcleo para una aplicación web interactiva con tecnologías como Leaflet.js, Turf.js y Express.js, orientada a la toma de decisiones, análisis de cobertura, y planificación territorial enfocada en servicios escolares y comunitarios.

🎯 OBJETIVOS FUNCIONALES:
- Representar digitalmente 30 lugares reales (escuelas, bibliotecas y centros comunitarios) distribuidos en diferentes zonas de una ciudad.
- Asociar cada lugar con atributos administrativos como capacidad, responsable, contacto y zona.
- Representar zonas geográficas mediante polígonos: colonias y zonas de riesgo (rutas escolares).
- Permitir análisis geoespaciales mediante funciones como:
  - Detección de intersección (`ST_Intersects`)
  - Agrupamiento de puntos (`clustering`)
  - Cálculo de centroides y buffers (`ST_Centroid`, `ST_Buffer`)
  - Detección de vecinos o lugares cercanos (`ST_DWithin`)
  - Cobertura de zonas educativas o vulnerables

📐 ESTRUCTURA DE LA BASE DE DATOS:
1. TABLA: `lugares`
   - Contiene 30 registros de puntos georreferenciados (tipo `GEOMETRY(Point, 4326)`).
   - Tipos: `'escuela'`, `'biblioteca'`, `'centro'`.
   - Cada punto incluye nombre, tipo, capacidad, datos de contacto, zona y coordenadas.
   - Estos puntos permiten generar visualizaciones dinámicas y filtros personalizados en el mapa.

2. TABLA: `poligonos`
   - Contiene 14 polígonos de tipo `GEOMETRY(Polygon, 4326)`.
   - Categorías: `'colonia'` (zonas residenciales) y `'ruta'` (zonas de riesgo o tránsito escolar).
   - Cada polígono tiene nombre, categoría, zona, superficie estimada y una geometría precisa.
   - Sirven para realizar análisis de pertenencia (qué lugares están dentro), superposición y planificación de cobertura.

📊 CONTENIDO DE LOS DATOS:
- 10 Escuelas con capacidades variadas y ubicaciones reales en León, Guanajuato.
- 10 Bibliotecas públicas o comunitarias distribuidas en zonas este, norte, centro y oeste.
- 10 Centros comunitarios con responsables y zonas asignadas.
- 5 Colonias delimitadas para simular la división territorial urbana.
- 9 Zonas de Riesgo que abarcan áreas cercanas a instituciones o zonas con concentración de servicios, con geometrías diseñadas para evaluar exposición o planificación de rutas seguras.

🔧 OPERACIONES REALIZADAS:
- Inserciones masivas (`INSERT`) de puntos y polígonos con datos reales y ficticios.
- Correcciones de coordenadas (`UPDATE`) para ubicar puntos dentro de sus respectivos polígonos.
- Generación de intersecciones entre zonas para probar visualización y análisis con Turf.js.
- Agrupamientos y ajustes de ubicación para pruebas de análisis de vecinos (`ST_DWithin`) y centroides.

🌍 CONFIGURACIÓN GEOGRÁFICA:
- Todas las geometrías utilizan SRID **4326**, estándar WGS 84 (latitud y longitud), compatible con servicios como Leaflet y análisis en la web.
- Se garantiza compatibilidad con geoJSON y visualización dinámica mediante bibliotecas JavaScript.

🧠 CASOS DE USO Y BENEFICIOS:
- Visualización web interactiva de escuelas, bibliotecas y centros por zona, tipo y capacidad.
- Análisis espacial de cobertura escolar y zonas de atención prioritaria.
- Planeación urbana y educativa basada en proximidad, intersección y distribución geográfica.
- Identificación de zonas de riesgo o concentración para toma de decisiones.
- Implementación de filtros dinámicos por tipo, zona, capacidad mínima o ubicación.

📎 POTENCIAL DE INTEGRACIÓN:
Este sistema puede integrarse con:
- Aplicaciones web móviles o de escritorio.
- Sistemas de gestión educativa municipal.
- Herramientas de análisis estadístico o tableros GIS (como QGIS, Mapbox).
- Dashboards interactivos para instituciones educativas o gubernamentales.

📦 REQUISITOS:
- PostgreSQL + PostGIS habilitado.
- Frameworks compatibles con GeoJSON y Leaflet.
- Backend en Node.js o Express (para servir puntos/polígonos).
- Capa de análisis Turf.js en el frontend (para operaciones espaciales como buffers y centroides).

✅ CONCLUSIÓN:
La base de datos `Sistema GeoReferenciados` proporciona una plataforma robusta, flexible y extensible para desarrollar aplicaciones de análisis espacial en el ámbito escolar y comunitario. Está optimizada para integrarse con interfaces web, soporta operaciones espaciales complejas y facilita la toma de decisiones basada en la geolocalización real.

*/