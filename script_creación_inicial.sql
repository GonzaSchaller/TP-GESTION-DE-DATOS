USE [GD2C2023]
GO
--DROP AND CREATE SCHEMA
/*DROP SCHEMA [LOS_GESTIONADORES]*/
/*CREATE SCHEMA [LOS_GESTIONADORES]
GO*/

--drop procedures
/*
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarAnuncio')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarAnuncio;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarEstado_Anuncio')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarEstado_Anuncio;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarTipo_Operacion')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarTipo_Operacion;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarInmueble')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarInmueble;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarAlquiler')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarAlquiler;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarComprador')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarComprador;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarDireccion')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarDireccion;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarSucursal')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarSucursal;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarVenta')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarVenta;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarAgente')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarAgente;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarPago_Alquiler')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarPago_Alquiler;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarPropietario')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarPropietario;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarTipo_Moneda')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarTipo_Moneda;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarPago_Venta')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarPago_Venta;
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarMedio_Pago')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarMedio_Pago;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarTipo_Ambiente')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarTipo_Ambiente;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarEstado_Inmueble')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarEstado_Inmueble;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarTipo_Inmueble')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarTipo_Inmueble;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarOrientacion')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarOrientacion;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarDisposicion')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarDisposicion;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarEstado_Alquiler')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarEstado_Alquiler;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarDetalle_Importe')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarDetalle_Importe;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarInquilino')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarInquilino;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarCaracteristica')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarCaracteristica;

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'MigrarTipo_Periodo')
	DROP PROCEDURE LOS_GESTIONADORES.MigrarTipo_Periodo;
GO

--Drops tablas
IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Caracteristica_Inmueble')
    DROP TABLE LOS_GESTIONADORES.Caracteristica_Inmueble;
	
IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Pago_Alquiler')
    DROP TABLE LOS_GESTIONADORES.Pago_Alquiler;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Detalle_Importe')
    DROP TABLE LOS_GESTIONADORES.Detalle_Importe;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Pago_Venta')
    DROP TABLE LOS_GESTIONADORES.Pago_Venta;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Venta')
    DROP TABLE LOS_GESTIONADORES.Venta;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Alquiler')
    DROP TABLE LOS_GESTIONADORES.Alquiler;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Anuncio')
    DROP TABLE LOS_GESTIONADORES.Anuncio;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Inmueble')
    DROP TABLE LOS_GESTIONADORES.Inmueble;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Tipo_Inmueble')
    DROP TABLE LOS_GESTIONADORES.Tipo_Inmueble;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Tipo_Ambiente')
    DROP TABLE LOS_GESTIONADORES.Tipo_Ambiente;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Propietario')
    DROP TABLE LOS_GESTIONADORES.Propietario;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Caracteristica')
    DROP TABLE LOS_GESTIONADORES.Caracteristica;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Orientacion')
    DROP TABLE LOS_GESTIONADORES.Orientacion;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Disposicion')
    DROP TABLE LOS_GESTIONADORES.Disposicion;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Estado_Inmueble')
    DROP TABLE LOS_GESTIONADORES.Estado_Inmueble;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Medio_Pago')
    DROP TABLE LOS_GESTIONADORES.Medio_Pago;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Estado_Alquiler')
    DROP TABLE LOS_GESTIONADORES.Estado_Alquiler;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Comprador')
    DROP TABLE LOS_GESTIONADORES.Comprador;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Agente')
    DROP TABLE LOS_GESTIONADORES.Agente;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Inquilino')
    DROP TABLE LOS_GESTIONADORES.Inquilino;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Sucursal')
    DROP TABLE LOS_GESTIONADORES.Sucursal;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Direccion')
    DROP TABLE LOS_GESTIONADORES.Direccion;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Barrio')
    DROP TABLE LOS_GESTIONADORES.Barrio;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Localidad')
    DROP TABLE LOS_GESTIONADORES.Localidad;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Provincia')
    DROP TABLE LOS_GESTIONADORES.Provincia;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Estado_Anuncio')
    DROP TABLE LOS_GESTIONADORES.Estado_Anuncio;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Tipo_Operacion')
    DROP TABLE LOS_GESTIONADORES.Tipo_Operacion;


IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Tipo_Periodo')
    DROP TABLE LOS_GESTIONADORES.Tipo_Periodo;

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'Tipo_Moneda')
    DROP TABLE LOS_GESTIONADORES.Tipo_Moneda;

GO
*/
-- MIGRACION DE DATOS
-- STORED PROCEDURES

CREATE PROCEDURE LOS_GESTIONADORES.MigrarEstado_Anuncio
AS
BEGIN
	INSERT INTO LOS_GESTIONADORES.ESTADO_ANUNCIO(descripcion)
SELECT DISTINCT 
	ANUNCIO_ESTADO
	FROM gd_esquema.Maestra M
	WHERE ANUNCIO_ESTADO IS NOT NULL
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarTipo_periodo
AS
BEGIN
	INSERT INTO LOS_GESTIONADORES.TIPO_PERIODO(descripcion)
SELECT DISTINCT 
	ANUNCIO_TIPO_PERIODO
	FROM gd_esquema.Maestra M
	WHERE ANUNCIO_TIPO_PERIODO IS NOT NULL
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarTipo_Operacion
AS
BEGIN
	INSERT INTO LOS_GESTIONADORES.TIPO_OPERACION(descripcion)
