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
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Rango_m2

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Tipo_Sucursal')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Sucursal

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Ambientes')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Ambientes

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Inmueble')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Inquilino')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inquilino

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Agente')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Agente

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Periodo')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Periodo

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Alquiler')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Alquiler

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Venta')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Venta

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Fecha_Anuncio')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Fecha_Anuncio

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Anuncio')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Anuncio

IF EXISTS(SELECT [name] FROM sys.tables WHERE [name] = 'BI_Dim_Estado_Anuncio')
DROP TABLE  LOS_QUERY_EXPLORERS_BI.BI_Dim_Estado_Anuncio


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

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Dim_inquilino')
DROP PROCEDURE  LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_inquilino

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Dim_Agente')
DROP PROCEDURE  LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Agente

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Dim_Inmueble')
DROP PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Inmueble

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Dim_Periodo')
DROP PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Periodo

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Alquiler')
DROP PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Alquiler

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Venta')
DROP PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Venta

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Dim_Estado_Anuncio')
DROP PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Estado_Anuncio

IF EXISTS(SELECT [name] FROM sys.procedures WHERE [name] = 'BI_Migrar_Dim_Fecha_Anuncio')
DROP PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Fecha_Anuncio

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
    BI_tipo_inmueble_nombre nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda
(
    BI_tipo_moneda_id int not null,
    BI_tipo_moneda_nombre nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_m2
(
    BI_rango_m2_id int identity (1,1) not null,
    BI_rango_m2_numero nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal
(
    BI_sucursal_id int not null,
    BI_sucursal_nombre nvarchar(100),
    BI_sucursal_ubicacion int not null
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Ambientes
(
    BI_ambientes_id int not null,
    BI_ambientes_numero nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble
(
    BI_inmueble_id int not null,
    BI_inmueble_descripcion nvarchar(100),
    BI_inmueble_tipo_inmueble int not null,
    BI_inmueble_rango_m2 int not null,
    BI_inmueble_ambientes int not null,
    BI_inmueble_ubicacion int not null,
    BI_inmueble_sup_total numeric(18,2)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Inquilino
(
    BI_inquilino_id int not null,
    BI_inquilino_rango_etario int not null
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Agente
(
    BI_agente_id int not null,
    BI_agente_rango_etario int not null,
    BI_agente_sucursal int not null
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Periodo
(
    BI_periodo_id int not null,
    BI_periodo_fecha_inicio datetime,
    BI_periodo_fecha_fin datetime,
    BI_periodo_importe numeric(18,0),
    BI_periodo_pago_alquiler_fecha datetime
)

create table LOS_QUERY_EXPLORERS_BI.BI_Alquiler
(
    BI_alquiler_inquilino int not null,
    BI_alquiler_inmueble int not null,
    BI_alquiler_tiempo int not null,
    BI_alquiler_periodo int not null,
    BI_alquiler_estado nvarchar(100),
    BI_alquiler_comision numeric(18,2)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Venta
(
    BI_venta_ubicacion int not null,
    BI_venta_tipo_moneda int not null,
    BI_venta_inmueble int not null,
    BI_venta_tiempo int not null,
    BI_venta_comision numeric(18,2),
    BI_venta_fecha datetime,
    BI_venta_precio numeric(18,2),
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Fecha_Anuncio
(
    BI_fecha_anuncio_id int identity(1,1) not null,
    BI_fecha_anuncio_inicio datetime,
    BI_fecha_anuncio_fin datetime
)

create table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
(
    BI_anuncio_tipo_operacion int not null,
    BI_anuncio_inmueble int not null,
    BI_anuncio_tiempo int not null,
    BI_anuncio_tipo_moneda int not null,
    BI_anuncio_agente int not null,
    BI_anuncio_estado int not null,
    BI_anuncio_fecha_anuncio int not null,
    BI_anuncio_costo_publicacion numeric(18,2),
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Estado_Anuncio
(
    BI_estado_anuncio_id int not null,
    BI_estado_anuncio_nombre nvarchar(100)
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

-- Dimension Inmueble
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble
add primary key (BI_inmueble_id);

-- Dimension Inquilino
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Inquilino
add primary key (BI_inquilino_id);

-- Dimension Agente
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Agente
add primary key (BI_agente_id);

-- Dimension Periodo
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Periodo
add primary key (BI_periodo_id);

-- Dimension Alquiler
alter table LOS_QUERY_EXPLORERS_BI.BI_Alquiler
add primary key (BI_alquiler_inquilino, BI_alquiler_inmueble, BI_alquiler_tiempo, BI_alquiler_periodo);

-- Dimension Venta
alter table LOS_QUERY_EXPLORERS_BI.BI_Venta
add primary key (BI_venta_ubicacion, BI_venta_tipo_moneda, BI_venta_inmueble, BI_venta_tiempo);

-- Dimension Fecha Anuncio
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Fecha_Anuncio
add primary key (BI_fecha_anuncio_id);

-- Dimension Anuncio
alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add primary key (BI_anuncio_tipo_operacion, BI_anuncio_inmueble, BI_anuncio_tiempo, BI_anuncio_tipo_moneda, BI_anuncio_agente, BI_anuncio_estado, BI_anuncio_fecha_anuncio);

-- Dimension Estado Anuncio
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Estado_Anuncio
add primary key (BI_estado_anuncio_id);


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

-- Inmueble
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble
add constraint FK_BI_Inmueble_BI_Tipo_Inmueble
foreign key (BI_inmueble_tipo_inmueble)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble (BI_tipo_inmueble_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble
add constraint FK_BI_Inmueble_BI_Rango_m2
foreign key (BI_inmueble_rango_m2)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_m2 (BI_rango_m2_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble
add constraint FK_BI_Inmueble_BI_Ambientes
foreign key (BI_inmueble_ambientes)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Ambientes (BI_ambientes_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble
add constraint FK_BI_Inmueble_BI_Ubicacion
foreign key (BI_inmueble_ubicacion)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion (BI_ubicacion_id);

-- Agente
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Agente
add constraint FK_BI_Agente_BI_Sucursal
foreign key (BI_agente_sucursal)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal (BI_sucursal_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Agente
add constraint FK_BI_Agente_BI_Rango_Etario
foreign key (BI_agente_rango_etario)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario (BI_rango_etario_id);

-- Inquilino
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Inquilino
add constraint FK_BI_Inquilino_BI_Rango_Etario
foreign key (BI_inquilino_rango_etario)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario (BI_rango_etario_id);

-- Alquiler
alter table LOS_QUERY_EXPLORERS_BI.BI_Alquiler
add constraint FK_BI_Alquiler_BI_Inmueble
foreign key (BI_alquiler_inmueble)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble (BI_inmueble_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Alquiler
add constraint FK_BI_Alquiler_BI_Inquilino
foreign key (BI_alquiler_inquilino)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Inquilino (BI_inquilino_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Alquiler
add constraint FK_BI_Alquiler_BI_Tiempo
foreign key (BI_alquiler_tiempo)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo (BI_tiempo_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Alquiler
add constraint FK_BI_Alquiler_BI_Periodo
foreign key (BI_alquiler_periodo)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Periodo (BI_periodo_id);

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
add constraint FK_BI_Venta_BI_Inmueble
foreign key (BI_venta_inmueble)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble (BI_inmueble_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Venta
add constraint FK_BI_Venta_BI_Tiempo
foreign key (BI_venta_tiempo)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo (BI_tiempo_id);

-- Anuncio
alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Tipo_Operacion
foreign key (BI_anuncio_tipo_operacion)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion (BI_tipo_operacion_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Inmueble
foreign key (BI_anuncio_inmueble)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble (BI_inmueble_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Tiempo
foreign key (BI_anuncio_tiempo)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo (BI_tiempo_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Tipo_Moneda
foreign key (BI_anuncio_tipo_moneda)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda (BI_tipo_moneda_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Agente
foreign key (BI_anuncio_agente)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Agente(BI_agente_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Estado_Anuncio
foreign key (BI_anuncio_estado)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Estado_Anuncio(BI_estado_anuncio_id);

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Fecha_Anuncio
foreign key (BI_anuncio_fecha_anuncio)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Fecha_Anuncio(BI_fecha_anuncio_id);

print 'Foreign Key creadas'
go

-- CREACION PROCEDURE MIGRACION
print 'Creacion Procedimientos de migracion'
go

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_BI_Dim_Tipo_Moneda
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda(BI_tipo_moneda_id, BI_tipo_moneda_nombre)
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
    INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal(BI_sucursal_id, BI_sucursal_nombre, BI_sucursal_ubicacion)

    SELECT distinct sucursal_id, sucursal_nombre, bi_ubicacion_id
    FROM LOS_QUERY_EXPLORERS.sucursal
    JOIN LOS_QUERY_EXPLORERS.provincia on sucursal_provincia = provincia_id
	JOIN LOS_QUERY_EXPLORERS.localidad on sucursal_localidad = localidad_id
    JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion on localidad_nombre = BI_ubicacion_localidad and provincia_nombre = BI_ubicacion_provincia and BI_ubicacion_barrio is null

END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Ambientes
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Ambientes(BI_ambientes_id, BI_ambientes_numero)
	SELECT ambientes_id, ambientes_numero
	FROM LOS_QUERY_EXPLORERS.ambientes
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Tipo_Inmueble
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble(BI_tipo_inmueble_id, BI_tipo_inmueble_nombre)
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
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_m2(BI_rango_m2_numero)
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


CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_inquilino
AS
BEGIN
    DECLARE @Now DATETIME = getdate()
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_inquilino(BI_inquilino_id, BI_inquilino_rango_etario)
	SELECT DISTINCT inquilino_id,
        case
        when  (CONVERT(int,CONVERT(char(8),@Now,112))-CONVERT(char(8),persona_fecha_nacimiento,112))/10000 < 25 then 1
        when  (CONVERT(int,CONVERT(char(8),@Now,112))-CONVERT(char(8),persona_fecha_nacimiento,112))/10000 between 25 and 35 then 2
        when  (CONVERT(int,CONVERT(char(8),@Now,112))-CONVERT(char(8),persona_fecha_nacimiento,112))/10000 between 35 and 50 then 3
        when  (CONVERT(int,CONVERT(char(8),@Now,112))-CONVERT(char(8),persona_fecha_nacimiento,112))/10000 > 50 then 4
    end
    from LOS_QUERY_EXPLORERS.persona join LOS_QUERY_EXPLORERS.inquilino on inquilino_persona = persona_id
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Agente
AS
BEGIN
    DECLARE @Now DATETIME = getdate()
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Agente(BI_agente_id, BI_agente_rango_etario, BI_agente_sucursal)
	SELECT DISTINCT 
        agente_id,
        (case
        when  (CONVERT(int,CONVERT(char(8),@Now,112))-CONVERT(char(8),persona_fecha_nacimiento,112))/10000 < 25 then 1
        when  (CONVERT(int,CONVERT(char(8),@Now,112))-CONVERT(char(8),persona_fecha_nacimiento,112))/10000 between 25 and 35 then 2
        when  (CONVERT(int,CONVERT(char(8),@Now,112))-CONVERT(char(8),persona_fecha_nacimiento,112))/10000 between 35 and 50 then 3
        when  (CONVERT(int,CONVERT(char(8),@Now,112))-CONVERT(char(8),persona_fecha_nacimiento,112))/10000 > 50 then 4
    end),
    (select BI_sucursal_id from LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal where BI_sucursal_nombre = sucursal_nombre)
    from LOS_QUERY_EXPLORERS.persona join LOS_QUERY_EXPLORERS.agente A on A.agente_persona = persona_id
    join LOS_QUERY_EXPLORERS.sucursal on sucursal_id = A.agente_sucursal
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Inmueble
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble(BI_inmueble_id, BI_inmueble_tipo_inmueble, BI_inmueble_rango_m2, BI_inmueble_ambientes, BI_inmueble_ubicacion, BI_inmueble_descripcion, BI_inmueble_sup_total)
	SELECT DISTINCT 
    inmueble_id,
    (select BI_tipo_inmueble_id from LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble where BI_tipo_inmueble_nombre = tipo_inmueble_nombre),
    CASE
        WHEN inmueble_superficie_total < 35 then 1
        WHEN inmueble_superficie_total >= 35 and inmueble_superficie_total < 55 then 2
        WHEN inmueble_superficie_total >= 55 and inmueble_superficie_total < 75 then 3
        WHEN inmueble_superficie_total >= 75 and inmueble_superficie_total < 100 then 4
        WHEN inmueble_superficie_total >= 100 then 5
     END,
    (select BI_ambientes_id from LOS_QUERY_EXPLORERS_BI.BI_Dim_Ambientes where BI_ambientes_numero = ambientes_numero),
    (select BI_ubicacion_id from LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion where barrio_nombre = BI_ubicacion_barrio and provincia_nombre = BI_ubicacion_provincia and localidad_nombre = BI_ubicacion_localidad),
    inmueble_descripcion,
    inmueble_superficie_total
	FROM LOS_QUERY_EXPLORERS.inmueble join LOS_QUERY_EXPLORERS.tipo_inmueble on inmueble_tipo_inmueble = tipo_inmueble_id
    join LOS_QUERY_EXPLORERS.ambientes on inmueble_ambientes = ambientes_id
    join LOS_QUERY_EXPLORERS.barrio on barrio_id = inmueble_barrio
    join LOS_QUERY_EXPLORERS.localidad on localidad_id = inmueble_localidad
    join LOS_QUERY_EXPLORERS.provincia on provincia_id = inmueble_provincia
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Periodo
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Periodo(BI_periodo_id, BI_periodo_fecha_inicio, BI_periodo_fecha_fin, BI_periodo_importe, BI_periodo_pago_alquiler_fecha)
	SELECT DISTINCT periodo_id, periodo_fecha_inicio, periodo_fecha_fin, pago_periodo_importe, pago_periodo_fecha
    from LOS_QUERY_EXPLORERS.periodo join LOS_QUERY_EXPLORERS.pago_periodo on periodo_id = pago_periodo_periodo
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Estado_Anuncio
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Estado_Anuncio (BI_estado_anuncio_id, BI_estado_anuncio_nombre)
	SELECT DISTINCT estado_anuncio_id, estado_anuncio_nombre
    from LOS_QUERY_EXPLORERS.estado_anuncio
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Fecha_Anuncio
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Fecha_Anuncio (BI_fecha_anuncio_inicio, BI_fecha_anuncio_fin)
	SELECT DISTINCT anuncio_fecha_publicacion, anuncio_fecha_finalizacion
    from LOS_QUERY_EXPLORERS.anuncio
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Alquiler
AS
BEGIN
    DECLARE @Now DATETIME = GETDATE()
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Alquiler
	SELECT DISTINCT 
    inquilino_id,
    inmueble_id,
    (select BI_tiempo_id from LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo where 
    BI_tiempo_anio = year(alquiler_fecha_inicio) and BI_tiempo_mes = month(alquiler_fecha_inicio) and BI_tiempo_cuatrimestre = (CASE 
    WHEN month(alquiler_fecha_inicio) >= 1 AND month(alquiler_fecha_inicio) <= 4 THEN 1
    WHEN month(alquiler_fecha_inicio) >= 5 AND month(alquiler_fecha_inicio) <= 8 THEN 2
    WHEN month(alquiler_fecha_inicio) >= 9 AND month(alquiler_fecha_inicio) <= 12 THEN 3 
    END)),
    periodo_id,
    estado_alquiler_nombre,
    alquiler_comision_inmobiliaria
    from LOS_QUERY_EXPLORERS.alquiler join LOS_QUERY_EXPLORERS.inquilino on alquiler_inquilino = inquilino_id
    join LOS_QUERY_EXPLORERS.periodo on periodo_alquiler = alquiler_id
    join LOS_QUERY_EXPLORERS.anuncio on anuncio_id = alquiler_anuncio
    join LOS_QUERY_EXPLORERS.inmueble on inmueble_id = anuncio_inmueble
    join LOS_QUERY_EXPLORERS.estado_alquiler on alquiler_estado = estado_alquiler_id
    group by inquilino_id,inmueble_id, 
    year(alquiler_fecha_inicio), month(alquiler_fecha_inicio), (CASE 
    WHEN month(alquiler_fecha_inicio) >= 1 AND month(alquiler_fecha_inicio) <= 4 THEN 1
    WHEN month(alquiler_fecha_inicio) >= 5 AND month(alquiler_fecha_inicio) <= 8 THEN 2
    WHEN month(alquiler_fecha_inicio) >= 9 AND month(alquiler_fecha_inicio) <= 12 THEN 3 
    END),
    periodo_id, estado_alquiler_nombre, alquiler_comision_inmobiliaria
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Venta
AS
BEGIN
    INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Venta
    SELECT DISTINCT
        (SELECT BI_inmueble_ubicacion from LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble WHERE inmueble_descripcion = BI_inmueble_descripcion) AS ubicacion,
        venta_moneda_precio AS tipo_moneda,
        inmueble_id AS inmueble,
        (select BI_tiempo_id from LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo where 
        BI_tiempo_anio = year(venta_fecha) and BI_tiempo_mes = month(venta_fecha) and BI_tiempo_cuatrimestre = (CASE 
        WHEN month(venta_fecha) >= 1 AND month(venta_fecha) <= 4 THEN 1
        WHEN month(venta_fecha) >= 5 AND month(venta_fecha) <= 8 THEN 2
        WHEN month(venta_fecha) >= 9 AND month(venta_fecha) <= 12 THEN 3 
        END)),
        venta_comision_inmobiliaria,
        venta_fecha,
        venta_precio
    FROM LOS_QUERY_EXPLORERS.venta
    JOIN LOS_QUERY_EXPLORERS.anuncio ON anuncio_id = venta_anuncio
    JOIN LOS_QUERY_EXPLORERS.inmueble ON anuncio_inmueble = inmueble_id
END
GO

create PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Anuncio
AS
BEGIN
    declare @Now datetime = GETDATE()  
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Anuncio
    SELECT DISTINCT
    tipo_operacion_id,
    inmueble_id,
    (select BI_tiempo_id from LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo where BI_tiempo_anio = year(anuncio_fecha_publicacion)
    and BI_tiempo_mes = month(anuncio_fecha_publicacion)
    and BI_tiempo_cuatrimestre = (CASE
    WHEN month(anuncio_fecha_publicacion) >= 1 AND month(anuncio_fecha_publicacion) <= 4 THEN 1
    WHEN month(anuncio_fecha_publicacion) >= 5 AND month(anuncio_fecha_publicacion) <= 8 THEN 2
    WHEN month(anuncio_fecha_publicacion) >= 9 AND month(anuncio_fecha_publicacion) <= 12 THEN 3
    END)) AS TIEMPO,
    moneda_id,
    agente_id,
    estado_anuncio_id,
    (select BI_fecha_anuncio_id from LOS_QUERY_EXPLORERS_BI.BI_Dim_Fecha_Anuncio where BI_fecha_anuncio_inicio = anuncio_fecha_publicacion
    and BI_fecha_anuncio_fin = anuncio_fecha_finalizacion),
    anuncio_costo_publicacion
from LOS_QUERY_EXPLORERS.anuncio
join LOS_QUERY_EXPLORERS.tipo_operacion on anuncio_tipo_operacion = tipo_operacion_id
join LOS_QUERY_EXPLORERS.inmueble on anuncio_inmueble = inmueble_id
join LOS_QUERY_EXPLORERS.moneda on anuncio_moneda = moneda_id
join LOS_QUERY_EXPLORERS.agente on agente_id = anuncio_agente
join LOS_QUERY_EXPLORERS.estado_anuncio on estado_anuncio_id = anuncio_estado
group by
    tipo_operacion_id,
    inmueble_id,
    anuncio_fecha_publicacion,
    anuncio_fecha_finalizacion,
    moneda_id,
    agente_id,
    estado_anuncio_id,
    anuncio_costo_publicacion
END
GO

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
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_inquilino
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Agente
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Inmueble
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Periodo
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Alquiler
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Venta
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Estado_Anuncio
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Fecha_Anuncio
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Anuncio

print 'Migracion finalizada'
go

-- CREACION DE VISTAS

/* 
1. Duración promedio (en días) que se encuentran publicados los anuncios
según el tipo de operación (alquiler, venta, etc), barrio y ambientes para cada
cuatrimestre de cada año. Se consideran todos los anuncios que se dieron de alta
en ese cuatrimestre. La duración se calcula teniendo en cuenta la fecha de alta y
la fecha de finalización.
*/
GO
create view LOS_QUERY_EXPLORERS_BI.Vista_1 as
    select BI_tipo_operacion_nombre, BI_ubicacion_barrio, BI_inmueble_ambientes, 
    BI_tiempo_anio,
    BI_tiempo_cuatrimestre,
    avg(datediff(day, BI_fecha_anuncio_inicio, BI_fecha_anuncio_fin)) 'Duracion Promedio'
    from LOS_QUERY_EXPLORERS_BI.BI_Anuncio
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Fecha_Anuncio on BI_fecha_anuncio_id = BI_anuncio_fecha_anuncio
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble on BI_anuncio_inmueble = BI_inmueble_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion on BI_inmueble_ubicacion = BI_ubicacion_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_anuncio_tiempo = BI_tiempo_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion on BI_tipo_operacion_id = BI_anuncio_tipo_operacion
    group by BI_tipo_operacion_nombre, BI_ubicacion_barrio, BI_inmueble_ambientes, BI_tiempo_anio, BI_tiempo_cuatrimestre
GO

/*
2. Precio promedio de los anuncios de inmuebles según el tipo de operación
(alquiler, venta, etc), tipo de inmueble y rango m2 para cada cuatrimestre/año.
Se consideran todos los anuncios que se dieron de alta en ese cuatrimestre. El
precio se debe expresar en el tipo de moneda que corresponda, identificando de
cuál se trata.
*/
create view LOS_QUERY_EXPLORERS_BI.Vista_2 as
    select
    CONCAT(BI_tipo_moneda_nombre, ' ', avg(BI_anuncio_costo_publicacion)) 'Precio Promedio',
    BI_anuncio_tipo_operacion, BI_inmueble_tipo_inmueble, BI_inmueble_rango_m2,
    BI_tiempo_anio,
    BI_tiempo_cuatrimestre
    from LOS_QUERY_EXPLORERS_BI.BI_Anuncio
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble on BI_anuncio_inmueble = BI_inmueble_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda on BI_anuncio_tipo_moneda = BI_tipo_moneda_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_anuncio_tiempo
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Fecha_Anuncio on BI_anuncio_fecha_anuncio = BI_fecha_anuncio_id
    group by BI_anuncio_tipo_operacion, BI_inmueble_tipo_inmueble, BI_inmueble_rango_m2, BI_tiempo_anio, BI_tiempo_cuatrimestre, BI_tipo_moneda_nombre
GO

/*
3. Los 5 barrios más elegidos para alquilar en función del rango etario de los
inquilinos para cada cuatrimestre/año. Se calcula en función de los alquileres
dados de alta en dicho periodo.
*/
GO
create view LOS_QUERY_EXPLORERS_BI.Vista_3 as
    select top 5 
    BI_ubicacion_barrio, BI_rango_etario_detalle, BI_tiempo_anio, BI_tiempo_cuatrimestre
    from LOS_QUERY_EXPLORERS_BI.BI_Alquiler
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Inquilino on BI_alquiler_inquilino = BI_inquilino_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble on BI_alquiler_inmueble = BI_inmueble_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion on BI_inmueble_ubicacion = BI_ubicacion_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_alquiler_tiempo
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario on BI_rango_etario_id = BI_inquilino_rango_etario
    group by BI_ubicacion_barrio, BI_rango_etario_detalle, BI_tiempo_anio, BI_tiempo_cuatrimestre
    order by count(*) desc
GO

/*
4. Porcentaje de incumplimiento de pagos de alquileres en término por cada
mes/año. Se calcula en función de las fechas de pago y fecha de vencimiento del
mismo. El porcentaje es en función del total de pagos en dicho periodo.
*/
GO
create view LOS_QUERY_EXPLORERS_BI.Vista_4 as
    select
    STR(AVG(CASE WHEN BI_periodo_pago_alquiler_fecha > BI_periodo_fecha_fin THEN 1 ELSE 0 END)*100) + '%' AS 'Porcentaje',
    BI_tiempo_mes, BI_tiempo_anio
    from LOS_QUERY_EXPLORERS_BI.BI_Alquiler
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Periodo on BI_alquiler_periodo = BI_periodo_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_alquiler_tiempo
    group by BI_tiempo_mes, BI_tiempo_anio
GO

/*
5. Porcentaje promedio de incremento del valor de los alquileres para los
contratos en curso por mes/año. Se calcula tomando en cuenta el último pago
con respecto al del mes en curso, únicamente de aquellos alquileres que hayan
tenido aumento y están activos.
*/
GO
create view LOS_QUERY_EXPLORERS_BI.Vista_5 as
select
    a1.BI_alquiler_inmueble,
    a1.BI_alquiler_inquilino,
    a1.BI_alquiler_tiempo,
    a1.BI_alquiler_periodo,
    avg(p1.BI_periodo_importe - p2.BI_periodo_importe) as promedio_incremento
from LOS_QUERY_EXPLORERS_BI.BI_Alquiler a1
join LOS_QUERY_EXPLORERS_BI.BI_Dim_Periodo p1 ON a1.BI_alquiler_periodo = p1.BI_periodo_id
join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo BDT ON BDT.BI_tiempo_id = a1.BI_alquiler_tiempo
join LOS_QUERY_EXPLORERS_BI.BI_Alquiler a2 ON
    a1.BI_alquiler_inmueble = a2.BI_alquiler_inmueble and
    a1.BI_alquiler_inquilino = a2.BI_alquiler_inquilino
join LOS_QUERY_EXPLORERS_BI.BI_Dim_Periodo p2 ON a2.BI_alquiler_periodo = p2.BI_periodo_id
join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo BDT2 ON BDT2.BI_tiempo_id = a2.BI_alquiler_tiempo
WHERE
    dateadd(month, 1, p2.bi_periodo_fecha_inicio) = p1.bi_periodo_fecha_inicio and
    p2.BI_periodo_importe < p1.BI_periodo_importe and a1.BI_alquiler_estado = 'Activo'
group by a1.BI_alquiler_inmueble, a1.BI_alquiler_inquilino, a1.BI_alquiler_tiempo, a1.BI_alquiler_periodo, a1.BI_alquiler_estado

GO

/*
6. Precio promedio de m2 de la venta de inmuebles según el tipo de inmueble y
la localidad para cada cuatrimestre/año. Se calcula en función de las ventas
concretadas.
*/
GO
create view LOS_QUERY_EXPLORERS_BI.Vista_6 as
    select
    avg(BI_venta_precio/BI_inmueble_sup_total) 'Precio Promedio m2',
    BI_inmueble_tipo_inmueble, BI_ubicacion_localidad, BI_tiempo_cuatrimestre, BI_tiempo_anio
    from LOS_QUERY_EXPLORERS_BI.BI_Venta
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble on BI_venta_inmueble = BI_inmueble_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_venta_tiempo
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion on BI_ubicacion_id = BI_venta_ubicacion
    group by BI_inmueble_tipo_inmueble, BI_ubicacion_localidad, BI_tiempo_cuatrimestre, BI_tiempo_anio
GO

/*
7. Valor promedio de la comisión según el tipo de operación (alquiler, venta, etc)
y sucursal para cada cuatrimestre/año. Se calcula en función de los alquileres y
ventas concretadas dentro del periodo.
*/
GO
create view LOS_QUERY_EXPLORERS_BI.Vista_7 as
    select
    avg(BI_alquiler_comision) 'Promedio comision', BI_tipo_operacion_nombre, BI_tiempo_anio, BI_tiempo_cuatrimestre
    from LOS_QUERY_EXPLORERS_BI.BI_Alquiler
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble on BI_alquiler_inmueble = BI_inmueble_id
    join LOS_QUERY_EXPLORERS_BI.BI_Anuncio on BI_anuncio_inmueble = BI_inmueble_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Agente on BI_agente_id = BI_anuncio_agente
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Periodo on BI_periodo_id = BI_alquiler_periodo
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_alquiler_tiempo
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion on BI_tipo_operacion_id = BI_anuncio_tipo_operacion
    group by BI_tipo_operacion_nombre, BI_agente_sucursal, BI_tiempo_anio, BI_tiempo_cuatrimestre

    UNION

select

    avg(BI_venta_comision) 'Promedio comision', BI_tipo_operacion_nombre, BI_tiempo_anio, BI_tiempo_cuatrimestre
    from LOS_QUERY_EXPLORERS_BI.BI_Venta
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble on BI_venta_inmueble = BI_inmueble_id
    join LOS_QUERY_EXPLORERS_BI.BI_Anuncio on BI_anuncio_inmueble = BI_inmueble_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Agente on BI_agente_id = BI_anuncio_agente
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_venta_tiempo
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion on BI_tipo_operacion_id = BI_anuncio_tipo_operacion
    group by BI_tipo_operacion_nombre, BI_agente_sucursal, BI_tiempo_anio, BI_tiempo_cuatrimestre

GO

/*
8. Porcentaje de operaciones concretadas (tanto de alquileres como ventas) por
cada sucursal, según el rango etario de los empleados por año en función de la
cantidad de anuncios publicados en ese mismo año.
*/
GO
create view LOS_QUERY_EXPLORERS_BI.Vista_8 as
    select
    STR(cast(count(*) as numeric(18,2))/
    cast((select count(*) from  LOS_QUERY_EXPLORERS_BI.BI_Anuncio 
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Estado_Anuncio on BI_anuncio_estado = BI_estado_anuncio_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Fecha_Anuncio on BI_fecha_anuncio_id = BI_anuncio_fecha_anuncio
    where BI_estado_anuncio_id = 1 or BI_estado_anuncio_id = 3 and year(BI_fecha_anuncio_inicio) = BI_tiempo_anio) as numeric(18,2)) * 100) + '%'
    'Porcentaje de operaciones concretadas',
    BI_sucursal_nombre, BI_rango_etario_detalle, BI_tiempo_anio
    from LOS_QUERY_EXPLORERS_BI.BI_Anuncio
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion on BI_tipo_operacion_id = BI_anuncio_tipo_operacion
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Agente on BI_agente_id = BI_anuncio_agente
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal on BI_sucursal_id = BI_agente_sucursal
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario on BI_rango_etario_id = BI_agente_rango_etario
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_tiempo_id = BI_anuncio_tiempo
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Estado_Anuncio on BI_estado_anuncio_id = BI_anuncio_estado
    group by BI_sucursal_nombre, BI_rango_etario_detalle, BI_tiempo_anio
GO

/*
9. Monto total de cierre de contratos por tipo de operación (tanto de alquileres
como ventas) por cada cuatrimestre y sucursal, diferenciando el tipo de moneda.
*/
create view LOS_QUERY_EXPLORERS_BI.Vista_9 as
    select sum(BI_periodo_importe) 'Monto total', BI_tipo_operacion_nombre, BI_tiempo_anio, BI_tiempo_cuatrimestre, BI_agente_sucursal, BI_tipo_moneda_nombre
    from LOS_QUERY_EXPLORERS_BI.BI_Alquiler
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_alquiler_tiempo = BI_tiempo_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble on BI_alquiler_inmueble = BI_inmueble_id
    join LOS_QUERY_EXPLORERS_BI.BI_Anuncio on BI_anuncio_inmueble = BI_inmueble_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Agente on BI_anuncio_agente = BI_agente_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Periodo on BI_alquiler_periodo = BI_periodo_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda on BI_anuncio_tipo_moneda = BI_tipo_moneda_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion on BI_anuncio_tipo_operacion = BI_tipo_operacion_id
    group by BI_tipo_operacion_nombre, BI_tiempo_anio, BI_tiempo_cuatrimestre, BI_agente_sucursal, BI_tipo_moneda_nombre

    UNION

    select sum(BI_venta_precio), BI_tipo_operacion_nombre, BI_tiempo_anio, BI_tiempo_cuatrimestre, BI_agente_sucursal, BI_tipo_moneda_nombre
    from LOS_QUERY_EXPLORERS_BI.BI_Venta
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tiempo on BI_venta_tiempo = BI_tiempo_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble on BI_venta_inmueble = BI_inmueble_id
    join LOS_QUERY_EXPLORERS_BI.BI_Anuncio on BI_anuncio_inmueble = BI_inmueble_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Agente on BI_anuncio_agente = BI_agente_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda on BI_anuncio_tipo_moneda = BI_tipo_moneda_id
    join LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion on BI_anuncio_tipo_operacion = BI_tipo_operacion_id
    group by BI_tipo_operacion_nombre, BI_tiempo_anio, BI_tiempo_cuatrimestre, BI_agente_sucursal, BI_tipo_moneda_nombre

GO