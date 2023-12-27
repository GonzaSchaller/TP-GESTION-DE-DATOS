USE [GD2C2023]
GO

/*
--Drop FUNCIONES
IF(EXISTS(Select [name] from sys.objects WHERE [name] = 'CALCULAR_RANGO_ETARIO'))
DROP FUNCTION LOS_GESTIONADORES.CALCULAR_RANGO_ETARIO

IF(EXISTS(Select [name] from sys.objects WHERE [name] = 'CALCULAR_UBICACION'))
DROP FUNCTION LOS_GESTIONADORES.CALCULAR_UBICACION

IF(EXISTS(Select [name] from sys.objects WHERE [name] = 'CALCULAR_RANGO_M2'))
DROP FUNCTION LOS_GESTIONADORES.CALCULAR_RANGO_M2

--Drop TABLAS
IF(EXISTS(Select [name] from sys.tables WHERE [name] = 'BI_ANUNCIO'))
DROP TABLE LOS_GESTIONADORES.BI_ANUNCIO

IF(EXISTS(Select [name] from sys.tables WHERE [name] = 'BI_VENTA'))
DROP TABLE LOS_GESTIONADORES.BI_VENTA

IF(EXISTS(Select [name] from sys.tables WHERE [name] = 'BI_ALQUILER'))
DROP TABLE LOS_GESTIONADORES.BI_ALQUILER

IF(EXISTS(Select [name] from sys.tables WHERE [name] = 'BI_PAGO_ALQUILER'))
DROP TABLE LOS_GESTIONADORES.BI_PAGO_ALQUILER

IF(EXISTS(Select [name] from sys.tables WHERE [name] = 'BI_TIPO_INMUEBLE'))
DROP TABLE LOS_GESTIONADORES.BI_TIPO_INMUEBLE

IF(EXISTS(Select [name] from sys.tables WHERE [name] = 'BI_TIEMPO'))
DROP TABLE LOS_GESTIONADORES.BI_TIEMPO

IF(EXISTS(Select [name] from sys.tables WHERE [name] = 'BI_TIPO_AMBIENTE'))
DROP TABLE LOS_GESTIONADORES.BI_TIPO_AMBIENTE

IF(EXISTS(Select [name] from sys.tables WHERE [name] = 'BI_TIPO_OPERACION'))
DROP TABLE LOS_GESTIONADORES.BI_TIPO_OPERACION

IF(EXISTS(Select [name] from sys.tables WHERE [name] = 'BI_UBICACION'))
DROP TABLE LOS_GESTIONADORES.BI_UBICACION

IF(EXISTS(Select [name] from sys.tables WHERE [name] = 'BI_TIPO_MONEDA'))
DROP TABLE LOS_GESTIONADORES.BI_TIPO_MONEDA

IF(EXISTS(Select [name] from sys.tables WHERE [name] = 'BI_SUCURSAL'))
DROP TABLE LOS_GESTIONADORES.BI_SUCURSAL

IF(EXISTS(Select [name] from sys.tables WHERE [name] = 'BI_RANGO_M2'))
DROP TABLE LOS_GESTIONADORES.BI_RANGO_M2

IF(EXISTS(Select [name] from sys.tables WHERE [name] = 'BI_RANGO_ETARIO'))
DROP TABLE LOS_GESTIONADORES.BI_RANGO_ETARIO

IF(EXISTS(Select [name] from sys.tables WHERE [name] = 'BI_ESTADO_ANUNCIO'))
DROP TABLE LOS_GESTIONADORES.BI_ESTADO_ANUNCIO

--Drop procedures

IF(EXISTS(Select [name] from sys.procedures WHERE [name] = 'MIGRAR_BI_TIEMPO'))
DROP PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_TIEMPO

IF(EXISTS(Select [name] from sys.procedures WHERE [name] = 'MIGRAR_BI_UBICACION'))
DROP PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_UBICACION

IF(EXISTS(Select [name] from sys.procedures WHERE [name] = 'MIGRAR_BI_TIPO_INMUEBLE'))
DROP PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_TIPO_INMUEBLE

IF(EXISTS(Select [name] from sys.procedures WHERE [name] = 'MIGRAR_BI_TIPO_AMBIENTE'))
DROP PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_TIPO_AMBIENTE

IF(EXISTS(Select [name] from sys.procedures WHERE [name] = 'MIGRAR_BI_TIPO_MONEDA'))
DROP PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_TIPO_MONEDA

IF(EXISTS(Select [name] from sys.procedures WHERE [name] = 'MIGRAR_BI_TIPO_OPERACION'))
DROP PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_TIPO_OPERACION

IF(EXISTS(Select [name] from sys.procedures WHERE [name] = 'MIGRAR_BI_ESTADO_ANUNCIO'))
DROP PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_ESTADO_ANUNCIO

IF(EXISTS(Select [name] from sys.procedures WHERE [name] = 'MIGRAR_BI_SUCURSAL'))
DROP PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_SUCURSAL

IF(EXISTS(Select [name] from sys.procedures WHERE [name] = 'MIGRAR_BI_ANUNCIO'))
DROP PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_ANUNCIO

IF(EXISTS(Select [name] from sys.procedures WHERE [name] = 'MIGRAR_BI_VENTA'))
DROP PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_VENTA

IF(EXISTS(Select [name] from sys.procedures WHERE [name] = 'MIGRAR_BI_ALQUILER'))
DROP PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_ALQUILER

IF(EXISTS(Select [name] from sys.procedures WHERE [name] = 'MIGRAR_BI_PAGO_ALQUILER'))
DROP PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_PAGO_ALQUILER

IF(EXISTS(Select [name] from sys.procedures WHERE [name] = 'MIGRAR_RANGO_ETARIO'))
DROP PROCEDURE LOS_GESTIONADORES.MIGRAR_RANGO_ETARIO

IF(EXISTS(Select [name] from sys.procedures WHERE [name] = 'MIGRAR_RANGO_M2'))
DROP PROCEDURE LOS_GESTIONADORES.MIGRAR_RANGO_M2

--Drop views

IF(EXISTS(Select [name] from sys.views WHERE [name] = 'DURACION_PROMEDIO_ANUNCIO'))
DROP VIEW LOS_GESTIONADORES.DURACION_PROMEDIO_ANUNCIO

IF(EXISTS(Select [name] from sys.views WHERE [name] = 'PRECIO_PROMEDIO_ANUNCIO'))
DROP VIEW LOS_GESTIONADORES.PRECIO_PROMEDIO_ANUNCIO

IF(EXISTS(Select [name] from sys.views WHERE [name] = 'BARRIOS_MAS_ELEGIDOS'))
DROP VIEW LOS_GESTIONADORES.BARRIOS_MAS_ELEGIDOS 

IF(EXISTS(Select [name] from sys.views WHERE [name] = 'PORCENTAJE_INCUMPLIMIENTO'))
DROP VIEW LOS_GESTIONADORES.PORCENTAJE_INCUMPLIMIENTO

IF(EXISTS(Select [name] from sys.views WHERE [name] = 'VISTA_PORCENTAJE_INCREMENTO_ALQUILER'))
DROP VIEW LOS_GESTIONADORES.VISTA_PORCENTAJE_INCREMENTO_ALQUILER 

IF(EXISTS(Select [name] from sys.views WHERE [name] = 'PROMEDIO_COMISION'))
DROP VIEW LOS_GESTIONADORES.PROMEDIO_COMISION 

IF(EXISTS(Select [name] from sys.views WHERE [name] = 'VISTA_PORCENTAJE_OPERACIONES'))
DROP VIEW LOS_GESTIONADORES.VISTA_PORCENTAJE_OPERACIONES 

IF(EXISTS(Select [name] from sys.views WHERE [name] = 'PRECIO_PROMEDIO_M2'))
DROP VIEW LOS_GESTIONADORES.PRECIO_PROMEDIO_M2 

IF(EXISTS(Select [name] from sys.views WHERE [name] = 'MONTO_CIERRE_CONTRATOS'))
DROP VIEW LOS_GESTIONADORES.MONTO_CIERRE_CONTRATOS 

*/