SELECT DISTINCT 
	ANUNCIO_TIPO_OPERACION
	FROM gd_esquema.Maestra M
	WHERE ANUNCIO_TIPO_OPERACION IS NOT NULL
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarInquilino
AS
BEGIN
    INSERT INTO LOS_GESTIONADORES.INQUILINO (dni, nombre, apellido, mail, telefono, fecha_nacimiento, fecha_registro)
    SELECT DISTINCT INQUILINO_DNI,
	INQUILINO_NOMBRE,
INQUILINO_APELLIDO,
INQUILINO_MAIL,
INQUILINO_TELEFONO,
INQUILINO_FECHA_NAC,
INQUILINO_FECHA_REGISTRO
    FROM gd_esquema.Maestra
    WHERE INQUILINO_DNI IS NOT NULL; 
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarTipo_Moneda
AS
BEGIN
	INSERT INTO LOS_GESTIONADORES.TIPO_MONEDA(descripcion)
SELECT DISTINCT 
	ANUNCIO_MONEDA
	FROM gd_esquema.Maestra M
	WHERE ANUNCIO_MONEDA IS NOT NULL
END
GO


CREATE PROCEDURE LOS_GESTIONADORES.MigrarComprador
AS
BEGIN
	INSERT INTO LOS_GESTIONADORES.COMPRADOR(dni, nombre, apellido, mail, telefono, fecha_nacimiento, fecha_registro)
SELECT DISTINCT 
COMPRADOR_DNI,
COMPRADOR_NOMBRE,
COMPRADOR_APELLIDO,
COMPRADOR_MAIL,
COMPRADOR_TELEFONO,
CASE when COMPRADOR_FECHA_NAC < COMPRADOR_FECHA_REGISTRO THEN COMPRADOR_FECHA_NAC
ELSE COMPRADOR_FECHA_REGISTRO
END,
CASE when COMPRADOR_FECHA_REGISTRO < COMPRADOR_FECHA_NAC THEN COMPRADOR_FECHA_NAC
ELSE COMPRADOR_FECHA_REGISTRO
END
FROM gd_esquema.Maestra M
WHERE COMPRADOR_NOMBRE IS NOT NULL;	
END
GO


