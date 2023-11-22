use GD2C2023
go

-- DROP TABLAS

-- DROP PROCEDURES

-- DROP VISTAS

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
    BI_tipo_operacion_id int identity (1,1) not null,
    BI_tipo_operacion_nombre nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario
(
    BI_rango_etario_id int identity (1,1) not null,
    BI_rango_etario_detalle nvarchar (100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble
(
    BI_tipo_inmueble_id int identity (1,1) not null,
    BI_tipo_inmueble_nombre nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda
(
    BI_tipo_moneda_id int identity (1,1) not null,
    BI_tipo_moneda_nombre nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_m2
(
    BI_rango_m2_id int identity (1,1) not null,
    BI_rango_m2_numero nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal
(
    BI_sucursal_id int identity (1,1) not null,
    BI_sucursal_nombre nvarchar(100),
    BI_sucursal_ubicacion int not null
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Ambientes
(
    BI_ambientes_id int identity (1,1) not null,
    BI_ambientes_numero nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Inmueble
(
    BI_inmueble_id int identity (1,1) not null,
    BI_inmueble_tipo_inmueble int not null,
    BI_inmueble_rango_m2 int not null,
    BI_inmueble_ambientes int not null
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Inquilino
(
    BI_inquilino_id int identity (1,1) not null,
    BI_inquilino_rango_etario int not null
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Agente
(
    BI_agente_id int identity (1,1) not null,
    BI_agente_rango_etario int not null,
    BI_agente_sucursal int not null
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Periodo
(
    BI_periodo_id int identity (1,1) not null,
    BI_periodo_alquiler int not null,
    BI_periodo_fecha_inicio datetime,
    BI_periodo_fecha_fin datetime
)

create table LOS_QUERY_EXPLORERS_BI.BI_Alquiler
(
    BI_alquiler_id int identity (1,1) not null,
    BI_alquiler_ubicacion int not null,
    BI_alquiler_inmueble int not null,
    BI_alquiler_inquilino int not null,
    BI_alquiler_tiempo int not null,
    BI_alquiler_estado nvarchar(100),
    BI_alquiler_comision numeric(18,2)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Venta
(
    BI_venta_id int identity (1,1) not null,
    BI_venta_fecha datetime,
    BI_venta_ubicacion int not null,
    BI_venta_precio numeric(18,2),
    BI_venta_tipo_moneda int not null,
    BI_venta_inmueble int not null,
    BI_venta_comision numeric(18,2)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
(
    BI_anuncio_id int identity (1,1) not null,
    BI_anuncio_fecha_publicacion datetime,
    BI_anuncio_ubicacion int not null,
    BI_anuncio_tipo_operacion int not null,
    BI_anuncio_inmueble int not null,
    BI_anuncio_tiempo int not null,
    BI_anuncio_fecha_finalizacion datetime,
    BI_anuncio_tipo_moneda int not null,
    BI_anuncio_agente int not null,
    BI_anuncio_costo_publicacion numeric(18,2)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Pago_Periodo
(
    BI_pago_periodo_id int identity (1,1) not null,
    BI_pago_periodo_importe numeric(18,0),
    BI_pago_alquiler_fecha datetime,
    BI_pago_periodo_periodo int not null
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
add primary key (BI_alquiler_id);

-- Dimension Venta
alter table LOS_QUERY_EXPLORERS_BI.BI_Venta
add primary key (BI_venta_id);

-- Dimension Anuncio
alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add primary key (BI_anuncio_id);

-- Dimension Pago Periodo
alter table LOS_QUERY_EXPLORERS_BI.BI_Pago_Periodo
add primary key (BI_pago_periodo_id);


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

-- Periodo
alter table LOS_QUERY_EXPLORERS_BI.BI_Dim_Periodo
add constraint FK_BI_Periodo_BI_Alquiler
foreign key (BI_periodo_alquiler)
references LOS_QUERY_EXPLORERS_BI.BI_Alquiler (BI_alquiler_id);

-- Pago Periodo
alter table LOS_QUERY_EXPLORERS_BI.BI_Pago_Periodo
add constraint FK_BI_Pago_Periodo_BI_Periodo
foreign key (BI_pago_periodo_periodo)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Periodo (BI_periodo_id);

-- Alquiler
alter table LOS_QUERY_EXPLORERS_BI.BI_Alquiler
add constraint FK_BI_Alquiler_BI_Ubicacion
foreign key (BI_alquiler_ubicacion)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion (BI_ubicacion_id);

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

-- Anuncio

alter table LOS_QUERY_EXPLORERS_BI.BI_Anuncio
add constraint FK_BI_Anuncio_BI_Ubicacion
foreign key (BI_anuncio_ubicacion)
references LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion (BI_ubicacion_id);

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


-- CREACION PROCEDURE MIGRACION

print 'Creacion Procedimientos de migracion'
go

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_BI_Dim_Tipo_Moneda
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda(BI_tipo_moneda_nombre)
	SELECT moneda_nombre
	FROM LOS_QUERY_EXPLORERS.moneda
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Tipo_Operacion
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion(BI_tipo_operacion_nombre)
	SELECT tipo_operacion_nombre
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
    INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal(BI_sucursal_nombre, BI_sucursal_ubicacion)

    SELECT sucursal_nombre, bi_ubicacion_id
    FROM LOS_QUERY_EXPLORERS.sucursal
    JOIN LOS_QUERY_EXPLORERS.provincia on sucursal_provincia = provincia_id
	JOIN LOS_QUERY_EXPLORERS.localidad on sucursal_localidad = localidad_id
    JOIN LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion on localidad_nombre = BI_ubicacion_localidad and provincia_nombre = BI_ubicacion_provincia and BI_ubicacion_barrio is null

END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Ambientes
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Ambientes(BI_ambientes_numero)
	SELECT ambientes_numero
	FROM LOS_QUERY_EXPLORERS.ambientes
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Ambientes
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Ambientes(BI_ambientes_numero)
	SELECT ambientes_numero
	FROM LOS_QUERY_EXPLORERS.ambientes
END
GO

CREATE PROCEDURE LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Tipo_Inmueble
AS
BEGIN
	INSERT INTO LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble(BI_tipo_inmueble_nombre)
	SELECT tipo_inmueble_nombre
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

print 'Procedimientos de migracion creados'
go

-- EJECUCIONES DE PROCEDURES

print 'Creando Modelo BI'
go

exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_BI_Dim_Tipo_Moneda
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Tipo_Operacion
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Ubicacion
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Sucursal
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Ambientes
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Tipo_Inmueble
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Rango_Etario
exec LOS_QUERY_EXPLORERS_BI.BI_Migrar_Dim_Rango_m2

print 'Modelo BI Creado'
go

-- CREACION DE VISTAS

-- Pruebas
select * from LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion
select * from LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Moneda
select * from LOS_QUERY_EXPLORERS_BI.BI_Dim_Ubicacion
select * from LOS_QUERY_EXPLORERS_BI.BI_Dim_Sucursal
select * from LOS_QUERY_EXPLORERS_BI.BI_Dim_Ambientes
select * from LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Inmueble
select * from LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario
select * from LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_m2