CREATE FUNCTION LOS_GESTIONADORES.CALCULAR_RANGO_ETARIO(@FECHA_NAC DATETIME2(3))
	RETURNS INT
BEGIN
	DECLARE @EDAD INT
	DECLARE @COD_RANGO_ETARIO INT
	
	SET @EDAD = YEAR(GETDATE()) - YEAR(@FECHA_NAC)

	IF @EDAD < 25
		SET @COD_RANGO_ETARIO = 1
    
	IF @EDAD BETWEEN 25 AND 35 
		SET @COD_RANGO_ETARIO = 2

	IF @EDAD BETWEEN 35 AND 50
		SET @COD_RANGO_ETARIO = 3

	IF @EDAD > 50
		SET @COD_RANGO_ETARIO = 4

	RETURN @COD_RANGO_ETARIO
END
GO

--Ubicacion
CREATE FUNCTION LOS_GESTIONADORES.CALCULAR_UBICACION(@direccion_id int)
RETURNS INT
AS
BEGIN

    DECLARE @UBICACION_ID INT;

    SELECT DISTINCT @UBICACION_ID = u.ubicacion_id 
    FROM LOS_GESTIONADORES.BI_UBICACION u
    JOIN LOS_GESTIONADORES.BARRIO b ON u.barrio = b.nombre
	JOIN LOS_GESTIONADORES.LOCALIDAD l ON b.localidad_id = l.localidad_id AND l.nombre = u.localidad
    JOIN LOS_GESTIONADORES.DIRECCION d ON b.barrio_id = d.barrio_id
	JOIN LOS_GESTIONADORES.Provincia p ON B.provincia_id = P.provincia_id and p.nombre = u.provincia
    WHERE d.direccion_id = @direccion_id
    RETURN @UBICACION_ID;
END
GO

--Rango m2
CREATE FUNCTION LOS_GESTIONADORES.CALCULAR_RANGO_M2(@SUPERFICIE INT)
    RETURNS INT
BEGIN
    DECLARE @COD_RANGO_M2 INT

    IF @SUPERFICIE < 35
        SET @COD_RANGO_M2 = 1

    IF @SUPERFICIE BETWEEN 35 AND 55
        SET @COD_RANGO_M2 = 2

    IF @SUPERFICIE BETWEEN 55 AND 75
        SET @COD_RANGO_M2 = 3

    IF @SUPERFICIE BETWEEN 75 AND 100
        SET @COD_RANGO_M2 = 4

    IF @SUPERFICIE > 100
        SET @COD_RANGO_M2 = 5

    RETURN @COD_RANGO_M2
END
GO
-- MIGRACIONES
CREATE PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_TIEMPO
 AS
  BEGIN
    INSERT INTO LOS_GESTIONADORES.BI_TIEMPO (tiempo_anio,numero_cuatrimestre, tiempo_mes)
		SELECT DISTINCT YEAR(fecha_publicacion),
CASE WHEN  MONTH(fecha_publicacion) BETWEEN 1 AND 4 THEN 1
WHEN  MONTH(fecha_publicacion) BETWEEN 5 AND 8 THEN 2
ELSE 3
END
as cuatrimestre,
MONTH(fecha_publicacion)
		FROM LOS_GESTIONADORES.ANUNCIO
	UNION
		SELECT DISTINCT YEAR(fecha_inicio),
CASE WHEN  MONTH(fecha_inicio) BETWEEN 1 AND 4 THEN 1
WHEN  MONTH(fecha_inicio) BETWEEN 5 AND 8 THEN 2
ELSE 3
END
as cuatrimestre,
MONTH(fecha_inicio)
		FROM LOS_GESTIONADORES.Alquiler
  END