CREATE PROCEDURE LOS_GESTIONADORES.MigrarDireccion
AS
BEGIN
    -- PROVINCIA
    INSERT INTO LOS_GESTIONADORES.PROVINCIA (nombre)
    SELECT DISTINCT SUCURSAL_PROVINCIA
    FROM gd_esquema.Maestra
    WHERE SUCURSAL_PROVINCIA NOT IN (SELECT nombre FROM LOS_GESTIONADORES.PROVINCIA);

	INSERT INTO LOS_GESTIONADORES.PROVINCIA (nombre)
    SELECT DISTINCT INMUEBLE_PROVINCIA
    FROM gd_esquema.Maestra
    WHERE INMUEBLE_PROVINCIA NOT IN (SELECT nombre FROM LOS_GESTIONADORES.PROVINCIA);
    -- LOCALIDAD
    INSERT INTO LOS_GESTIONADORES.LOCALIDAD (nombre, provincia_id)
    SELECT DISTINCT SUCURSAL_LOCALIDAD,
	(SELECT DISTINCT provincia_id FROM LOS_GESTIONADORES.PROVINCIA WHERE nombre = M.SUCURSAL_PROVINCIA)
    FROM gd_esquema.Maestra M
    WHERE SUCURSAL_LOCALIDAD NOT IN (SELECT nombre FROM LOS_GESTIONADORES.LOCALIDAD);

	INSERT INTO LOS_GESTIONADORES.LOCALIDAD (nombre, provincia_id)
    SELECT DISTINCT INMUEBLE_LOCALIDAD,
	(SELECT DISTINCT provincia_id FROM LOS_GESTIONADORES.PROVINCIA WHERE nombre = M.INMUEBLE_PROVINCIA)
    FROM gd_esquema.Maestra M
    WHERE INMUEBLE_LOCALIDAD NOT IN (SELECT nombre FROM LOS_GESTIONADORES.LOCALIDAD);

    --  BARRIO
    INSERT INTO LOS_GESTIONADORES.BARRIO (nombre, localidad_id, provincia_id)
    SELECT DISTINCT INMUEBLE_BARRIO,
	(SELECT DISTINCT localidad_id FROM LOS_GESTIONADORES.LOCALIDAD L join LOS_GESTIONADORES.PROVINCIA P 
	ON (L.provincia_id = P.provincia_id)
	WHERE L.nombre = M.INMUEBLE_LOCALIDAD and M.INMUEBLE_PROVINCIA = P.nombre),
	(SELECT DISTINCT provincia_id FROM LOS_GESTIONADORES.PROVINCIA P WHERE P.nombre = M.INMUEBLE_PROVINCIA)
    FROM gd_esquema.Maestra M
    WHERE INMUEBLE_BARRIO NOT IN (SELECT B.nombre FROM LOS_GESTIONADORES.BARRIO B)

    -- DIRECCION
    INSERT INTO LOS_GESTIONADORES.DIRECCION (calle, altura, barrio_id)
	SELECT DISTINCT
	CASE when SUBSTRING(M.INMUEBLE_DIRECCION, 4, PATINDEX('%[0-9]%', SUBSTRING(M.INMUEBLE_DIRECCION, 4, LEN(M.INMUEBLE_DIRECCION))) - 1) is null THEN 'N/A'
    ELSE SUBSTRING(M.INMUEBLE_DIRECCION,1,3)+SUBSTRING(M.INMUEBLE_DIRECCION, 4, PATINDEX('%[0-9]%', SUBSTRING(M.INMUEBLE_DIRECCION, 4, LEN(M.INMUEBLE_DIRECCION))) - 1)
	END,
	CASE when SUBSTRING(M.INMUEBLE_DIRECCION, PATINDEX('%[0-9]%', M.INMUEBLE_DIRECCION), LEN(M.INMUEBLE_DIRECCION)) is null THEN 'N/A'
    ELSE SUBSTRING(M.INMUEBLE_DIRECCION, PATINDEX('%[0-9]%', SUBSTRING(M.INMUEBLE_DIRECCION, 3, LEN(M.INMUEBLE_DIRECCION)) )+2, LEN(M.INMUEBLE_DIRECCION)) 
	END,
        (SELECT DISTINCT barrio_id FROM LOS_GESTIONADORES.BARRIO B join LOS_GESTIONADORES.PROVINCIA P ON (B.provincia_id = P.provincia_id)
		JOIN LOS_GESTIONADORES.LOCALIDAD L ON (B.localidad_id = L.localidad_id)
		WHERE B.nombre = M.INMUEBLE_BARRIO AND P.nombre = M.INMUEBLE_PROVINCIA AND L.nombre = M.INMUEBLE_LOCALIDAD AND B.nombre is not null)
    FROM gd_esquema.Maestra M
    WHERE INMUEBLE_DIRECCION IS NOT NULL and INMUEBLE_DIRECCION+INMUEBLE_BARRIO NOT IN (SELECT calle+altura+b.nombre FROM LOS_GESTIONADORES.DIRECCION D JOIN
	LOS_GESTIONADORES.BARRIO B ON (B.BARRIO_ID = D.BARRIO_ID))

	 INSERT INTO LOS_GESTIONADORES.DIRECCION (calle, altura)
    SELECT DISTINCT
	CASE when SUBSTRING(M.SUCURSAL_DIRECCION, 4, PATINDEX('%[0-9]%', SUBSTRING(M.SUCURSAL_DIRECCION, 4, LEN(M.SUCURSAL_DIRECCION))) - 1) is null THEN 'N/A'
    ELSE SUBSTRING(M.SUCURSAL_DIRECCION,1,3)+SUBSTRING(M.SUCURSAL_DIRECCION, 4, PATINDEX('%[0-9]%', SUBSTRING(M.SUCURSAL_DIRECCION, 4, LEN(M.SUCURSAL_DIRECCION))) - 1)
	END,
	CASE when SUBSTRING(M.SUCURSAL_DIRECCION, PATINDEX('%[0-9]%', M.SUCURSAL_DIRECCION), LEN(M.SUCURSAL_DIRECCION)) is null THEN 'N/A'
    ELSE SUBSTRING(M.SUCURSAL_DIRECCION, PATINDEX('%[0-9]%', SUBSTRING(M.SUCURSAL_DIRECCION, 3, LEN(M.SUCURSAL_DIRECCION)) )+2, LEN(M.SUCURSAL_DIRECCION)) 
	END
    FROM gd_esquema.Maestra M
    WHERE SUCURSAL_DIRECCION IS NOT NULL and SUCURSAL_DIRECCION NOT IN (SELECT calle+altura FROM LOS_GESTIONADORES.DIRECCION);
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarSucursal
AS
BEGIN
    INSERT INTO LOS_GESTIONADORES.SUCURSAL (sucursal_id, nombre, telefono, direccion_id)
    SELECT 
    DISTINCT M.SUCURSAL_CODIGO,
	M.SUCURSAL_NOMBRE,
    M.SUCURSAL_TELEFONO,
    D.direccion_id
	FROM LOS_GESTIONADORES.Direccion D
	INNER JOIN gd_esquema.Maestra M ON M.SUCURSAL_DIRECCION = (D.calle + D.altura)
	WHERE M.SUCURSAL_CODIGO IS NOT NULL AND M.SUCURSAL_CODIGO NOT IN (SELECT sucursal_id FROM LOS_GESTIONADORES.SUCURSAL);
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarAgente
AS 
BEGIN 
INSERT INTO  LOS_GESTIONADORES.AGENTE(dni, nombre, apellido, mail, telefono, fecha_nacimiento, fecha_registro, sucursal_id)
SELECT 
DISTINCT AGENTE_DNI,
AGENTE_NOMBRE,
AGENTE_APELLIDO,
AGENTE_MAIL,
AGENTE_TELEFONO,
AGENTE_FECHA_NAC,
AGENTE_FECHA_REGISTRO,
S.sucursal_id
FROM gd_esquema.Maestra M
INNER JOIN LOS_GESTIONADORES.SUCURSAL S ON (M.SUCURSAL_CODIGO = S.sucursal_id)
WHERE AGENTE_DNI IS NOT NULL
END
GO

