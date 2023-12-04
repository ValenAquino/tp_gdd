use GD2C2023
go

-- DROP TABLAS
IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Tiempo')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Ubicacion')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Tipo_Operacion')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Rango_Etario')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Tipo_Inmueble')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Tipo_Moneda')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Tipo_Rango_m2')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_m2

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Sucursal')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Ambientes')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Ambientes

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Alquiler')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Alquiler

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Venta')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Venta

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Pago_Alquiler')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Pago_Alquiler

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Anuncio')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Anuncio


-- DROP PROCEDURES
IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_BI_Dim_Tipo_Moneda')
DROP PROCEDURE  LOS_QUERY_EXPLORERS_BI.BI_Migrar_BI_Dim_Tipo_Moneda

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Dim_Tipo_Operacion')
DROP PROCEDURE  LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Tipo_Operacion

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Dim_Ubicacion')
DROP PROCEDURE  LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Ubicacion

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Dim_Sucursal')
DROP PROCEDURE  LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Sucursal

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Dim_Ambientes')
DROP PROCEDURE  LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Ambientes

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Dim_Tipo_Inmueble')
DROP PROCEDURE  LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Tipo_Inmueble

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Dim_Rango_Etario')
DROP PROCEDURE  LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Rango_Etario

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Dim_Rango_m2')
DROP PROCEDURE  LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Rango_m2

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_BI_Dim_Tiempo')
DROP PROCEDURE  LOS_QUERY_EXPLORERS_BI.BI_Migrar_BI_Dim_Tiempo

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Alquiler')
DROP PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Alquiler

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Venta')
DROP PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Venta

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Pago_Alquiler')
DROP PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Pago_Alquiler

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Anuncio')
DROP PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Anuncio


-- DROP VISTAS
IF EXISTS(SELECT [name] FROM sys.views WHERE [name] = 'Vista_1')
DROP VIEW  LOS_QUERY_EXPLORERS_BI.Vista_1

IF EXISTS(SELECT [name] FROM sys.views WHERE [name] = 'Vista_2')
DROP VIEW  LOS_QUERY_EXPLORERS_BI.Vista_2

IF EXISTS(SELECT [name] FROM sys.views WHERE [name] = 'Vista_3')
DROP VIEW  LOS_QUERY_EXPLORERS_BI.Vista_3

IF EXISTS(SELECT [name] FROM sys.views WHERE [name] = 'Vista_4')
DROP VIEW  LOS_QUERY_EXPLORERS_BI.Vista_4

IF EXISTS(SELECT [name] FROM sys.views WHERE [name] = 'Vista_5')
DROP VIEW  LOS_QUERY_EXPLORERS_BI.Vista_5

IF EXISTS(SELECT [name] FROM sys.views WHERE [name] = 'Vista_6')
DROP VIEW  LOS_QUERY_EXPLORERS_BI.Vista_6

IF EXISTS(SELECT [name] FROM sys.views WHERE [name] = 'Vista_7')
DROP VIEW  LOS_QUERY_EXPLORERS_BI.Vista_7

IF EXISTS(SELECT [name] FROM sys.views WHERE [name] = 'Vista_8')
DROP VIEW  LOS_QUERY_EXPLORERS_BI.Vista_8

IF EXISTS(SELECT [name] FROM sys.views WHERE [name] = 'Vista_9')
DROP VIEW  LOS_QUERY_EXPLORERS_BI.Vista_9

-- CREACION DE SCHEMA
if exists (select name from sys.schemas where name = 'LOS_QUERY_EXPLORERS_BI')
    drop schema LOS_QUERY_EXPLORERS_BI;
go

create schema LOS_QUERY_EXPLORERS_BI;
go