GO

--Rango Etario
CREATE PROCEDURE LOS_GESTIONADORES.MIGRAR_RANGO_ETARIO
AS
BEGIN
    INSERT INTO LOS_GESTIONADORES.BI_RANGO_ETARIO(rango_etario_id, descripcion)
    VALUES(1, '< 25')
    INSERT INTO LOS_GESTIONADORES.BI_RANGO_ETARIO(rango_etario_id, descripcion)
    VALUES(2, '25-35')
    INSERT INTO LOS_GESTIONADORES.BI_RANGO_ETARIO(rango_etario_id, descripcion)
    VALUES(3, '35-50')
    INSERT INTO LOS_GESTIONADORES.BI_RANGO_ETARIO(rango_etario_id, descripcion)
    VALUES(4, '> 50')
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_UBICACION
 AS
  BEGIN
    INSERT INTO LOS_GESTIONADORES.BI_UBICACION (barrio, localidad, provincia)
		SELECT DISTINCT b.nombre, l.nombre, p.nombre
		FROM LOS_GESTIONADORES.barrio b JOIN LOS_GESTIONADORES.Localidad l ON (b.localidad_id = l.localidad_id)
JOIN LOS_GESTIONADORES.Provincia p ON (b.provincia_id = p.provincia_id)
  END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MIGRAR_RANGO_M2
AS
BEGIN

    INSERT INTO LOS_GESTIONADORES.BI_RANGO_M2(rango_m2_id, descripcion)
    VALUES(1, '< 35')
    INSERT INTO LOS_GESTIONADORES.BI_RANGO_M2(rango_m2_id, descripcion)
    VALUES(2, '35-55')
    INSERT INTO LOS_GESTIONADORES.BI_RANGO_M2(rango_m2_id, descripcion)
    VALUES(3, '55-75')
	INSERT INTO LOS_GESTIONADORES.BI_RANGO_M2(rango_m2_id, descripcion)
    VALUES(4, '75-100')
    INSERT INTO LOS_GESTIONADORES.BI_RANGO_M2(rango_m2_id, descripcion)
    VALUES(5, '> 100')

END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_TIPO_INMUEBLE
 AS
  BEGIN
    INSERT INTO LOS_GESTIONADORES.BI_TIPO_INMUEBLE(tipo_inmueble_id, descripcion)
SELECT DISTINCT tipo_inmueble_id, descripcion from LOS_GESTIONADORES.TIPO_INMUEBLE
  END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_TIPO_AMBIENTE
 AS
  BEGIN
    INSERT INTO LOS_GESTIONADORES.BI_TIPO_AMBIENTE (tipo_ambiente_id, tipo_ambiente)
		SELECT DISTINCT tipo_ambiente_id, descripcion
		FROM LOS_GESTIONADORES.Tipo_Ambiente
  END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_TIPO_MONEDA
 AS
  BEGIN
    INSERT INTO LOS_GESTIONADORES.BI_TIPO_MONEDA(moneda_id, descripcion)
SELECT DISTINCT moneda_id, descripcion from LOS_GESTIONADORES.TIPO_MONEDA	
  END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_TIPO_OPERACION
 AS
  BEGIN
    INSERT INTO LOS_GESTIONADORES.BI_TIPO_OPERACION(tipo_operacion_id, descripcion)
SELECT DISTINCT tipo_operacion_id, descripcion from LOS_GESTIONADORES.TIPO_OPERACION
  END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_SUCURSAL
 AS
  BEGIN
    INSERT INTO LOS_GESTIONADORES.BI_SUCURSAL(sucursal_id, nombre)
SELECT DISTINCT sucursal_id, nombre from LOS_GESTIONADORES.SUCURSAL
  END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_ESTADO_ANUNCIO
 AS
  BEGIN
    INSERT INTO LOS_GESTIONADORES.BI_ESTADO_ANUNCIO(estado_anuncio_id, descripcion)
SELECT DISTINCT estado_anuncio_id, descripcion from LOS_GESTIONADORES.Estado_Anuncio
  END
GO


CREATE PROCEDURE  LOS_GESTIONADORES.MIGRAR_BI_ANUNCIO
AS 
BEGIN
INSERT INTO LOS_GESTIONADORES.BI_ANUNCIO (
duracion_publicacion,
precio_total,
tipo_operacion_id,
ubicacion_id,
tipo_ambiente_id,
rango_m2_id,
tipo_moneda_id,
tipo_inmueble_id,
tiempo_id,
sucursal_id,
estado_anuncio_id
)
SELECT (DATEDIFF("d", a.fecha_publicacion, a.fecha_finalizacion))dias_diferencia, 
SUM(a.precio_publicado)precio, TP.tipo_operacion_id,
LOS_GESTIONADORES.CALCULAR_UBICACION(I.direccion_id)ubicacion, TA.tipo_ambiente_id,
LOS_GESTIONADORES.CALCULAR_RANGO_M2(I.superficie_total)superficie, TM.moneda_id , TI.tipo_inmueble_id, T.tiempo_id, S.sucursal_id,
EA.estado_anuncio_id
FROM LOS_GESTIONADORES.Anuncio A
INNER JOIN LOS_GESTIONADORES.BI_TIPO_OPERACION TP on (A.tipo_operacion_id =  TP.tipo_operacion_id)
INNER JOIN LOS_GESTIONADORES.INMUEBLE I ON (A.inmueble_id = I.inmueble_id)
INNER JOIN LOS_GESTIONADORES.BI_TIPO_AMBIENTE TA on (I.tipo_ambiente_id = TA.tipo_ambiente_id)
INNER JOIN LOS_GESTIONADORES.BI_TIPO_MONEDA TM on (a.moneda_id = TM.moneda_id)
INNER JOIN LOS_GESTIONADORES.BI_TIPO_INMUEBLE TI on (I.tipo_inmueble_id = TI.tipo_inmueble_id)
INNER JOIN LOS_GESTIONADORES.BI_TIEMPO T ON (T.tiempo_anio = YEAR(a.fecha_publicacion) AND T.tiempo_mes = MONTH(a.fecha_publicacion))
INNER JOIN LOS_GESTIONADORES.AGENTE AG on (a.agente_id = AG.agente_id)
INNER JOIN LOS_GESTIONADORES.BI_SUCURSAL S ON ( AG.sucursal_id = S.sucursal_id)
INNER JOIN LOS_GESTIONADORES.BI_ESTADO_ANUNCIO EA ON (A.estado_anuncio_id = EA.estado_anuncio_id)
GROUP BY fecha_publicacion, fecha_finalizacion, tp.tipo_operacion_id, TA.tipo_ambiente_id, 
TM.moneda_id, TI.tipo_inmueble_id, T.tiempo_id, S.sucursal_id, LOS_GESTIONADORES.CALCULAR_UBICACION(I.direccion_id),
LOS_GESTIONADORES.CALCULAR_RANGO_M2(I.superficie_total), EA.estado_anuncio_id
END
GO