CREATE PROCEDURE  LOS_GESTIONADORES.MigrarAnuncio
AS
BEGIN
INSERT INTO LOS_GESTIONADORES.anuncio(anuncio_id, fecha_publicacion, precio_publicado, costo_anuncio, fecha_finalizacion, agente_id, moneda_id, tipo_operacion_id,
inmueble_id, tipo_periodo_id , estado_anuncio_id)
SELECT
DISTINCT ANUNCIO_CODIGO,
ANUNCIO_FECHA_PUBLICACION,
ANUNCIO_PRECIO_PUBLICADO,
ANUNCIO_COSTO_ANUNCIO,
ANUNCIO_FECHA_FINALIZACION,
A.agente_id,
MO.moneda_id,
T.tipo_operacion_id,
I.inmueble_id,
TP.tipo_periodo_id, 
EA.estado_anuncio_id
FROM gd_esquema.Maestra M 
LEFT JOIN LOS_GESTIONADORES.agente A ON (M.AGENTE_DNI = A.dni AND M.AGENTE_NOMBRE = A.nombre)
INNER JOIN LOS_GESTIONADORES.Tipo_Moneda MO ON (M.ANUNCIO_MONEDA = MO.descripcion)
INNER JOIN LOS_GESTIONADORES.Tipo_Operacion T ON (M.ANUNCIO_TIPO_OPERACION = T.descripcion)
INNER JOIN LOS_GESTIONADORES.Tipo_Periodo TP ON (M.ANUNCIO_TIPO_PERIODO = TP.descripcion)
INNER JOIN LOS_GESTIONADORES.Estado_Anuncio EA ON  (M.ANUNCIO_ESTADO = EA.descripcion)
INNER JOIN LOS_GESTIONADORES.Inmueble I ON  (M.INMUEBLE_CODIGO = I.inmueble_codigo)
WHERE ANUNCIO_CODIGO IS NOT NULL AND M.ANUNCIO_CODIGO NOT IN (SELECT anuncio_id FROM LOS_GESTIONADORES.anuncio);
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarPropietario
AS
BEGIN
	INSERT INTO LOS_GESTIONADORES.PROPIETARIO(dni, nombre, apellido,  fecha_registro, telefono, mail, fecha_nacimiento)
SELECT 
	DISTINCT  PROPIETARIO_DNI,
	PROPIETARIO_NOMBRE,
	PROPIETARIO_APELLIDO,
	PROPIETARIO_FECHA_REGISTRO,
PROPIETARIO_TELEFONO,
PROPIETARIO_MAIL,
PROPIETARIO_FECHA_NAC
	FROM gd_esquema.Maestra M
	WHERE PROPIETARIO_NOMBRE IS NOT NULL
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarTipo_Ambiente
AS 
BEGIN
INSERT INTO LOS_GESTIONADORES.tipo_ambiente(descripcion)
SELECT DISTINCT INMUEBLE_CANT_AMBIENTES
FROM gd_esquema.Maestra
WHERE INMUEBLE_CANT_AMBIENTES IS NOT NULL
END 
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarEstado_Inmueble
AS 
BEGIN
INSERT INTO LOS_GESTIONADORES.estado_inmueble(descripcion)
SELECT DISTINCT INMUEBLE_ESTADO
FROM gd_esquema.Maestra
WHERE INMUEBLE_ESTADO IS NOT NULL
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarTipo_Inmueble
AS 
BEGIN
INSERT INTO LOS_GESTIONADORES.tipo_inmueble(descripcion)
SELECT DISTINCT INMUEBLE_TIPO_INMUEBLE
FROM gd_esquema.Maestra
WHERE INMUEBLE_TIPO_INMUEBLE IS NOT NULL
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarOrientacion
AS 
BEGIN
INSERT INTO LOS_GESTIONADORES.orientacion(descripcion)
SELECT DISTINCT INMUEBLE_ORIENTACION
FROM gd_esquema.Maestra
WHERE INMUEBLE_ORIENTACION IS NOT NULL
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarDisposicion
AS 
BEGIN
INSERT INTO LOS_GESTIONADORES.disposicion(descripcion)
SELECT DISTINCT INMUEBLE_DISPOSICION
FROM gd_esquema.Maestra
WHERE INMUEBLE_DISPOSICION IS NOT NULL
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarEstado_Alquiler
AS
BEGIN
	INSERT INTO LOS_GESTIONADORES.ESTADO_ALQUILER(descripcion)
SELECT DISTINCT 
	ALQUILER_ESTADO
	FROM gd_esquema.Maestra M
	WHERE ALQUILER_ESTADO IS NOT NULL
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarInmueble
AS
BEGIN
	INSERT INTO LOS_GESTIONADORES.Inmueble(inmueble_codigo, tipo_inmueble_id, descripcion, propietario_id, direccion_id, tipo_ambiente_id, superficie_total, disposicion_id, orientacion_id, estado_id, antiguedad, expensas, nombre_inmueble)
	SELECT DISTINCT M.INMUEBLE_CODIGO,
		T.tipo_inmueble_id,
		M.INMUEBLE_DESCRIPCION,
P.propietario_id, 
		D.direccion_id,
A.tipo_ambiente_id, 
		M.INMUEBLE_SUPERFICIETOTAL,
		I.disposicion_id,
		O.orientacion_id,
		E.estado_id,
		M.INMUEBLE_ANTIGUEDAD,
		M.INMUEBLE_EXPESAS,
		M.INMUEBLE_NOMBRE
	FROM gd_esquema.Maestra M
	INNER JOIN LOS_GESTIONADORES.Tipo_inmueble T ON M.INMUEBLE_TIPO_INMUEBLE = T.descripcion  
	INNER JOIN LOS_GESTIONADORES.Propietario P ON M.PROPIETARIO_DNI = P.dni AND M.PROPIETARIO_APELLIDO = P.apellido
	INNER JOIN LOS_GESTIONADORES.Direccion D ON M.INMUEBLE_DIRECCION = (D.calle+D.altura) AND M.INMUEBLE_BARRIO IN (SELECT NOMBRE FROM 
	LOS_GESTIONADORES.BARRIO B WHERE (B.BARRIO_ID = D.BARRIO_ID))
	INNER JOIN LOS_GESTIONADORES.Tipo_Ambiente A ON M.INMUEBLE_CANT_AMBIENTES = A.descripcion
	INNER JOIN LOS_GESTIONADORES.Disposicion I ON M.INMUEBLE_DISPOSICION = I.descripcion
	INNER JOIN LOS_GESTIONADORES.Orientacion O ON M.INMUEBLE_ORIENTACION = O.descripcion
	INNER JOIN LOS_GESTIONADORES.Estado_inmueble E ON M.INMUEBLE_ESTADO = E.descripcion
	WHERE INMUEBLE_CODIGO IS NOT NULL AND INMUEBLE_CODIGO NOT IN (SELECT inmueble_codigo FROM LOS_GESTIONADORES.Inmueble)
	END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarAlquiler
AS
BEGIN
	INSERT INTO LOS_GESTIONADORES.ALQUILER(alquiler_id, anuncio_id, inquilino_id, fecha_inicio, fecha_fin, deposito, comision, gastos_averiguaciones, estado_alquiler_id, cantidad_periodos)
SELECT DISTINCT 
	ALQUILER_CODIGO,
	A.anuncio_id,
	I.inquilino_id,
	ALQUILER_FECHA_INICIO,
	ALQUILER_FECHA_FIN,
	ALQUILER_DEPOSITO,
	ALQUILER_COMISION,
	ALQUILER_GASTOS_AVERIGUA,
	e.estado_id,
	ALQUILER_CANT_PERIODOS
	FROM gd_esquema.Maestra M
	INNER JOIN LOS_GESTIONADORES.ANUNCIO A ON M.ANUNCIO_FECHA_PUBLICACION = A.FECHA_PUBLICACION AND M.ANUNCIO_CODIGO = A.anuncio_id
INNER JOIN LOS_GESTIONADORES.INQUILINO I ON M.INQUILINO_DNI = I.DNI AND M.INQUILINO_NOMBRE = I.NOMBRE
INNER JOIN LOS_GESTIONADORES.ESTADO_ALQUILER E ON M.ALQUILER_ESTADO = E.DESCRIPCION
WHERE ALQUILER_CODIGO IS NOT NULL AND M.ALQUILER_CODIGO NOT IN (SELECT alquiler_id FROM LOS_GESTIONADORES.ALQUILER);
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarVenta
AS
BEGIN
	INSERT INTO LOS_GESTIONADORES.VENTA(venta_id, anuncio_id, comprador_id, fecha_venta, precio_venta, moneda_id, comision_inmobiliaria)
SELECT DISTINCT 
	M.VENTA_CODIGO,
	A.anuncio_id,
	C.comprador_id,
	M.VENTA_FECHA,
	M.VENTA_PRECIO_VENTA,
	P.moneda_id,
	M.VENTA_COMISION
	FROM gd_esquema.Maestra M
	INNER JOIN LOS_GESTIONADORES.ANUNCIO A ON M.ANUNCIO_FECHA_PUBLICACION = A.FECHA_PUBLICACION AND M.ANUNCIO_PRECIO_PUBLICADO = A.PRECIO_PUBLICADO
INNER JOIN LOS_GESTIONADORES.Comprador C ON M.COMPRADOR_DNI = C.dni
INNER JOIN LOS_GESTIONADORES.Tipo_moneda P ON M.VENTA_MONEDA = P.descripcion
WHERE VENTA_CODIGO IS NOT NULL
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarPago_Alquiler
AS
BEGIN
	INSERT INTO LOS_GESTIONADORES.PAGO_ALQUILER(pago_id, alquiler_id, fecha_pago, nro_periodo_pago, descripcion_periodo, fecha_inicio, fecha_fin, fecha_vencimiento, importe, medio_pago_id)
SELECT DISTINCT 
	M.PAGO_ALQUILER_CODIGO,
	A.alquiler_id,
	M.PAGO_ALQUILER_FECHA,
	M.PAGO_ALQUILER_NRO_PERIODO,
	M.PAGO_ALQUILER_DESC,
	M.PAGO_ALQUILER_FEC_INI,
	M.PAGO_ALQUILER_FEC_FIN,
M.PAGO_ALQUILER_FECHA_VENCIMIENTO,
M.PAGO_ALQUILER_IMPORTE,
P.medio_pago_id
	FROM gd_esquema.Maestra M
	INNER JOIN LOS_GESTIONADORES.ALQUILER A ON M.ALQUILER_CODIGO = A.alquiler_id 
INNER JOIN LOS_GESTIONADORES.MEDIO_PAGO P ON M.PAGO_ALQUILER_MEDIO_PAGO = P.descripcion
WHERE PAGO_ALQUILER_CODIGO IS NOT NULL
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarMedio_Pago
AS
BEGIN
    INSERT INTO LOS_GESTIONADORES.MEDIO_PAGO (descripcion)
    SELECT DISTINCT PAGO_ALQUILER_MEDIO_PAGO
    FROM gd_esquema.Maestra
    WHERE PAGO_ALQUILER_MEDIO_PAGO IS NOT NULL
    UNION
    SELECT DISTINCT PAGO_VENTA_MEDIO_PAGO
    FROM gd_esquema.Maestra
    WHERE PAGO_VENTA_MEDIO_PAGO IS NOT NULL AND PAGO_VENTA_MEDIO_PAGO != PAGO_ALQUILER_MEDIO_PAGO;
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarPago_Venta
AS
BEGIN
    -- PAGO_VENTA
    INSERT INTO LOS_GESTIONADORES.PAGO_VENTA (venta_id, moneda_id, cotizacion, importe, medio_pago_id)
    SELECT DISTINCT 
		V.venta_id, 
		TM.moneda_id, 
        PAGO_VENTA_COTIZACION,
        PAGO_VENTA_IMPORTE,
        MP.medio_pago_id 
    FROM gd_esquema.Maestra M
    LEFT JOIN LOS_GESTIONADORES.VENTA V ON M.VENTA_CODIGO = V.venta_id
    LEFT JOIN LOS_GESTIONADORES.TIPO_MONEDA TM ON M.PAGO_VENTA_MONEDA = TM.descripcion
    LEFT JOIN LOS_GESTIONADORES.MEDIO_PAGO MP ON M.PAGO_VENTA_MEDIO_PAGO = MP.descripcion
    WHERE M.PAGO_VENTA_COTIZACION IS NOT NULL;
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarDetalle_Importe
AS
BEGIN
	INSERT INTO LOS_GESTIONADORES.DETALLE_IMPORTE(alquiler_id, nro_periodo_inicio, nro_periodo_fin, precio)