-- CREACION DE TABLAS
print 'Creacion de tablas'

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo
(
    BI_tiempo_id int identity (1,1) not null,
    BI_tiempo_anio int,
    BI_tiempo_cuatrimestre int,
    BI_tiempo_mes int
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion
(
    BI_ubicacion_id int identity (1,1) not null,
    BI_ubicacion_provincia nvarchar(100),
    BI_ubicacion_localidad nvarchar(100),
    BI_ubicacion_barrio nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion
(
    BI_tipo_operacion_id int not null,
    BI_tipo_operacion_nombre nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario
(
    BI_rango_etario_id int identity (1,1) not null,
    BI_rango_etario_detalle nvarchar (100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble
(
    BI_tipo_inmueble_id int not null,
    BI_tipo_inmueble_detalle nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda
(
    BI_tipo_moneda_id int not null,
    BI_tipo_moneda_detalle nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_m2
(
    BI_rango_m2_id int identity (1,1) not null,
    BI_rango_m2_detalle nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal
(
    BI_sucursal_id int not null,
    BI_sucursal_nombre nvarchar(100),
    BI_sucursal_direccion nvarchar(100),
    BI_sucursal_telefono nvarchar(100),
    BI_sucursal_ubicacion int not null
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Ambientes
(
    BI_ambientes_id int not null,
    BI_ambientes_detalle nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Alquiler
(
    BI_alquiler_rango_etario_inquilino int not null,
    BI_alquiler_tiempo int not null,
    BI_alquiler_ubicacion int not null,
    BI_alquiler_comision numeric(18,2)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Venta
(
    BI_venta_ubicacion int not null,
    BI_venta_tipo_moneda int not null,
    BI_venta_tipo_inmueble int not null,
    BI_venta_tiempo int not null,
    BI_venta_precio_promedio_m2 numeric(18,2),
    BI_venta_cant_ventas int
)

create table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
(
    BI_anuncio_tipo_operacion int not null,
	BI_anuncio_ubicacion int not null,
    BI_anuncio_tipo_moneda int not null,   
    BI_anuncio_ambientes int not null,
    BI_anuncio_sucursal int not null,
	BI_anuncio_rango_m2 int not null,
    BI_anuncio_tiempo int not null,
    BI_anuncio_tipo_inmueble int not null,
	BI_anuncio_rango_etario_agente int not null,
    BI_anuncio_comision_prom numeric(18,2),
    BI_anuncio_cantidad_total int,
    BI_anuncio_operaciones_concretadas int,
    BI_anuncio_monto_operaciones_concretadas numeric(18,2),
	BI_anuncio_duracion int,
	BI_anuncio_precio_prom numeric(18,2)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Pago_Alquiler
(
    BI_pago_alquiler_tiempo int not null,
    BI_pago_alquiler_cant_pagos int,
	BI_pago_alquiler_porcentaje_incremento numeric(18,2),
    BI_pago_alquiler_porcentaje_incumplimiento numeric(18,2)
)

print 'Tablas creadas'
go

-- CREACION DE PK
print 'Creacion de primary key'

-- Dimension Tiempo
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo
add primary key (BI_tiempo_id);

-- Dimension Ubicacion
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion
add primary key (BI_ubicacion_id);

-- Dimension Tipo Operacion
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion
add primary key (BI_tipo_operacion_id);

-- Dimension Rango Etario
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario
add primary key (BI_rango_etario_id);

-- Dimension Tipo Inmueble
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble
add primary key (BI_tipo_inmueble_id);

-- Dimension Tipo Moneda
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda
add primary key (BI_tipo_moneda_id);

-- Dimension Rango m2
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_m2
add primary key (BI_rango_m2_id);

-- Dimension Sucursal
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal
add primary key (BI_sucursal_id);

-- Dimension Ambientes
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Ambientes
add primary key (BI_ambientes_id);

-- Tabla de hechos Alquiler
alter table LOS_QUERY_EXPLORERS_BI.BI_Alquiler
add primary key (BI_alquiler_rango_etario_inquilino, BI_alquiler_tiempo, BI_alquiler_ubicacion);

-- Tabla de hechos Venta
alter table LOS_QUERY_EXPLORERS_BI.BI_Venta
add primary key (BI_venta_ubicacion, BI_venta_tipo_moneda, BI_venta_tipo_inmueble, BI_venta_tiempo);

-- Tabla de hechos Anuncio
alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add primary key (
    BI_anuncio_tipo_operacion,
	BI_anuncio_ubicacion,
    BI_anuncio_tipo_moneda,
    BI_anuncio_ambientes,
	BI_anuncio_sucursal,
    BI_anuncio_rango_m2,
    BI_anuncio_tiempo,
    BI_anuncio_tipo_inmueble,
	BI_anuncio_rango_etario_agente
);

-- Tabla de hechos Pago Alquiler

print 'Primary Key creadas'
go

-- CREACION DE FK
print 'Creacion de las Foreign Key'
go

-- Sucursal
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal
add constraint FK_BI_Sucursal_BI_Ubicacion
foreign key (BI_sucursal_ubicacion)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion (BI_ubicacion_id);

-- Alquiler
alter table LOS_QUERY_EXPLORERS_BI.BI_Alquiler
add constraint FK_BI_Alquiler_BI_Tiempo
foreign key (BI_alquiler_tiempo)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo (BI_tiempo_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Alquiler
add constraint FK_BI_Alquiler_BI_Rango_Etario
foreign key (BI_alquiler_rango_etario_inquilino)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario (BI_rango_etario_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Alquiler
add constraint FK_BI_Alquiler_BI_Ubicacion
foreign key (BI_alquiler_ubicacion)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_ubicacion (BI_ubicacion_id);

-- Venta
alter table LOS_QUERY_EXPLORERS_BI.BI_Venta
add constraint FK_BI_Venta_BI_Ubicacion
foreign key (BI_venta_ubicacion)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion (BI_ubicacion_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Venta
add constraint FK_BI_Venta_BI_Tipo_Moneda
foreign key (BI_venta_tipo_moneda)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda (BI_tipo_moneda_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Venta
add constraint FK_BI_Venta_BI_Tiempo
foreign key (BI_venta_tiempo)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo (BI_tiempo_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Venta
add constraint FK_BI_Venta_BI_Tipo_Inmueble
foreign key (BI_venta_tipo_inmueble)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble (BI_tipo_inmueble_id);

-- Anuncio
alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Tipo_Operacion
foreign key (BI_anuncio_tipo_operacion)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion (BI_tipo_operacion_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Tiempo
foreign key (BI_anuncio_tiempo)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo (BI_tiempo_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Tipo_Moneda
foreign key (BI_anuncio_tipo_moneda)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda (BI_tipo_moneda_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Ambientes
foreign key (BI_anuncio_ambientes)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Ambientes (BI_ambientes_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Rango_m2
foreign key (BI_anuncio_rango_m2)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_m2 (BI_rango_m2_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Rango_Etario
foreign key (BI_anuncio_rango_etario_agente)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario (BI_rango_etario_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Sucursal
foreign key (BI_anuncio_sucursal)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal (BI_sucursal_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Ubicacion
foreign key (BI_anuncio_ubicacion)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion (BI_ubicacion_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Tipo_Inmueble
foreign key (BI_anuncio_tipo_inmueble)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble (BI_tipo_inmueble_id);

print 'Foreign Key creadas'
go

-- CREACION DE FUNCIONES

print 'Creacion de funciones'
go

CREATE FUNCTION LOS_QUERY_EXPLORERS_BI.ObtenerRangoEtarioID (@FechaNacimiento DATE)
RETURNS INT
AS
BEGIN
    DECLARE @Edad INT
    DECLARE @RangoEtario NVARCHAR(20)
    DECLARE @RangoEtario_ID INT

    SET @Edad = DATEDIFF(YEAR, @FechaNacimiento, GETDATE())

    SET @RangoEtario = CASE
        WHEN @Edad < 25 THEN '< 25'
        WHEN @Edad BETWEEN 25 AND 35 THEN '25 - 35'
        WHEN @Edad BETWEEN 35 AND 50 THEN '35 - 50'
        WHEN @Edad > 50 THEN '> 50'
    END

    SELECT @RangoEtario_ID = BI_rango_etario_id
    FROM LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario
    WHERE @RangoEtario = BI_rango_etario_detalle

    RETURN @RangoEtario_ID
END

GO
CREATE FUNCTION LOS_QUERY_EXPLORERS_BI.ObtenerTiempoID(@fecha datetime)
RETURNS INT
AS
BEGIN
    DECLARE @bi_tiempo_id INT

    SELECT @bi_tiempo_id = BI_tiempo_id
    FROM LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo
    WHERE
        BI_tiempo_anio = YEAR(@fecha) AND
        BI_tiempo_mes = MONTH(@fecha) AND
        BI_tiempo_cuatrimestre = (
            CASE
                WHEN month(@fecha) >= 1 AND month(@fecha) <= 4 THEN 1
                WHEN month(@fecha) >= 5 AND month(@fecha) <= 8 THEN 2
                WHEN month(@fecha) >= 9 AND month(@fecha) <= 12 THEN 3
            END
        )

    RETURN @bi_tiempo_id
END
GO

CREATE FUNCTION LOS_QUERY_EXPLORERS_BI.ObtenerRangoM2Id(@superficie_total FLOAT)
RETURNS INT
AS
BEGIN
    DECLARE @rango_m2_id INT

    SELECT @rango_m2_id = BI_rango_m2_id
    FROM LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_m2
    WHERE BI_rango_m2_detalle =
        CASE
            WHEN @superficie_total < 35 THEN '< 35'
            WHEN @superficie_total >= 35 AND @superficie_total < 55 THEN '35 - 55'
            WHEN @superficie_total >= 55 AND @superficie_total < 75 THEN '55 - 75'
            WHEN @superficie_total >= 75 AND @superficie_total < 100 THEN '75 - 100'
            WHEN @superficie_total >= 100 THEN '> 100'
        END

    RETURN @rango_m2_id
END
GO

print 'Creacion de funciones completada'
go

-- CREACION PROCEDURE MIGRACION
print 'Creacion Procedimientos de migracion'
go

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_BI_Dim_Tipo_Moneda
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda(BI_tipo_moneda_id, BI_tipo_moneda_detalle)
	SELECT DISTINCT moneda_id, moneda_nombre
	FROM LOS_QUERY_EXPLORERS.moneda
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Tipo_Operacion
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion(BI_tipo_operacion_id, BI_tipo_operacion_nombre)
	SELECT DISTINCT tipo_operacion_id, tipo_operacion_nombre
	FROM LOS_QUERY_EXPLORERS.tipo_operacion
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Ubicacion
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion(BI_ubicacion_provincia, BI_ubicacion_localidad, BI_ubicacion_barrio)

	SELECT distinct provincia_nombre, localidad_nombre, barrio_nombre
	FROM LOS_QUERY_EXPLORERS.inmueble
	JOIN LOS_QUERY_EXPLORERS.provincia on inmueble_provincia = provincia_id
	JOIN LOS_QUERY_EXPLORERS.localidad on inmueble_localidad = localidad_id
	JOIN LOS_QUERY_EXPLORERS.barrio on inmueble_barrio = barrio_id

	UNION

	SELECT distinct provincia_nombre, localidad_nombre, null
	FROM LOS_QUERY_EXPLORERS.sucursal
	JOIN LOS_QUERY_EXPLORERS.provincia on sucursal_provincia = provincia_id
	JOIN LOS_QUERY_EXPLORERS.localidad on sucursal_localidad = localidad_id
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Sucursal
AS
BEGIN
    INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal(BI_sucursal_id, BI_sucursal_nombre, BI_sucursal_direccion, BI_sucursal_telefono, BI_sucursal_ubicacion)

    SELECT distinct sucursal_id, sucursal_nombre, sucursal_direccion, sucursal_telefono, bi_ubicacion_id
    FROM LOS_QUERY_EXPLORERS.sucursal
    JOIN LOS_QUERY_EXPLORERS.provincia on sucursal_provincia = provincia_id
	JOIN LOS_QUERY_EXPLORERS.localidad on sucursal_localidad = localidad_id
    JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion on localidad_nombre = BI_ubicacion_localidad and provincia_nombre = BI_ubicacion_provincia and BI_ubicacion_barrio is null

END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Ambientes
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Ambientes(BI_ambientes_id, BI_ambientes_detalle)
	SELECT ambientes_id, ambientes_numero
	FROM LOS_QUERY_EXPLORERS.ambientes
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Tipo_Inmueble
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble(BI_tipo_inmueble_id, BI_tipo_inmueble_detalle)
	SELECT tipo_inmueble_id, tipo_inmueble_nombre
	FROM LOS_QUERY_EXPLORERS.tipo_inmueble
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Rango_Etario
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario(BI_rango_etario_detalle)
	VALUES ('< 25'),
	       ('25 - 35'),
	       ('35 - 50'),
	       ('> 50')
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Rango_m2
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_m2(BI_rango_m2_detalle)
	VALUES ('< 35'),
	       ('35 - 55'),
	       ('55 - 75'),
	       ('75 - 100'),
	       ('> 100')
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_BI_Dim_Tiempo
AS
BEGIN
    insert into LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo (BI_tiempo_anio, BI_tiempo_cuatrimestre, BI_tiempo_mes)
    select distinct YEAR(anuncio_fecha_publicacion),
    (CASE 
    WHEN month(anuncio_fecha_publicacion) >= 1 AND month(anuncio_fecha_publicacion) <= 4 THEN 1
    WHEN month(anuncio_fecha_publicacion) >= 5 AND month(anuncio_fecha_publicacion) <= 8 THEN 2
    WHEN month(anuncio_fecha_publicacion) >= 9 AND month(anuncio_fecha_publicacion) <= 12 THEN 3 
    END),
    MONTH(anuncio_fecha_publicacion)
    from LOS_QUERY_EXPLORERS.anuncio

    UNION

    select distinct YEAR(alquiler_fecha_inicio),
    (CASE 
    WHEN month(alquiler_fecha_inicio) >= 1 AND month(alquiler_fecha_inicio) <= 4 THEN 1
    WHEN month(alquiler_fecha_inicio) >= 5 AND month(alquiler_fecha_inicio) <= 8 THEN 2
    WHEN month(alquiler_fecha_inicio) >= 9 AND month(alquiler_fecha_inicio) <= 12 THEN 3 
    END),
    MONTH(alquiler_fecha_inicio)
    from LOS_QUERY_EXPLORERS.alquiler

    UNION

    select distinct YEAR(periodo_fecha_inicio),
    (CASE 
    WHEN month(periodo_fecha_inicio) >= 1 AND month(periodo_fecha_inicio) <= 4 THEN 1
    WHEN month(periodo_fecha_inicio) >= 5 AND month(periodo_fecha_inicio) <= 8 THEN 2
    WHEN month(periodo_fecha_inicio) >= 9 AND month(periodo_fecha_inicio) <= 12 THEN 3 
    END),
    MONTH(periodo_fecha_inicio)
    from LOS_QUERY_EXPLORERS.periodo

END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Alquiler
AS
BEGIN
    INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Alquiler
    SELECT
        BI_rango_etario_id,
        BI_tiempo_id,
        BI_ubicacion_id,
        SUM(alquiler_comision_inmobiliaria)
    FROM LOS_QUERY_EXPLORERS.alquiler
    JOIN LOS_QUERY_EXPLORERS.inquilino ON alquiler_inquilino = inquilino_id
    JOIN LOS_QUERY_EXPLORERS.persona ON inquilino_persona = persona_id
    JOIN LOS_QUERY_EXPLORERS.anuncio ON alquiler_anuncio = anuncio_id
    JOIN LOS_QUERY_EXPLORERS.inmueble ON anuncio_inmueble = inmueble_id
    JOIN LOS_QUERY_EXPLORERS.localidad ON inmueble_localidad = localidad_id
    JOIN LOS_QUERY_EXPLORERS.barrio ON inmueble_barrio = barrio_id
    JOIN LOS_QUERY_EXPLORERS.provincia ON inmueble_provincia = provincia_id
    JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion ON
        BI_ubicacion_barrio = barrio_nombre AND
        BI_ubicacion_localidad = localidad_nombre AND
        BI_ubicacion_provincia = provincia_nombre
    LEFT JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo ON
        BI_tiempo_id = LOS_QUERY_EXPLORERS_BI.ObtenerTiempoID(alquiler_fecha_inicio)
    LEFT JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario ON
        BI_rango_etario_id = LOS_QUERY_EXPLORERS_BI.ObtenerRangoEtarioID(persona_fecha_nacimiento)
    GROUP BY
        BI_tiempo_id,
        BI_rango_etario_id,
        BI_ubicacion_id
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Venta
AS
BEGIN
    INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Venta
    SELECT
        BI_ubicacion_id,
        venta_moneda_precio,
        inmueble_tipo_inmueble,
        BI_tiempo_id,
        CONVERT(numeric(18,2), ROUND(AVG(venta_precio/inmueble_superficie_total), 2)),
        COUNT(venta_id)
    FROM LOS_QUERY_EXPLORERS.venta
    JOIN LOS_QUERY_EXPLORERS.anuncio ON venta_anuncio = anuncio_id
    JOIN LOS_QUERY_EXPLORERS.inmueble ON anuncio_inmueble = inmueble_id
    JOIN LOS_QUERY_EXPLORERS.localidad ON inmueble_localidad = localidad_id
    JOIN LOS_QUERY_EXPLORERS.barrio ON inmueble_barrio = barrio_id
    JOIN LOS_QUERY_EXPLORERS.provincia ON inmueble_provincia = provincia_id
    JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion ON
        BI_ubicacion_barrio = barrio_nombre AND
        BI_ubicacion_localidad = localidad_nombre AND
        BI_ubicacion_provincia = provincia_nombre
    LEFT JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo ON
        BI_tiempo_id = LOS_QUERY_EXPLORERS_BI.ObtenerTiempoID(venta_fecha)
    GROUP BY
        BI_ubicacion_id,
        venta_moneda_precio,
        inmueble_tipo_inmueble,
        BI_tiempo_id
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Pago_Alquiler
AS
BEGIN
    INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Pago_Alquiler
    SELECT
        LOS_QUERY_EXPLORERS_BI.ObtenerTiempoID(pp1.pago_periodo_fecha) as tiempo,
        COUNT(pp1.pago_periodo_id) as cantidad_pagos,
		CONVERT(NUMERIC(18,2), AVG((pp1.pago_periodo_importe - pp2.pago_periodo_importe) / NULLIF(pp2.pago_periodo_importe, 0) * 100)),
        CONVERT(NUMERIC(18,2), SUM(IIF(pp1.pago_periodo_fecha >= p1.periodo_fecha_fin, 1.0, 0.0) * 100) / COUNT(pp1.pago_periodo_id))
    FROM LOS_QUERY_EXPLORERS.pago_periodo pp1
    JOIN LOS_QUERY_EXPLORERS.periodo p1 ON pp1.pago_periodo_periodo = p1.periodo_id
    JOIN LOS_QUERY_EXPLORERS.periodo p2 ON p2.periodo_alquiler = p1.periodo_alquiler
    JOIN LOS_QUERY_EXPLORERS.pago_periodo pp2 on
        pp2.pago_periodo_periodo = p2.periodo_id and
        pp2.pago_periodo_fecha = DATEADD(MONTH, -1, pp1.pago_periodo_fecha)
    GROUP BY LOS_QUERY_EXPLORERS_BI.ObtenerTiempoID(pp1.pago_periodo_fecha);
END
GO

create PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Anuncio
AS
BEGIN
    INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Anuncio
    SELECT
        anuncio_tipo_operacion,
		BI_ubicacion_id,
        anuncio_moneda,
        inmueble_ambientes,
		agente_sucursal,
        LOS_QUERY_EXPLORERS_BI.ObtenerRangoM2Id(inmueble_superficie_total),
		LOS_QUERY_EXPLORERS_BI.ObtenerTiempoID(anuncio_fecha_publicacion),
		inmueble_tipo_inmueble,
        LOS_QUERY_EXPLORERS_BI.ObtenerRangoEtarioID(persona_fecha_nacimiento),
		CONVERT(NUMERIC(18,2), AVG(COALESCE(venta_comision_inmobiliaria, alquiler_comision_inmobiliaria, 0))) AS comision_promedio,
		COUNT(anuncio_id) AS cantidad,
		SUM(IIF(anuncio_estado = 2, 0, 1)) AS CANTIDAD_CONCRETADAS,
		SUM(COALESCE(venta_precio, pago_periodo_importe, 0)) AS MONTO_CONCRETADAS,
		AVG(DATEDIFF(d, anuncio_fecha_publicacion, anuncio_fecha_finalizacion)) AS duracion_dias,
        AVG(anuncio_precio_publicado) AS PRECIO_PROMEDIO
    FROM LOS_QUERY_EXPLORERS.anuncio
    JOIN LOS_QUERY_EXPLORERS.inmueble ON anuncio_inmueble = inmueble_id
    JOIN LOS_QUERY_EXPLORERS.agente ON anuncio_agente = agente_id
    JOIN LOS_QUERY_EXPLORERS.persona ON agente_persona = persona_id
    JOIN LOS_QUERY_EXPLORERS.localidad ON inmueble_localidad = localidad_id
    JOIN LOS_QUERY_EXPLORERS.barrio ON inmueble_barrio = barrio_id
    JOIN LOS_QUERY_EXPLORERS.provincia ON inmueble_provincia = provincia_id
    LEFT JOIN LOS_QUERY_EXPLORERS.alquiler ON anuncio_id = alquiler_anuncio
    LEFT JOIN LOS_QUERY_EXPLORERS.periodo ON alquiler_id = periodo_alquiler
    LEFT JOIN LOS_QUERY_EXPLORERS.pago_periodo ON periodo_id = pago_periodo_periodo
    LEFT JOIN LOS_QUERY_EXPLORERS.venta ON anuncio_id = venta_anuncio
    JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion ON
        BI_ubicacion_barrio = barrio_nombre AND
        BI_ubicacion_localidad = localidad_nombre AND
        BI_ubicacion_provincia = provincia_nombre
    GROUP BY
        anuncio_tipo_operacion,
        anuncio_moneda,
        inmueble_ambientes,
        LOS_QUERY_EXPLORERS_BI.ObtenerRangoM2Id(inmueble_superficie_total),
        LOS_QUERY_EXPLORERS_BI.ObtenerRangoEtarioID(persona_fecha_nacimiento),
        agente_sucursal,
        BI_ubicacion_id,
        inmueble_tipo_inmueble,
        LOS_QUERY_EXPLORERS_BI.ObtenerTiempoID(anuncio_fecha_publicacion);
END
GO


-- Creacion de indices
CREATE INDEX idx_BI_ubicacion_barrio_localidad_provincia ON LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion (BI_ubicacion_barrio, BI_ubicacion_localidad, BI_ubicacion_provincia);

-- EJECUCIONES DE PROCEDURES
print 'Ejecutando migracion...'
go

exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_BI_Dim_Tipo_Moneda
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Tipo_Operacion
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Ubicacion
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Sucursal
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Ambientes
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Tipo_Inmueble
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Rango_Etario
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Rango_m2
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_BI_Dim_Tiempo
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Alquiler
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Venta
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Pago_Alquiler
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Anuncio

print 'Migracion finalizada'
go


-- CREACION DE VISTAS

/*1. Duración promedio (en días) que se encuentran publicados los anuncios
según el tipo de operación (alquiler, venta, etc), barrio y ambientes para cada
cuatrimestre de cada año. Se consideran todos los anuncios que se dieron de alta
en ese cuatrimestre. La duración se calcula teniendo en cuenta la fecha de alta y
la fecha de finalización.*/
GO
create view LOS_QUERY_EXPLORERS_BI.Vista_1 as
    select  
    sum(BI_anuncio_duracion)/count(*) as 'Duracion promedio en dias',
    BI_tipo_operacion_nombre,
    BI_ubicacion_barrio, 
    BI_ambientes_detalle, 
    BI_tiempo_anio,
    BI_tiempo_cuatrimestre
    from LOS_QUERY_EXPLORERS_BI.BI_Anuncio
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion on BI_ubicacion_id = BI_anuncio_ubicacion
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Ambientes on BI_ambientes_id = BI_anuncio_ambientes
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_anuncio_tiempo
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion on BI_tipo_operacion_id = BI_anuncio_tipo_operacion
    group by 
    BI_tipo_operacion_nombre,
    BI_ubicacion_barrio, 
    BI_ambientes_detalle, 
    BI_tiempo_anio,
    BI_tiempo_cuatrimestre
GO


/*2. Precio promedio de los anuncios de inmuebles según el tipo de operación
(alquiler, venta, etc), tipo de inmueble y rango m2 para cada cuatrimestre/año.
Se consideran todos los anuncios que se dieron de alta en ese cuatrimestre. El
precio se debe expresar en el tipo de moneda que corresponda, identificando de
cuál se trata.*/
create view LOS_QUERY_EXPLORERS_BI.Vista_2 as
    select
    CONCAT(BI_tipo_moneda_detalle, ' ', SUM(BI_anuncio_precio_prom)/count(*)) 'Precio Promedio',
    BI_tipo_operacion_nombre, 
    BI_tipo_inmueble_detalle, 
    BI_rango_m2_detalle,
    BI_tiempo_anio,
    BI_tiempo_cuatrimestre
    from LOS_QUERY_EXPLORERS_BI.BI_Anuncio
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda on BI_anuncio_tipo_moneda = BI_tipo_moneda_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_anuncio_tiempo
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion on BI_tipo_operacion_id = BI_anuncio_tipo_operacion
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble on BI_tipo_inmueble_id = BI_anuncio_tipo_inmueble
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_m2 on BI_rango_m2_id = BI_anuncio_rango_m2
    group by 
    BI_tipo_moneda_detalle,
    BI_tipo_operacion_nombre, 
    BI_tipo_inmueble_detalle, 
    BI_rango_m2_detalle,
    BI_tiempo_anio,
    BI_tiempo_cuatrimestre
GO


/*3. Los 5 barrios más elegidos para alquilar en función del rango etario de los
inquilinos para cada cuatrimestre/año. Se calcula en función de los alquileres
dados de alta en dicho periodo.*/
GO
create view LOS_QUERY_EXPLORERS_BI.Vista_3 as
    SELECT distinct top 5
        (
            SELECT TOP 1 BI_ubicacion_barrio
            FROM LOS_QUERY_EXPLORERS_BI.BI_Alquiler A2
            JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion ON A2.BI_alquiler_ubicacion = BI_ubicacion_id
            JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo T2 ON T2.BI_tiempo_id = A2.BI_alquiler_tiempo
            JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario R2 ON R2.BI_rango_etario_id = A2.BI_alquiler_rango_etario_inquilino
            WHERE
                R2.BI_rango_etario_id = A1.BI_alquiler_rango_etario_inquilino AND
                T2.BI_tiempo_anio = T1.BI_tiempo_anio AND
                T2.BI_tiempo_cuatrimestre = T1.BI_tiempo_cuatrimestre
            GROUP BY
                BI_ubicacion_barrio,
                R2.BI_rango_etario_id,
                T2.BI_tiempo_anio,
                T2.BI_tiempo_cuatrimestre
            ORDER BY COUNT(*) DESC
        ) as barrio,
        R1.BI_rango_etario_detalle,
        T1.BI_tiempo_anio,
        T1.BI_tiempo_cuatrimestre,
         (
            SELECT TOP 1 COUNT(*)
            FROM LOS_QUERY_EXPLORERS_BI.BI_Alquiler A2
            JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion ON A2.BI_alquiler_ubicacion = BI_ubicacion_id
            JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo T2 ON T2.BI_tiempo_id = A2.BI_alquiler_tiempo
            JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario R2 ON R2.BI_rango_etario_id = A2.BI_alquiler_rango_etario_inquilino
            WHERE
                R2.BI_rango_etario_id = A1.BI_alquiler_rango_etario_inquilino AND
                T2.BI_tiempo_anio = T1.BI_tiempo_anio AND
                T2.BI_tiempo_cuatrimestre = T1.BI_tiempo_cuatrimestre
            GROUP BY
                BI_ubicacion_barrio,
                R2.BI_rango_etario_id,
                T2.BI_tiempo_anio,
                T2.BI_tiempo_cuatrimestre
            ORDER BY COUNT(*) DESC
        ) as cantidad_alquileres
    FROM LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo T1
    JOIN LOS_QUERY_EXPLORERS_BI.BI_Alquiler A1 ON T1.BI_tiempo_id = A1.BI_alquiler_tiempo
    JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario R1 ON R1.BI_rango_etario_id = A1.BI_alquiler_rango_etario_inquilino
    ORDER BY  5 DESC
GO

/*4. Porcentaje de incumplimiento de pagos de alquileres en término por cada
mes/año. Se calcula en función de las fechas de pago y fecha de vencimiento del
mismo. El porcentaje es en función del total de pagos en dicho periodo.*/
GO
create view LOS_QUERY_EXPLORERS_BI.Vista_4 as
    select
    BI_pago_alquiler_porcentaje_incumplimiento as 'Porcentaje de incumplimiento',
    BI_tiempo_mes, 
    BI_tiempo_anio
    from LOS_QUERY_EXPLORERS_BI.BI_Pago_Alquiler
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_pago_alquiler_tiempo
    group by
    BI_pago_alquiler_porcentaje_incumplimiento,
    BI_tiempo_mes, 
    BI_tiempo_anio
GO


/*5. Porcentaje promedio de incremento del valor de los alquileres para los
contratos en curso por mes/año. Se calcula tomando en cuenta el último pago
con respecto al del mes en curso, únicamente de aquellos alquileres que hayan
tenido aumento y están activos.*/
GO
create view LOS_QUERY_EXPLORERS_BI.Vista_5 as
select
    sum(BI_pago_alquiler_porcentaje_incremento*BI_pago_alquiler_cant_pagos)/sum(BI_pago_alquiler_cant_pagos) AS 'Porcentaje de incumplimiento mensual',
    BI_tiempo_mes,
    BI_tiempo_anio
from LOS_QUERY_EXPLORERS_BI.BI_Pago_Alquiler
join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_pago_alquiler_tiempo
group by 
    BI_tiempo_mes,
    BI_tiempo_anio
having sum(BI_pago_alquiler_porcentaje_incremento*BI_pago_alquiler_cant_pagos)/sum(BI_pago_alquiler_cant_pagos) > 0
GO


/*6. Precio promedio de m2 de la venta de inmuebles según el tipo de inmueble y
la localidad para cada cuatrimestre/año. Se calcula en función de las ventas
concretadas.*/
GO
create view LOS_QUERY_EXPLORERS_BI.Vista_6 as
    select
    (sum(BI_venta_precio_promedio_m2)*count(*))/count(*) 'Precio Promedio m2',
    BI_tipo_inmueble_detalle,
    BI_ubicacion_localidad,
    BI_tiempo_anio,
    BI_tiempo_cuatrimestre
    from LOS_QUERY_EXPLORERS_BI.BI_Venta
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_venta_tiempo
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion on BI_ubicacion_id = BI_venta_ubicacion
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble on BI_tipo_inmueble_id = BI_venta_tipo_inmueble
    group by 
    BI_tipo_inmueble_detalle,
    BI_ubicacion_localidad,
    BI_tiempo_anio,
    BI_tiempo_cuatrimestre
GO


/*7. Valor promedio de la comisión según el tipo de operación (alquiler, venta, etc)
y sucursal para cada cuatrimestre/año. Se calcula en función de los alquileres y
ventas concretadas dentro del periodo.*/
GO
create view LOS_QUERY_EXPLORERS_BI.Vista_7 as
    select
    sum(BI_anuncio_comision_prom)/count(*) 'Valor promedio comision',
    BI_tipo_operacion_nombre,
    BI_sucursal_nombre,
    BI_tiempo_anio,
    BI_tiempo_cuatrimestre
    from LOS_QUERY_EXPLORERS_BI.BI_Anuncio
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion on BI_tipo_operacion_id = BI_anuncio_tipo_operacion
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal on BI_sucursal_id = BI_anuncio_sucursal
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_anuncio_tiempo
    group by
    BI_tipo_operacion_nombre,
    BI_sucursal_nombre,
    BI_tiempo_anio,
    BI_tiempo_cuatrimestre
GO


/*8. Porcentaje de operaciones concretadas (tanto de alquileres como ventas) por
cada sucursal, según el rango etario de los empleados por año en función de la
cantidad de anuncios publicados en ese mismo año.*/
GO
create view LOS_QUERY_EXPLORERS_BI.Vista_8 as
    select
    cast(sum(BI_anuncio_operaciones_concretadas) as float)/cast(sum(BI_anuncio_cantidad_total) as float) * 100 as 'Porcentaje operaciones concretadas',
	BI_sucursal_nombre,
	BI_rango_etario_detalle,
	BI_tiempo_anio
    from LOS_QUERY_EXPLORERS_BI.BI_Anuncio
	join LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal on BI_anuncio_sucursal = BI_sucursal_id
	join LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario on BI_rango_etario_id = BI_anuncio_rango_etario_agente
	join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_anuncio_tiempo
    group by BI_sucursal_nombre, BI_rango_etario_detalle, BI_tiempo_anio
GO


/*9. Monto total de cierre de contratos por tipo de operación (tanto de alquileres
como ventas) por cada cuatrimestre y sucursal, diferenciando el tipo de moneda.*/
create view LOS_QUERY_EXPLORERS_BI.Vista_9 as
	select
	sum(BI_anuncio_monto_operaciones_concretadas) as 'Monto total',
	BI_tipo_operacion_nombre,
	BI_tiempo_cuatrimestre,
	BI_tipo_moneda_detalle,
	BI_sucursal_nombre
	from LOS_QUERY_EXPLORERS_BI.BI_Anuncio
	join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion on BI_tipo_operacion_id = BI_anuncio_tipo_operacion
	join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_anuncio_tiempo
	join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda on BI_tipo_moneda_id = BI_anuncio_tipo_moneda
	join LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal on BI_sucursal_id = BI_anuncio_sucursal
	group by
	BI_tipo_operacion_nombre,
	BI_tiempo_cuatrimestre,
	BI_tipo_moneda_detalle,
	BI_sucursal_nombre
GO

select * from LOS_QUERY_EXPLORERS_BI.Vista_1
select * from LOS_QUERY_EXPLORERS_BI.Vista_2
select * from LOS_QUERY_EXPLORERS_BI.Vista_3
select * from LOS_QUERY_EXPLORERS_BI.Vista_4
select * from LOS_QUERY_EXPLORERS_BI.Vista_5
select * from LOS_QUERY_EXPLORERS_BI.Vista_6
select * from LOS_QUERY_EXPLORERS_BI.Vista_7
select * from LOS_QUERY_EXPLORERS_BI.Vista_8
select * from LOS_QUERY_EXPLORERS_BI.Vista_9