CREATE PROCEDURE  LOS_GESTIONADORES.MIGRAR_BI_VENTA
AS
BEGIN
INSERT INTO LOS_GESTIONADORES.BI_VENTA(
ubicacion_id,
rango_etario_empleado_id,
tiempo_id,
sucursal_id,
tipo_inmueble_id,
total_contratos,
total_comision,
precio_total_por_m2,
tipo_operacion_id,
estado_anuncio_id,
tipo_moneda_id
 )
SELECT U.ubicacion_id, LOS_GESTIONADORES.CALCULAR_RANGO_ETARIO(AG.fecha_nacimiento)rango_etario,
 T.tiempo_id, S.sucursal_id, TI.tipo_inmueble_id, SUM(V.comision_inmobiliaria + V.precio_venta), 
 SUM(CAST(V.comision_inmobiliaria AS INT)), SUM(V.precio_venta / LOS_GESTIONADORES.CALCULAR_RANGO_M2(I.superficie_total)),
 TP.tipo_operacion_id, EA.estado_anuncio_id, TM.moneda_id
FROM LOS_GESTIONADORES.Venta V INNER JOIN LOS_GESTIONADORES.anuncio A ON (V.anuncio_id = A.anuncio_id)
INNER JOIN LOS_GESTIONADORES.agente AG ON (A.agente_id = AG.agente_id)
INNER JOIN LOS_GESTIONADORES.inmueble I ON (A.inmueble_id = I.inmueble_id)
INNER JOIN LOS_GESTIONADORES.BI_TIEMPO T ON (T.tiempo_anio = YEAR(V.fecha_venta) AND T.tiempo_mes = MONTH(V.fecha_venta))
INNER JOIN LOS_GESTIONADORES.BI_SUCURSAL S ON ( AG.sucursal_id = S.sucursal_id)
INNER JOIN LOS_GESTIONADORES.BI_TIPO_INMUEBLE TI on (I.tipo_inmueble_id = TI.tipo_inmueble_id)
INNER JOIN LOS_GESTIONADORES.BI_TIPO_OPERACION TP ON (A.tipo_operacion_id = TP.tipo_operacion_id)
INNER JOIN LOS_GESTIONADORES.BI_ESTADO_ANUNCIO EA ON (A.estado_anuncio_id = EA.estado_anuncio_id)
INNER JOIN LOS_GESTIONADORES.BI_TIPO_MONEDA TM on (a.moneda_id = TM.moneda_id)
INNER JOIN LOS_GESTIONADORES.BI_UBICACION U ON U.ubicacion_id = LOS_GESTIONADORES.CALCULAR_UBICACION(I.direccion_id)
GROUP BY U.ubicacion_id, LOS_GESTIONADORES.CALCULAR_RANGO_ETARIO(AG.fecha_nacimiento),
T.tiempo_id, S.sucursal_id, TI.tipo_inmueble_id, TP.tipo_operacion_id, EA.estado_anuncio_id, TM.moneda_id
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_ALQUILER
AS
BEGIN 
INSERT INTO LOS_GESTIONADORES.BI_ALQUILER(
total_comision,
total_contrato,
ubicacion_id,
rango_etario_inquilino,
rango_etario_empleado,
tiempo_id,
sucursal_id,
tipo_operacion_id,
estado_anuncio_id,
tipo_moneda_id
)
SELECT SUM(AL.comision), SUM(PA2.importe), U.ubicacion_id,
LOS_GESTIONADORES.CALCULAR_RANGO_ETARIO(I.fecha_nacimiento), LOS_GESTIONADORES.CALCULAR_RANGO_ETARIO(AG.fecha_nacimiento), 
T.tiempo_id, S.sucursal_id, TP.tipo_operacion_id, EA.estado_anuncio_id, TM.moneda_id
FROM LOS_GESTIONADORES.alquiler AL 
INNER JOIN LOS_GESTIONADORES.anuncio A ON (A.anuncio_id = AL.anuncio_id)
INNER JOIN LOS_GESTIONADORES.agente AG ON (A.agente_id= AG.agente_id)
INNER JOIN LOS_GESTIONADORES.inmueble INM ON (A.inmueble_id = INM.inmueble_id)
INNER JOIN LOS_GESTIONADORES.BI_TIEMPO T ON (T.tiempo_anio = YEAR(AL.fecha_inicio) AND T.tiempo_mes = MONTH(AL.fecha_inicio))
INNER JOIN LOS_GESTIONADORES.BI_SUCURSAL S ON ( AG.sucursal_id = S.sucursal_id)
INNER JOIN LOS_GESTIONADORES.BI_TIPO_OPERACION TP ON (A.tipo_operacion_id = TP.tipo_operacion_id)
INNER JOIN LOS_GESTIONADORES.BI_ESTADO_ANUNCIO EA ON (A.estado_anuncio_id = EA.estado_anuncio_id)
INNER JOIN LOS_GESTIONADORES.BI_TIPO_MONEDA TM on (a.moneda_id = TM.moneda_id)
INNER JOIN LOS_GESTIONADORES.inquilino I ON (I.inquilino_id = AL.inquilino_id)
INNER JOIN LOS_GESTIONADORES.Pago_Alquiler PA2 ON (PA2.alquiler_id = AL.alquiler_id)
INNER JOIN LOS_GESTIONADORES.BI_UBICACION U ON U.ubicacion_id = LOS_GESTIONADORES.CALCULAR_UBICACION(INM.direccion_id)
GROUP BY U.ubicacion_id,
LOS_GESTIONADORES.CALCULAR_RANGO_ETARIO(I.fecha_nacimiento), LOS_GESTIONADORES.CALCULAR_RANGO_ETARIO(AG.fecha_nacimiento), 
T.tiempo_id, S.sucursal_id, TP.tipo_operacion_id, EA.estado_anuncio_id, TM.moneda_id
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MIGRAR_BI_PAGO_ALQUILER
AS
BEGIN
INSERT INTO LOS_GESTIONADORES.BI_PAGO_ALQUILER(
cantidad_pagos_incumplidos,
total_incremento,
tiempo_id,
cantidad_pagos
)
SELECT query.total,
COALESCE((SELECT SUM(PA2.importe-PA1.importe) dif_importe FROM LOS_GESTIONADORES.pago_alquiler PA1 
		JOIN LOS_GESTIONADORES.pago_alquiler PA2 ON (PA1.alquiler_id = PA2.alquiler_id) 
		JOIN LOS_GESTIONADORES.Alquiler A ON (A.alquiler_id = PA1.alquiler_id)
		WHERE MONTH(PA1.fecha_pago) = MONTH(GETDATE()) AND MONTH(PA2.fecha_pago) - 1 = MONTH(GETDATE()) 
		AND  YEAR(PA1.fecha_pago) = YEAR(GETDATE()) AND YEAR(PA2.fecha_pago) = YEAR(GETDATE())
		AND PA2.importe >  PA1.importe AND A.fecha_fin <= GETDATE()),0)total_incremento, T.tiempo_id, COUNT(PA.pago_id)