SELECT DISTINCT 
	A.alquiler_id,
	CASE WHEN DETALLE_ALQ_NRO_PERIODO_INI IS NULL THEN 0
    ELSE DETALLE_ALQ_NRO_PERIODO_INI
	END,
	CASE WHEN DETALLE_ALQ_NRO_PERIODO_FIN IS NULL THEN 0
    ELSE DETALLE_ALQ_NRO_PERIODO_FIN
	END,
	CASE WHEN DETALLE_ALQ_PRECIO IS NULL THEN 0
    ELSE DETALLE_ALQ_PRECIO
	END
	FROM gd_esquema.Maestra M join LOS_GESTIONADORES.Alquiler A ON (ALQUILER_CODIGO = A.alquiler_id)
WHERE ALQUILER_CODIGO IS NOT NULL and DETALLE_ALQ_NRO_PERIODO_INI != DETALLE_ALQ_NRO_PERIODO_FIN
END
GO

CREATE PROCEDURE LOS_GESTIONADORES.MigrarCaracteristica AS
BEGIN
    INSERT INTO LOS_GESTIONADORES.Caracteristica (descripcion)
    VALUES ('Gas'), ('Wifi'), ('Calefaccion'), ('Cable');
INSERT INTO LOS_GESTIONADORES.Caracteristica_Inmueble ( caracteristica_id, inmueble_id)
SELECT DISTINCT c.caracteristica_id, i.inmueble_id
FROM gd_esquema.Maestra m
JOIN LOS_GESTIONADORES.Inmueble i ON (i.inmueble_codigo = m.INMUEBLE_CODIGO)
JOIN LOS_GESTIONADORES.Caracteristica c ON
    (m.INMUEBLE_CARACTERISTICA_WIFI = 1 AND c.descripcion = 'Wifi')
    OR
    (m.INMUEBLE_CARACTERISTICA_CALEFACCION = 1 AND c.descripcion = 'Calefaccion')
    OR
    (m.INMUEBLE_CARACTERISTICA_CABLE = 1 AND c.descripcion = 'Cable')
    OR
    (m.INMUEBLE_CARACTERISTICA_GAS = 1 AND c.descripcion = 'Gas');
END
GO

-- CREACION DE TABLAS
CREATE TABLE  LOS_GESTIONADORES.Tipo_Moneda (
moneda_id INT PRIMARY KEY IDENTITY (1,1),
descripcion NVARCHAR(100) NOT NULL
);

CREATE TABLE  LOS_GESTIONADORES.Estado_Anuncio (
estado_anuncio_id INT PRIMARY KEY IDENTITY (1,1),
descripcion NVARCHAR(100) NOT NULL
);

CREATE TABLE LOS_GESTIONADORES.Tipo_Periodo(
tipo_periodo_id INT PRIMARY KEY IDENTITY (1,1),
descripcion NVARCHAR(100) NOT NULL
);

CREATE TABLE  LOS_GESTIONADORES.Tipo_Operacion(
tipo_operacion_id INT PRIMARY KEY IDENTITY (1,1),
descripcion NVARCHAR(100) NOT NULL
);

CREATE TABLE  LOS_GESTIONADORES.Provincia (
provincia_id INT PRIMARY KEY IDENTITY (1,1),
nombre NVARCHAR(100) NOT NULL
);

CREATE TABLE  LOS_GESTIONADORES.Localidad (
localidad_id INT PRIMARY KEY IDENTITY (1,1),
nombre NVARCHAR(100) NOT NULL,
provincia_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.Provincia(provincia_id)
);

CREATE TABLE  LOS_GESTIONADORES.Barrio (
barrio_id INT PRIMARY KEY IDENTITY (1,1),
nombre NVARCHAR(100) DEFAULT('N/A'),
localidad_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.localidad(localidad_id),
provincia_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.Provincia(provincia_id)
);


CREATE TABLE  LOS_GESTIONADORES.Direccion (
direccion_id INT PRIMARY KEY IDENTITY (1,1),
calle VARCHAR(50) NOT NULL,
altura VARCHAR(50) NOT NULL, 
barrio_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.barrio(barrio_id)
);

CREATE TABLE  LOS_GESTIONADORES.Sucursal (
sucursal_id numeric(18,0) PRIMARY KEY,
nombre NVARCHAR(100) NOT NULL DEFAULT('N/A'),
telefono NVARCHAR(100) NOT NULL,
direccion_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.direccion(direccion_id)
);

CREATE TABLE  LOS_GESTIONADORES.Inquilino (
inquilino_id INT PRIMARY KEY IDENTITY (1,1),
nombre NVARCHAR(100) NOT NULL,
apellido NVARCHAR(100) NOT NULL,
mail NVARCHAR(100) NOT NULL,
telefono numeric(18,0) NOT NULL,
dni numeric(18,0) NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
fecha_registro DATETIME NOT NULL,
CHECK(fecha_nacimiento  <= fecha_registro)
);

