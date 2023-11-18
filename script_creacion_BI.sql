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
    BI_ubicacion_provincia numeric(18,0),
    BI_ubicacion_localidad numeric(18,0),
    BI_ubicacion_barrio numeric(18,0)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Tipo_Operacion
(
    BI_tipo_operacion_id int identity (1,1) not null,
    BI_tipo_operacion_nombre nvarchar(100)
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Rango_Etario
(
    BI_rango_etario_id int identity (1,1) not null,
    BI_rango_etario_inquilino nvarchar(100),
    BI_rango_etario_agente nvarchar(100)
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
    BI_sucursal_direccion nvarchar(100),
    BI_sucursal_telefono nvarchar(100),
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
    BI_inquilino_fecha_de_nacimiento DATETIME
)

create table LOS_QUERY_EXPLORERS_BI.BI_Dim_Agente
(
    BI_agente_id int identity (1,1) not null,
    BI_agente_fecha_de_nacimiento DATETIME,
    BI_agente_sucursal int not null
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

-- CREACION PROCEDURE MIGRACION

-- EJECUCIONES DE PROCEDURES

-- CREACION DE VISTAS