FROM LOS_GESTIONADORES.pago_alquiler PA 
INNER JOIN LOS_GESTIONADORES.BI_TIEMPO T ON (T.tiempo_anio = YEAR(PA.fecha_pago) AND T.tiempo_mes = MONTH(PA.fecha_pago))
INNER JOIN (SELECT COUNT(*)total, T2.tiempo_id tiempo FROM LOS_GESTIONADORES.pago_alquiler PA2 
		INNER JOIN LOS_GESTIONADORES.BI_TIEMPO T2 ON (T2.tiempo_anio = YEAR(PA2.fecha_pago) AND T2.tiempo_mes = MONTH(PA2.fecha_pago))
		WHERE  fecha_vencimiento <= fecha_pago GROUP BY t2.tiempo_id)query ON query.tiempo = T.tiempo_id
GROUP BY T.tiempo_id, query.total
END
GO

--CREACION DE TABLAS
CREATE TABLE LOS_GESTIONADORES.BI_TIPO_INMUEBLE(
    tipo_inmueble_id INT PRIMARY KEY,
    descripcion NVARCHAR(100)
); 
GO

CREATE TABLE LOS_GESTIONADORES.BI_TIEMPO (
tiempo_id INT PRIMARY KEY IDENTITY(1,1),
tiempo_anio INT,
numero_cuatrimestre INT,
tiempo_mes INT
);
GO

CREATE TABLE LOS_GESTIONADORES.BI_TIPO_AMBIENTE (
    tipo_ambiente_id INT PRIMARY KEY,
    tipo_ambiente NVARCHAR(100)
);
GO

CREATE TABLE LOS_GESTIONADORES.BI_TIPO_OPERACION(
tipo_operacion_id INT PRIMARY KEY,
descripcion NVARCHAR(100)
);
GO

CREATE TABLE LOS_GESTIONADORES.BI_UBICACION(
ubicacion_id INT PRIMARY KEY IDENTITY(1,1),
barrio NVARCHAR(100),
localidad NVARCHAR(100),
provincia NVARCHAR(100)
);
GO

CREATE TABLE LOS_GESTIONADORES.BI_TIPO_MONEDA(
moneda_id INT PRIMARY KEY,
descripcion NVARCHAR(100)
);
GO

CREATE TABLE LOS_GESTIONADORES.BI_SUCURSAL(
sucursal_id INT PRIMARY KEY,
nombre NVARCHAR(100)
);
GO

CREATE TABLE LOS_GESTIONADORES.BI_RANGO_M2(
rango_m2_id INT PRIMARY KEY,
descripcion NVARCHAR(100)
);
GO

CREATE TABLE LOS_GESTIONADORES.BI_RANGO_ETARIO(
rango_etario_id INT PRIMARY KEY,
descripcion NVARCHAR(100)
);
GO

CREATE TABLE LOS_GESTIONADORES.BI_ESTADO_ANUNCIO(
estado_anuncio_id INT PRIMARY KEY,
descripcion NVARCHAR(100)
);
GO

--TABLAS DE HECHO
CREATE TABLE LOS_GESTIONADORES.BI_PAGO_ALQUILER (
cantidad_pagos_incumplidos INT NOT NULL,
total_incremento INT NOT NULL,
tiempo_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_TIEMPO(tiempo_id),
cantidad_pagos INT NOT NULL
);
GO