CREATE TABLE  LOS_GESTIONADORES.Agente (
agente_id INT PRIMARY KEY IDENTITY (1,1),
dni numeric(18,0) NOT NULL, 
nombre NVARCHAR(100) NOT NULL,
apellido NVARCHAR(100)NOT NULL,
mail NVARCHAR(100) NOT NULL,
telefono NUMERIC(18,0) NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
fecha_registro DATETIME NOT NULL,
sucursal_id numeric(18,0) FOREIGN KEY REFERENCES LOS_GESTIONADORES.sucursal(sucursal_id),
CHECK(fecha_nacimiento  <= fecha_registro)
);

CREATE TABLE  LOS_GESTIONADORES.Comprador(
comprador_id INT PRIMARY KEY IDENTITY (1,1),
nombre NVARCHAR(100) NOT NULL,
apellido NVARCHAR(100) NOT NULL,
mail NVARCHAR(100) NOT NULL,
telefono numeric(18,0) NOT NULL,
dni numeric(18,0) NOT NULL,
fecha_nacimiento DATETIME NOT NULL,
fecha_registro DATETIME NOT NULL,
CHECK(fecha_nacimiento <= fecha_registro)
);

CREATE TABLE  LOS_GESTIONADORES.Estado_Alquiler(
estado_id INT PRIMARY KEY IDENTITY (1,1),
descripcion NVARCHAR(100) NOT NULL
);

CREATE TABLE LOS_GESTIONADORES.Medio_Pago (
medio_pago_id INT PRIMARY KEY IDENTITY (1,1),
descripcion NVARCHAR(100) DEFAULT('N/A')
);

CREATE TABLE LOS_GESTIONADORES.Disposicion (
disposicion_id INT PRIMARY KEY IDENTITY (1,1),
descripcion NVARCHAR(100) NOT NULL
);

CREATE TABLE LOS_GESTIONADORES.Estado_Inmueble (
estado_id INT PRIMARY KEY IDENTITY (1,1),
descripcion NVARCHAR(100) NOT NULL
);

CREATE TABLE LOS_GESTIONADORES.Orientacion (
orientacion_id INT PRIMARY KEY IDENTITY (1,1),
descripcion NVARCHAR(100) NOT NULL
);

CREATE TABLE LOS_GESTIONADORES.Caracteristica(
caracteristica_id NUMERIC PRIMARY KEY IDENTITY (1,1),
descripcion NVARCHAR(100) NOT NULL
);

CREATE TABLE LOS_GESTIONADORES.Propietario (
propietario_id INT PRIMARY KEY IDENTITY (1,1),
nombre NVARCHAR(100) NOT NULL,
apellido NVARCHAR(100) NOT NULL,
dni numeric(18,0) NOT NULL,
fecha_registro DATETIME NOT NULL,
telefono numeric(18,0) NOT NULL,
mail NVARCHAR(255) NOT NULL,
fecha_nacimiento DATETIME NOT NULL
);

CREATE TABLE LOS_GESTIONADORES.Tipo_Ambiente(
tipo_ambiente_id INT PRIMARY KEY IDENTITY (1,1),
descripcion NVARCHAR(100) NOT NULL
);

CREATE TABLE LOS_GESTIONADORES.Tipo_Inmueble(
tipo_inmueble_id INT PRIMARY KEY IDENTITY (1,1),
descripcion NVARCHAR(100) NOT NULL
);

CREATE TABLE LOS_GESTIONADORES.Inmueble(
inmueble_id INT PRIMARY KEY IDENTITY(1,1),
inmueble_codigo numeric(18,0),
tipo_inmueble_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.tipo_inmueble(tipo_inmueble_id),
descripcion  NVARCHAR(100) NOT NULL,
propietario_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.propietario(propietario_id),
direccion_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.direccion(direccion_id),
tipo_ambiente_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.tipo_ambiente(tipo_ambiente_id),
superficie_total numeric(18,2) NOT NULL,
disposicion_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.disposicion(disposicion_id),
orientacion_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.orientacion(orientacion_id),
estado_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.Estado_Inmueble(estado_id),
antiguedad numeric(18,0) NOT NULL,
expensas numeric(18,2) NOT NULL,
nombre_inmueble  NVARCHAR(100) NOT NULL
);

CREATE TABLE LOS_GESTIONADORES.Anuncio (
anuncio_id numeric(19,0) PRIMARY KEY,
fecha_publicacion DATETIME NOT NULL,
precio_publicado NUMERIC(18,2) NOT NULL,
costo_anuncio NUMERIC(18,2) NOT NULL,
fecha_finalizacion DATETIME NOT NULL,
agente_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.agente(agente_id),
moneda_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.tipo_moneda(moneda_id),
tipo_operacion_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.tipo_operacion(tipo_operacion_id),
inmueble_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.inmueble(inmueble_id),
tipo_periodo_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.tipo_periodo(tipo_periodo_id),
estado_anuncio_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.estado_anuncio(estado_anuncio_id),
CHECK(fecha_publicacion <= fecha_finalizacion)
);

CREATE TABLE  LOS_GESTIONADORES.Alquiler(
alquiler_id numeric(18,0) PRIMARY KEY,
anuncio_id numeric(19,0) FOREIGN KEY REFERENCES LOS_GESTIONADORES.anuncio(anuncio_id),
inquilino_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.inquilino(inquilino_id),
fecha_inicio DATETIME NOT NULL,
fecha_fin DATETIME NOT NULL,
deposito NUMERIC(18,2) NOT NULL,
comision NUMERIC(18,2)NOT NULL,
gastos_averiguaciones NUMERIC(18,2) NOT NULL,
estado_alquiler_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.estado_alquiler(estado_id),
cantidad_periodos  NUMERIC(18,0) NOT NULL,
CHECK(fecha_inicio <= fecha_fin)
);


CREATE TABLE  LOS_GESTIONADORES.Venta(
venta_id numeric(18,0) PRIMARY KEY,
anuncio_id numeric(19,0) FOREIGN KEY REFERENCES LOS_GESTIONADORES.anuncio(anuncio_id),
comprador_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.comprador(comprador_id),
fecha_venta DATETIME NOT NULL,
precio_venta numeric(18,2) NOT NULL,
moneda_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.tipo_moneda(moneda_id),
comision_inmobiliaria numeric(18,2) NOT NULL
);

CREATE TABLE  LOS_GESTIONADORES.Pago_Venta (
codigo_id INT PRIMARY KEY IDENTITY (1,1),
cotizacion numeric(18,2) NOT NULL,
importe  numeric(18,2)NOT NULL,
venta_id numeric(18,0) FOREIGN KEY REFERENCES LOS_GESTIONADORES.venta(venta_id),
medio_pago_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.medio_pago(medio_pago_id),
moneda_id INT FOREIGN KEY REFERENCES LOS_GESTIONADORES.tipo_moneda(moneda_id)
);

CREATE TABLE LOS_GESTIONADORES.Detalle_Importe(
detalle_id INT PRIMARY KEY IDENTITY (1,1),
alquiler_id numeric(18,0) FOREIGN KEY REFERENCES LOS_GESTIONADORES.alquiler(alquiler_id),
nro_periodo_inicio numeric(18,0) NOT NULL DEFAULT(0),
nro_periodo_fin numeric(18,0)NOT NULL DEFAULT(0),
precio numeric(18,2) NOT NULL
);

CREATE TABLE LOS_GESTIONADORES.Pago_Alquiler(
pago_id numeric(18,0) PRIMARY KEY,
alquiler_id numeric(18,0) FOREIGN KEY REFERENCES LOS_GESTIONADORES.alquiler(alquiler_id),
fecha_pago DATETIME NOT NULL,
nro_periodo_pago numeric(18,0) NOT NULL,
descripcion_periodo NVARCHAR(100) DEFAULT('N/A'),
fecha_inicio DATETIME NOT NULL,
fecha_fin DATETIME NOT NULL,
fecha_vencimiento DATETIME NOT NULL,
importe numeric(18,2) NOT NULL,
medio_pago_id INT NOT NULL FOREIGN KEY REFERENCES LOS_GESTIONADORES.medio_pago(medio_pago_id)
);

CREATE TABLE  LOS_GESTIONADORES.Caracteristica_Inmueble (
inmueble_id INT,
caracteristica_id NUMERIC,
PRIMARY KEY (inmueble_id, caracteristica_id),
FOREIGN KEY (inmueble_id) REFERENCES LOS_GESTIONADORES.inmueble(inmueble_id),
FOREIGN KEY (caracteristica_id) REFERENCES LOS_GESTIONADORES.caracteristica(caracteristica_id)
);

-- CREACION DE INDICES 

CREATE INDEX IDX_ANUNCIOS_AGENTE
ON LOS_GESTIONADORES.Anuncio(anuncio_id ,agente_id );

CREATE INDEX IDX_ANUNCIOS_INMUEBLE
ON LOS_GESTIONADORES.Anuncio(anuncio_id ,inmueble_id);

CREATE INDEX IDX_ALQUILER_PAGO_ALQUILER
ON LOS_GESTIONADORES.Pago_Alquiler(pago_id, alquiler_id)

-- Ejecucion de los Stored Procedures

EXECUTE LOS_GESTIONADORES.MigrarEstado_Anuncio
EXECUTE LOS_GESTIONADORES.MigrarTipo_periodo
EXECUTE LOS_GESTIONADORES.MigrarTipo_Operacion
EXECUTE LOS_GESTIONADORES.MigrarInquilino
EXECUTE LOS_GESTIONADORES.MigrarTipo_Moneda
EXECUTE LOS_GESTIONADORES.MigrarComprador
EXECUTE LOS_GESTIONADORES.MigrarDireccion
EXECUTE LOS_GESTIONADORES.MigrarSucursal
EXECUTE LOS_GESTIONADORES.MigrarAgente
EXECUTE LOS_GESTIONADORES.MigrarPropietario
EXECUTE LOS_GESTIONADORES.MigrarTipo_Ambiente
EXECUTE LOS_GESTIONADORES.MigrarEstado_Inmueble
EXECUTE LOS_GESTIONADORES.MigrarTipo_Inmueble
EXECUTE LOS_GESTIONADORES.MigrarOrientacion
EXECUTE LOS_GESTIONADORES.MigrarDisposicion
EXECUTE LOS_GESTIONADORES.MigrarEstado_Alquiler
EXECUTE LOS_GESTIONADORES.MigrarInmueble
EXECUTE LOS_GESTIONADORES.MigrarAnuncio
EXECUTE LOS_GESTIONADORES.MigrarAlquiler
EXECUTE LOS_GESTIONADORES.MigrarVenta
EXECUTE LOS_GESTIONADORES.MigrarMedio_Pago
EXECUTE LOS_GESTIONADORES.MigrarPago_Alquiler
EXECUTE LOS_GESTIONADORES.MigrarPago_Venta
EXECUTE LOS_GESTIONADORES.MigrarDetalle_Importe
EXECUTE LOS_GESTIONADORES.MigrarCaracteristica

PRINT 'Migracion finalizada exitosamente'
GO 