CREATE TABLE LOS_GESTIONADORES.BI_ANUNCIO(
duracion_publicacion INT NOT NULL,
precio_total INT NOT NULL,
tipo_operacion_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_TIPO_OPERACION(tipo_operacion_id),
ubicacion_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_UBICACION(ubicacion_id),
tipo_ambiente_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_TIPO_AMBIENTE(tipo_ambiente_id),
rango_m2_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_RANGO_M2(rango_m2_id),
tipo_moneda_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_TIPO_MONEDA(moneda_id),
tipo_inmueble_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_TIPO_INMUEBLE(tipo_inmueble_id),
tiempo_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_TIEMPO(tiempo_id),
sucursal_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_SUCURSAL (sucursal_id),
estado_anuncio_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_ESTADO_ANUNCIO(estado_anuncio_id)
);
GO

CREATE TABLE LOS_GESTIONADORES.BI_VENTA(
total_contratos INT NOT NULL,
total_comision INT NOT NULL,
precio_total_por_m2 INT NOT NULL,
ubicacion_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_UBICACION(ubicacion_id),
rango_etario_empleado_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.BI_RANGO_ETARIO(rango_etario_id),
tiempo_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_TIEMPO(tiempo_id),
sucursal_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.BI_SUCURSAL(sucursal_id),
tipo_inmueble_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.BI_TIPO_INMUEBLE(tipo_inmueble_id),
tipo_operacion_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_TIPO_OPERACION(tipo_operacion_id),
tipo_moneda_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_TIPO_MONEDA(moneda_id),
estado_anuncio_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_ESTADO_ANUNCIO(estado_anuncio_id));
GO

CREATE TABLE LOS_GESTIONADORES.BI_ALQUILER(
total_comision INT NOT NULL,
total_contrato INT NOT NULL,
ubicacion_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_UBICACION(ubicacion_id),
rango_etario_inquilino INT FOREIGN KEY references LOS_GESTIONADORES.BI_RANGO_ETARIO(rango_etario_id),
rango_etario_empleado INT FOREIGN KEY references LOS_GESTIONADORES.BI_RANGO_ETARIO(rango_etario_id),
tiempo_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_TIEMPO(tiempo_id),
sucursal_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.BI_SUCURSAL(sucursal_id),
tipo_operacion_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_TIPO_OPERACION(tipo_operacion_id),
tipo_moneda_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_TIPO_MONEDA(moneda_id),
estado_anuncio_id INT FOREIGN KEY references LOS_GESTIONADORES.BI_ESTADO_ANUNCIO(estado_anuncio_id)
);
GO

EXECUTE LOS_GESTIONADORES.MIGRAR_BI_SUCURSAL
EXECUTE LOS_GESTIONADORES.MIGRAR_BI_TIEMPO
EXECUTE LOS_GESTIONADORES.MIGRAR_BI_PAGO_ALQUILER
EXECUTE LOS_GESTIONADORES.MIGRAR_BI_TIPO_AMBIENTE
EXECUTE LOS_GESTIONADORES.MIGRAR_BI_TIPO_INMUEBLE
EXECUTE LOS_GESTIONADORES.MIGRAR_BI_TIPO_MONEDA
EXECUTE LOS_GESTIONADORES.MIGRAR_BI_TIPO_OPERACION
EXECUTE LOS_GESTIONADORES.MIGRAR_BI_UBICACION
EXECUTE LOS_GESTIONADORES.MIGRAR_RANGO_ETARIO
EXECUTE LOS_GESTIONADORES.MIGRAR_RANGO_M2
EXECUTE LOS_GESTIONADORES.MIGRAR_BI_ESTADO_ANUNCIO
EXECUTE LOS_GESTIONADORES.MIGRAR_BI_ALQUILER
EXECUTE LOS_GESTIONADORES.MIGRAR_BI_ANUNCIO
EXECUTE LOS_GESTIONADORES.MIGRAR_BI_VENTA
GO
-- VISTAS

--VISTA 1
CREATE VIEW LOS_GESTIONADORES.DURACION_PROMEDIO_ANUNCIO
AS
SELECT
	AVG(a.duracion_publicacion) as 'Duracion Promedio', op.descripcion as 'Tipo Operacion', u.barrio as 'Barrio', 
	ta.tipo_ambiente as 'Ambiente', t.tiempo_anio as 'Año', t.numero_cuatrimestre as 'Cuatrimestre'
FROM LOS_GESTIONADORES.BI_ANUNCIO a 
JOIN  LOS_GESTIONADORES.BI_TIPO_OPERACION op ON a.tipo_operacion_id = op.tipo_operacion_id 
JOIN LOS_GESTIONADORES.BI_UBICACION u ON a.ubicacion_id= u.ubicacion_id
JOIN LOS_GESTIONADORES.BI_TIPO_AMBIENTE ta ON a.tipo_ambiente_id = ta.tipo_ambiente_id
JOIN LOS_GESTIONADORES.BI_TIEMPO t ON a.tiempo_id = t.tiempo_id
WHERE t.tiempo_id = a.tiempo_id
GROUP BY op.descripcion,  u.barrio, ta.tipo_ambiente, t.tiempo_id, t.tiempo_anio, t.numero_cuatrimestre
GO

--VISTA 2
CREATE VIEW LOS_GESTIONADORES.PRECIO_PROMEDIO_ANUNCIO
AS
SELECT AVG(a.precio_total)  'Precio Promedio',
 op.descripcion as 'Tipo Operacion',
 ti.descripcion as 'Tipo Inmueble',
 r.descripcion as 'Rango m2',
t.tiempo_anio as 'Año',
  t.numero_cuatrimestre as 'Numero Cuatrimestre',
 tm.descripcion as 'Tipo Moneda'
FROM LOS_GESTIONADORES.BI_ANUNCIO a 
JOIN  LOS_GESTIONADORES.BI_TIPO_OPERACION op ON a.tipo_operacion_id = op.tipo_operacion_id 
JOIN LOS_GESTIONADORES.BI_TIPO_INMUEBLE ti ON a.tipo_inmueble_id= ti.tipo_inmueble_id
JOIN LOS_GESTIONADORES.BI_RANGO_M2  r ON a.rango_m2_id = r.rango_m2_id
JOIN LOS_GESTIONADORES.BI_TIEMPO t ON a.tiempo_id = t.tiempo_id
JOIN LOS_GESTIONADORES.BI_TIPO_MONEDA tm ON tm.moneda_id = a.tipo_moneda_id
WHERE t.tiempo_id = a.tiempo_id
GROUP BY  op.descripcion, ti.descripcion, r.descripcion,  t.tiempo_anio, t.numero_cuatrimestre, tm.descripcion
GO

--VISTA 3
CREATE VIEW LOS_GESTIONADORES.BARRIOS_MAS_ELEGIDOS AS
SELECT top 5
    Barrio,
    re.descripcion 'Rango etario inquilinos',
    t.numero_cuatrimestre'Numero Cuatrimestre',
    t.tiempo_anio'Año'
FROM
    LOS_GESTIONADORES.BI_ALQUILER a
    JOIN LOS_GESTIONADORES.BI_UBICACION u ON a.ubicacion_id = u.ubicacion_id
    JOIN LOS_GESTIONADORES.BI_RANGO_ETARIO re ON a.rango_etario_inquilino = re.rango_etario_id
    JOIN LOS_GESTIONADORES.BI_TIEMPO t ON a.tiempo_id = t.tiempo_id
GROUP BY u.barrio, re.descripcion, t.tiempo_anio, t.numero_cuatrimestre
ORDER BY count(Barrio) DESC
GO

--VISTA 4
CREATE VIEW LOS_GESTIONADORES.PORCENTAJE_INCUMPLIMIENTO AS
SELECT
    T.tiempo_anio AS Año,
    T.tiempo_mes AS Mes,
SUM(PA.cantidad_pagos_incumplidos*100) / SUM(PA.cantidad_pagos) AS PorcentajeIncumplimiento
FROM LOS_GESTIONADORES.BI_TIEMPO T
INNER JOIN LOS_GESTIONADORES.BI_PAGO_ALQUILER PA ON (T.tiempo_id = PA.tiempo_id)
GROUP BY T.tiempo_anio, T.tiempo_mes
GO

--VISTA 5 
CREATE VIEW LOS_GESTIONADORES.VISTA_PORCENTAJE_INCREMENTO_ALQUILER AS
SELECT
    T.tiempo_anio AS Año,
    T.tiempo_mes AS Mes,
    AVG(PA.total_incremento)*100 / PA.cantidad_pagos AS PorcentajePromedioIncremento
FROM
    LOS_GESTIONADORES.BI_TIEMPO T
INNER JOIN
    LOS_GESTIONADORES.BI_PAGO_ALQUILER PA ON T.tiempo_id = PA.tiempo_id
WHERE
    T.tiempo_mes IS NOT NULL
GROUP BY
    T.tiempo_anio, T.tiempo_mes, PA.cantidad_pagos
GO

--VISTA 6
CREATE VIEW LOS_GESTIONADORES.PRECIO_PROMEDIO_M2 AS
SELECT
    T.tipo_inmueble_id 'Tipo Inmueble',
    U.LOCALIDAD 'Localidad',
    TIE.tiempo_anio'Año',
    TIE.numero_cuatrimestre'Numero Cuatrimestre',
    AVG(V.precio_total_por_m2) 'Precio promedio'
FROM
    LOS_GESTIONADORES.BI_VENTA V
    INNER JOIN LOS_GESTIONADORES.BI_TIPO_INMUEBLE T ON V.tipo_inmueble_id = T.tipo_inmueble_id
    INNER JOIN LOS_GESTIONADORES.BI_TIEMPO TIE ON V.tiempo_id = TIE.tiempo_id
    INNER JOIN LOS_GESTIONADORES.BI_UBICACION U ON V.ubicacion_id = U.ubicacion_id
GROUP BY
    T.tipo_inmueble_id,
    U.LOCALIDAD,
    TIE.tiempo_anio,
    TIE.numero_cuatrimestre;
GO

--VISTA 7
CREATE VIEW LOS_GESTIONADORES.PROMEDIO_COMISION AS
SELECT
    Año,
    Cuatrimestre,
    TipoOperacion,
	Sucursal,
    total_comision/cantidad AS PromedioComision
FROM
(SELECT
	T.tiempo_anio AS Año,
	T.numero_cuatrimestre AS Cuatrimestre,
	TP.descripcion AS tipoOperacion,
    S.nombre AS Sucursal,
   SUM(CAST(total_comision AS BIGINT)) AS total_comision,
   COUNT(*) AS cantidad
FROM LOS_GESTIONADORES.BI_VENTA V 
JOIN
	LOS_GESTIONADORES.BI_TIEMPO T ON T.tiempo_id = V.tiempo_id
JOIN
    LOS_GESTIONADORES.BI_SUCURSAL S ON V.sucursal_id = S.sucursal_id
JOIN 
	LOS_GESTIONADORES.BI_TIPO_OPERACION TP ON TP.tipo_operacion_id = V.tipo_operacion_id
JOIN 
	LOS_GESTIONADORES.BI_ESTADO_ANUNCIO EA ON (V.estado_anuncio_id = EA.estado_anuncio_id)
WHERE EA.descripcion = 'Vendido' 
GROUP BY
    T.tiempo_anio,
	T.numero_cuatrimestre,
	TP.descripcion,
    S.nombre
UNION 
SELECT
	T.tiempo_anio AS Año,
	T.numero_cuatrimestre AS Cuatrimestre,
	OP.descripcion AS tipoOperacion,
    S.nombre AS Sucursal,
	sum(CAST(total_comision AS BIGINT)) AS total_comision,
	COUNT(*) AS cantidad
FROM LOS_GESTIONADORES.BI_ALQUILER A
JOIN
	LOS_GESTIONADORES.BI_TIEMPO T ON T.tiempo_id = A.tiempo_id
JOIN
    LOS_GESTIONADORES.BI_SUCURSAL S ON S.sucursal_id = A.sucursal_id
JOIN 
	LOS_GESTIONADORES.BI_TIPO_OPERACION OP ON (A.tipo_operacion_id = OP.tipo_operacion_id)
JOIN 
	LOS_GESTIONADORES.BI_ESTADO_ANUNCIO EA ON (A.estado_anuncio_id = EA.estado_anuncio_id)
WHERE EA.descripcion = 'Alquilado' 
GROUP BY
    T.tiempo_anio,
	T.numero_cuatrimestre,
	OP.descripcion,
    S.nombre
)AS query 
GROUP BY
Año, Cuatrimestre, tipoOperacion, Sucursal, total_comision/cantidad
GO

--VISTA 8
CREATE VIEW LOS_GESTIONADORES.VISTA_PORCENTAJE_OPERACIONES AS
SELECT
    Año,
    Sucursal,
	RangoEtario,
	SUM(operacionConcretadas)*100 / (SELECT COUNT(*) FROM LOS_GESTIONADORES.BI_ANUNCIO A JOIN
	LOS_GESTIONADORES.BI_TIEMPO T ON T.tiempo_id = A.tiempo_id WHERE T.tiempo_anio = Año) PocentajeOperaciones
FROM(
SELECT
	T.tiempo_anio AS Año,
    S.nombre AS Sucursal,
    RV.descripcion AS RangoEtario,
    COUNT(*) AS operacionConcretadas
FROM LOS_GESTIONADORES.BI_VENTA V 
JOIN
	LOS_GESTIONADORES.BI_TIEMPO T ON T.tiempo_id = V.tiempo_id
JOIN
    LOS_GESTIONADORES.BI_RANGO_ETARIO RV ON RV.rango_etario_id = V.rango_etario_empleado_id
JOIN
    LOS_GESTIONADORES.BI_SUCURSAL S ON V.sucursal_id = S.sucursal_id
JOIN 
	LOS_GESTIONADORES.BI_ESTADO_ANUNCIO EA ON (V.estado_anuncio_id = EA.estado_anuncio_id)
WHERE EA.descripcion = 'Vendido' 

GROUP BY
    T.tiempo_anio,
    S.nombre,
    RV.descripcion

UNION 

SELECT
	T.tiempo_anio AS Año,
    S.nombre AS Sucursal,
    RA.descripcion AS RangoEtario,
    COUNT(*) AS operacionConcretadas
FROM LOS_GESTIONADORES.BI_ALQUILER A 
JOIN
	LOS_GESTIONADORES.BI_TIEMPO T ON T.tiempo_id = A.tiempo_id
JOIN
    LOS_GESTIONADORES.BI_RANGO_ETARIO RA ON RA.rango_etario_id = A.rango_etario_empleado
JOIN
    LOS_GESTIONADORES.BI_SUCURSAL S ON A.sucursal_id = S.sucursal_id
JOIN 
	LOS_GESTIONADORES.BI_ESTADO_ANUNCIO EA ON (A.estado_anuncio_id = EA.estado_anuncio_id)
WHERE EA.descripcion = 'Alquilado' 
GROUP BY
    T.tiempo_anio,
    S.nombre,
    RA.descripcion
)AS query
GROUP BY Año, Sucursal, RangoEtario
GO

--VISTA 9
CREATE VIEW LOS_GESTIONADORES.MONTO_CIERRE_CONTRATOS AS
SELECT 
Moneda,
Sucursal,
Anio, 
Cuatrimestre,
TipoOperacion,
MontoCierreContratos
FROM(
SELECT 
   MA.descripcion AS moneda,
    SA.nombre AS sucursal,
    TIA.tiempo_anio AS anio,
    TIA.numero_cuatrimestre AS cuatrimestre,
	TP.descripcion AS tipoOperacion,
    SUM(CAST(A.total_contrato AS BIGINT)) AS MontoCierreContratos
FROM
    LOS_GESTIONADORES.BI_ALQUILER A 
JOIN LOS_GESTIONADORES.BI_TIPO_MONEDA MA ON MA.moneda_id = A.tipo_moneda_id
JOIN LOS_GESTIONADORES.BI_SUCURSAL SA ON SA.sucursal_id = A.sucursal_id 
JOIN LOS_GESTIONADORES.BI_TIEMPO TIA ON TIA.tiempo_id = A.tiempo_id 
JOIN LOS_GESTIONADORES.BI_TIPO_OPERACION TP ON TP.tipo_operacion_id = A.tipo_operacion_id 
GROUP BY MA.descripcion, SA.nombre, TIA.tiempo_anio, TIA.numero_cuatrimestre, TP.descripcion

UNION ALL

SELECT 
   MV.descripcion AS moneda,
    SV.nombre AS sucursal,
    TIV.tiempo_anio AS anio,
    TIV.numero_cuatrimestre AS cuatrimestre,
	TP.descripcion AS tipoOperacion,
    sum(cast(V.total_contratos as bigint)) AS MontoCierreContratos
FROM
    LOS_GESTIONADORES.BI_VENTA V 
JOIN LOS_GESTIONADORES.BI_TIPO_MONEDA MV ON MV.moneda_id = V.tipo_moneda_id
JOIN LOS_GESTIONADORES.BI_SUCURSAL SV ON SV.sucursal_id = V.sucursal_id
JOIN LOS_GESTIONADORES.BI_TIEMPO TIV ON TIV.tiempo_id = V.tiempo_id 
JOIN LOS_GESTIONADORES.BI_TIPO_OPERACION TP ON TP.tipo_operacion_id = V.tipo_operacion_id
GROUP BY MV.descripcion, SV.nombre, TIV.tiempo_anio, TIV.numero_cuatrimestre, TP.descripcion
)AS query
GROUP BY moneda, sucursal, anio, cuatrimestre, MontoCierreContratos, tipoOperacion