use GD2C2023
go

--Creacion de esquema
if exists (select name from sys.schemas where name = 'LOS_QUERY_EXPLORERS')
    drop schema LOS_QUERY_EXPLORERS;
go

create schema LOS_QUERY_EXPLORERS;
go

--Creacion de tablas

create table LOS_QUERY_EXPLORERS.moneda
(
	moneda_id numeric(18,0) identity(1,1) NOT NULL,
	moneda_nombre nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.tipo_operacion
(
	tipo_operacion_id numeric(18,0) identity(1,1) NOT NULL,
	tipo_operacion_nombre nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.tipo_periodo
(
	tipo_periodo_id numeric(18,0) identity(1,1) NOT NULL,
	tipo_periodo_nombre nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.estado_anuncio
(
	estado_anuncio_id numeric(18,0) identity(1,1) NOT NULL,
	estado_anuncio_nombre nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.persona
(
	persona_id numeric(18,0) identity(1,1) NOT NULL,
	persona_nombre nvarchar(100) NULL,
	persona_apellido nvarchar(100) NULL,
	persona_dni numeric(18,0) NULL,
	persona_fecha_nacimiento datetime NULL, 
	persona_mail nvarchar(100) NULL,
	persona_telefono numeric(18,0) NULL,
	persona_fecha_registro datetime NULL
)

create table LOS_QUERY_EXPLORERS.inquilino
(
	inquilino_id numeric(18,0) identity(1,1) NOT NULL,
	inquilino_persona numeric(18,0) NOT NULL
)

create table LOS_QUERY_EXPLORERS.propietario
(
	propietario_id numeric(18,0) identity(1,1) NOT NULL,
	propietario_persona numeric(18,0) NOT NULL
)

create table LOS_QUERY_EXPLORERS.agente
(
	agente_id numeric(18,0) identity(1,1) NOT NULL,
	agente_persona numeric(18,0) NOT NULL,
	agente_sucursal numeric(18,0) NOT NULL
)

create table LOS_QUERY_EXPLORERS.comprador
(
	comprador_id numeric(18,0) identity(1,1) NOT NULL,
	comprador_persona numeric(18,0) NOT NULL
)

create table LOS_QUERY_EXPLORERS.barrio
(
	barrio_id numeric(18,0) identity(1,1) NOT NULL,
	barrio_nombre nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.localidad
(
	localidad_id numeric(18,0) identity(1,1) NOT NULL,
	localidad_nombre nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.provincia
(
	provincia_id numeric(18,0) identity(1,1) NOT NULL,
	provincia_nombre nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.sucursal
(
	sucursal_id numeric(18,0) NOT NULL,
	sucursal_nombre nvarchar(100) NULL,
	sucursal_direccion nvarchar(100) NULL,
	sucursal_telefono nvarchar(100) NULL,
	sucursal_localidad numeric(18,0) NOT NULL,
	sucursal_provincia numeric(18,0) NOT NULL
)

create table LOS_QUERY_EXPLORERS.caracteristicasXInmueble
(
	caracteristicasXInmueble_id numeric(18,0) identity(1,1) NOT NULL,
	caracteristica_id numeric(18,0) NOT NULL,
	inmueble_id numeric(18,0) NOT NULL
)

create table LOS_QUERY_EXPLORERS.caracteristica
(
	caracteristica_id numeric(18,0) identity(1,1) NOT NULL,
	caracteristica_nombre nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.tipo_inmueble
(
	tipo_inmueble_id numeric(18,0) identity(1,1) NOT NULL,
	tipo_inmueble_nombre nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.estado_inmueble
(
	estado_inmueble_id numeric(18,0) identity(1,1) NOT NULL,
	estado_inmueble_nombre nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.orientacion
(
	orientacion_id numeric(18,0) identity(1,1) NOT NULL,
	orientacion_nombre nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.disposicion
(
	disposicion_id numeric(18,0) identity(1,1) NOT NULL,
	disposicion_nombre nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.ambientes
(
	ambientes_id numeric(18,0) identity(1,1) NOT NULL,
	ambientes_numero nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.inmueble
(
	inmueble_id numeric(18,0) NOT NULL,
	inmueble_tipo_inmueble numeric(18,0) NOT NULL,
	inmueble_descripcion nvarchar(100) NULL,
	inmueble_propietario numeric(18,0) NOT NULL,
	inmueble_direccion nvarchar(100) NULL,
	inmueble_provincia numeric(18,0) NOT NULL,
	inmueble_localidad numeric(18,0) NOT NULL,
	inmueble_barrio numeric(18,0) NOT NULL,
	inmueble_ambientes numeric(18,0) NOT NULL,
	inmueble_superficie_total numeric(18,2) NULL,
	inmueble_disposicion numeric(18,0) NOT NULL,
	inmueble_orientacion numeric(18,0) NOT NULL,
	inmueble_estado numeric (18,0) NOT NULL,
	inmueble_antiguedad numeric(18,0) NULL,
	inmueble_expensas numeric(18,2) NULL,
	inmueble_dependencia bit NULL
)

create table LOS_QUERY_EXPLORERS.anuncio
(
	anuncio_id numeric(19,0) NOT NULL,
	anuncio_fecha_publicacion datetime NULL,
	anuncio_agente numeric(18,0) NOT NULL,
	anuncio_tipo_operacion numeric(18,0) NOT NULL,
	anuncio_inmueble numeric(18,0) NOT NULL,
	anuncio_precio_publicado numeric(18,2) NULL,
	anuncio_moneda numeric(18,0) NOT NULL,
	anuncio_tipo_periodo numeric(18,0) NOT NULL,
	anuncio_estado numeric(18,0) NOT NULL,
	anuncio_fecha_finalizacion datetime NULL,
	anuncio_costo_publicacion numeric(18,2) NULL
)

create table LOS_QUERY_EXPLORERS.estado_alquiler
(
estado_alquiler_id numeric(18,0) identity(1,1) NOT NULL,
estado_alquiler_nombre nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.alquiler
(
	alquiler_id numeric(18,0) NOT NULL,
	alquiler_anuncio numeric(19,0) NOT NULL,
	alquiler_inquilino numeric(18,0) NOT NULL,
	alquiler_fecha_inicio datetime NULL,
	alquiler_fecha_fin datetime NULL,
	alquiler_cant_periodos numeric(18,0) NULL,
	alquiler_deposito numeric(18,2) NULL,
	alquiler_comision_inmobiliaria numeric(18,2) NULL,
	alquiler_gastos_de_averiguaciones numeric(18,2) NULL,
	alquiler_estado numeric(18,0) NOT NULL
)

create table LOS_QUERY_EXPLORERS.periodo
(
	periodo_id numeric(18,0) identity(1,1) NOT NULL,
	periodo_alquiler numeric(18,0) NOT NULL,
	periodo_numero numeric(18,0) NULL,
	periodo_fecha_inicio datetime NULL,
	periodo_fecha_fin datetime NULL,
	periodo_descripcion nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.importe
(
	importe_id numeric(18,0) identity(1,1) NOT NULL,
	importe_periodo_inicio numeric(18,0) NOT NULL,
	importe_periodo_fin numeric(18,0) NOT NULL,
	importe_valor numeric(18,2) NULL
)

create table LOS_QUERY_EXPLORERS.medio_de_pago
(
	medio_de_pago_id numeric(18,0) identity(1,1) NOT NULL,
	medio_de_pago_nombre nvarchar(100) NULL
)

create table LOS_QUERY_EXPLORERS.pago_periodo
(
	pago_periodo_id numeric(18,0) identity(1,1) NOT NULL,
	pago_periodo_fecha datetime NULL,
	pago_periodo_periodo numeric(18,0) NOT NULL,
	pago_periodo_medio_de_pago numeric(18,0) NOT NULL,
	pago_periodo_importe numeric(18,0) NOT NULL
)

create table LOS_QUERY_EXPLORERS.pago_venta
(
	pago_venta_id numeric(18,0) identity(1,1) NOT NULL,
	pago_venta_venta numeric(18,0) NOT NULL,
	pago_venta_importe numeric(18,2) NULL,
	pago_venta_moneda numeric(18,0) NOT NULL,
	pago_venta_cotizacion numeric(18,2) NULL,
	pago_venta_medio_de_pago numeric(18,0) NOT NULL
)

create table LOS_QUERY_EXPLORERS.venta
(
	venta_id numeric(18,0) NOT NULL,
	venta_anuncio numeric(19,0) NOT NULL,
	venta_comprador numeric(18,0) NOT NULL,
	venta_fecha datetime NULL,
	venta_precio numeric(18,2) NULL,
	venta_moneda_precio numeric(18,0) NOT NULL,
	venta_pago numeric(18,0) NOT NULL,
	venta_comision_inmobiliaria numeric(18,2) NULL
)

go

--Creacion de PK

alter table LOS_QUERY_EXPLORERS.moneda
add primary key (moneda_id);

alter table LOS_QUERY_EXPLORERS.tipo_operacion
add primary key (tipo_operacion_id);

alter table LOS_QUERY_EXPLORERS.tipo_periodo
add primary key (tipo_periodo_id);

alter table LOS_QUERY_EXPLORERS.estado_anuncio
add primary key (estado_anuncio_id);

alter table LOS_QUERY_EXPLORERS.persona
add primary key (persona_id);

alter table LOS_QUERY_EXPLORERS.inquilino
add primary key (inquilino_id);

alter table LOS_QUERY_EXPLORERS.propietario
add primary key (propietario_id);

alter table LOS_QUERY_EXPLORERS.agente
add primary key (agente_id);

alter table LOS_QUERY_EXPLORERS.comprador
add primary key (comprador_id);

alter table LOS_QUERY_EXPLORERS.barrio
add primary key (barrio_id);

alter table LOS_QUERY_EXPLORERS.localidad
add primary key (localidad_id);

alter table LOS_QUERY_EXPLORERS.provincia
add primary key (provincia_id);

alter table LOS_QUERY_EXPLORERS.sucursal
add primary key (sucursal_id);

alter table LOS_QUERY_EXPLORERS.caracteristicasXInmueble
add primary key (caracteristicasXInmueble_id);

alter table LOS_QUERY_EXPLORERS.caracteristica
add primary key (caracteristica_id);

alter table LOS_QUERY_EXPLORERS.tipo_inmueble
add primary key (tipo_inmueble_id);

alter table LOS_QUERY_EXPLORERS.estado_inmueble
add primary key (estado_inmueble_id);

alter table LOS_QUERY_EXPLORERS.orientacion
add primary key (orientacion_id);

alter table LOS_QUERY_EXPLORERS.disposicion
add primary key (disposicion_id);

alter table LOS_QUERY_EXPLORERS.ambientes
add primary key (ambientes_id);

alter table LOS_QUERY_EXPLORERS.inmueble
add primary key (inmueble_id);

alter table LOS_QUERY_EXPLORERS.anuncio
add primary key (anuncio_id);

alter table LOS_QUERY_EXPLORERS.estado_alquiler
add primary key (estado_alquiler_id);

alter table LOS_QUERY_EXPLORERS.alquiler
add primary key (alquiler_id);

alter table LOS_QUERY_EXPLORERS.periodo
add primary key (periodo_id);

alter table LOS_QUERY_EXPLORERS.importe
add primary key (importe_id);

alter table LOS_QUERY_EXPLORERS.medio_de_pago
add primary key (medio_de_pago_id);

alter table LOS_QUERY_EXPLORERS.pago_periodo
add primary key (pago_periodo_id);

alter table LOS_QUERY_EXPLORERS.pago_venta
add primary key (pago_venta_id);

alter table LOS_QUERY_EXPLORERS.venta
add primary key (venta_id);

go

--Creacion de FK y Constraints

alter table LOS_QUERY_EXPLORERS.inquilino
add constraint fk_inquilino_persona
foreign key (inquilino_persona) references LOS_QUERY_EXPLORERS.persona(persona_id);

alter table LOS_QUERY_EXPLORERS.propietario
add constraint fk_propietario_persona
foreign key (propietario_persona) references LOS_QUERY_EXPLORERS.persona(persona_id);

alter table LOS_QUERY_EXPLORERS.agente
add constraint fk_agente_persona
foreign key (agente_persona) references LOS_QUERY_EXPLORERS.persona(persona_id);

alter table LOS_QUERY_EXPLORERS.agente
add constraint fk_agente_sucursal
foreign key (agente_sucursal) references LOS_QUERY_EXPLORERS.sucursal(sucursal_id);

alter table LOS_QUERY_EXPLORERS.comprador
add constraint fk_comprador_persona
foreign key (comprador_persona) references LOS_QUERY_EXPLORERS.persona(persona_id);

alter table LOS_QUERY_EXPLORERS.sucursal
add constraint fk_sucursal_localidad
foreign key (sucursal_localidad) references LOS_QUERY_EXPLORERS.localidad(localidad_id);

alter table LOS_QUERY_EXPLORERS.sucursal
add constraint fk_sucursal_provincia
foreign key (sucursal_provincia) references LOS_QUERY_EXPLORERS.provincia(provincia_id);

alter table LOS_QUERY_EXPLORERS.caracteristicasXInmueble
add constraint fk_id_inmueble
foreign key (inmueble_id) references LOS_QUERY_EXPLORERS.inmueble(inmueble_id);

alter table LOS_QUERY_EXPLORERS.caracteristicasXInmueble
add constraint fk_caracteristica_id
foreign key (caracteristica_id) references LOS_QUERY_EXPLORERS.caracteristica(caracteristica_id);

alter table LOS_QUERY_EXPLORERS.inmueble
add constraint fk_inmueble_tipo_inmueble
foreign key (inmueble_tipo_inmueble) references LOS_QUERY_EXPLORERS.tipo_inmueble(tipo_inmueble_id);

alter table LOS_QUERY_EXPLORERS.inmueble
add constraint fk_inmueble_propietario
foreign key (inmueble_propietario) references LOS_QUERY_EXPLORERS.propietario(propietario_id);

alter table LOS_QUERY_EXPLORERS.inmueble
add constraint fk_inmueble_provincia
foreign key (inmueble_provincia) references LOS_QUERY_EXPLORERS.provincia(provincia_id);

alter table LOS_QUERY_EXPLORERS.inmueble
add constraint fk_inmueble_localidad
foreign key (inmueble_localidad) references LOS_QUERY_EXPLORERS.localidad(localidad_id);

alter table LOS_QUERY_EXPLORERS.inmueble
add constraint fk_inmueble_barrio
foreign key (inmueble_barrio) references LOS_QUERY_EXPLORERS.barrio(barrio_id);

alter table LOS_QUERY_EXPLORERS.inmueble
add constraint fk_inmueble_ambientes
foreign key (inmueble_ambientes) references LOS_QUERY_EXPLORERS.ambientes(ambientes_id);

alter table LOS_QUERY_EXPLORERS.inmueble
add constraint fk_inmueble_disposicion
foreign key (inmueble_disposicion) references LOS_QUERY_EXPLORERS.disposicion(disposicion_id);

alter table LOS_QUERY_EXPLORERS.inmueble
add constraint fk_inmueble_orientacion
foreign key (inmueble_orientacion) references LOS_QUERY_EXPLORERS.orientacion(orientacion_id);

alter table LOS_QUERY_EXPLORERS.inmueble
add constraint fk_inmueble_estado
foreign key (inmueble_estado) references LOS_QUERY_EXPLORERS.estado_inmueble(estado_inmueble_id);

alter table LOS_QUERY_EXPLORERS.anuncio
add constraint fk_anuncio_agente
foreign key (anuncio_agente) references LOS_QUERY_EXPLORERS.agente(agente_id);

alter table LOS_QUERY_EXPLORERS.anuncio
add constraint fk_anuncio_tipo_operacion
foreign key (anuncio_tipo_operacion) references LOS_QUERY_EXPLORERS.tipo_operacion(tipo_operacion_id);

alter table LOS_QUERY_EXPLORERS.anuncio
add constraint fk_anuncio_inmueble
foreign key (anuncio_inmueble) references LOS_QUERY_EXPLORERS.inmueble(inmueble_id);

alter table LOS_QUERY_EXPLORERS.anuncio
add constraint fk_anuncio_moneda
foreign key (anuncio_moneda) references LOS_QUERY_EXPLORERS.moneda(moneda_id);

alter table LOS_QUERY_EXPLORERS.anuncio
add constraint fk_anuncio_tipo_periodo
foreign key (anuncio_tipo_periodo) references LOS_QUERY_EXPLORERS.tipo_periodo(tipo_periodo_id);

alter table LOS_QUERY_EXPLORERS.anuncio
add constraint fk_anuncio_estado
foreign key (anuncio_estado) references LOS_QUERY_EXPLORERS.estado_anuncio(estado_anuncio_id);

alter table LOS_QUERY_EXPLORERS.alquiler
add constraint fk_alquiler_anuncio
foreign key (alquiler_anuncio) references LOS_QUERY_EXPLORERS.anuncio(anuncio_id);

alter table LOS_QUERY_EXPLORERS.alquiler
add constraint fk_alquiler_inquilino
foreign key (alquiler_inquilino) references LOS_QUERY_EXPLORERS.inquilino(inquilino_id);

alter table LOS_QUERY_EXPLORERS.alquiler
add constraint fk_alquiler_estado
foreign key (alquiler_estado) references LOS_QUERY_EXPLORERS.estado_alquiler(estado_alquiler_id);

alter table LOS_QUERY_EXPLORERS.periodo
add constraint fk_periodo_alquiler
foreign key (periodo_alquiler) references LOS_QUERY_EXPLORERS.alquiler(alquiler_id);

alter table LOS_QUERY_EXPLORERS.importe
add constraint fk_importe_periodo_inicio
foreign key (importe_periodo_inicio) references LOS_QUERY_EXPLORERS.periodo(periodo_id);

alter table LOS_QUERY_EXPLORERS.importe
add constraint fk_importe_periodo_fin
foreign key (importe_periodo_fin) references LOS_QUERY_EXPLORERS.periodo(periodo_id);

alter table LOS_QUERY_EXPLORERS.pago_periodo
add constraint fk_pago_periodo_periodo
foreign key (pago_periodo_periodo) references LOS_QUERY_EXPLORERS.periodo(periodo_id);

alter table LOS_QUERY_EXPLORERS.pago_periodo
add constraint fk_pago_periodo_medio_de_pago
foreign key (pago_periodo_medio_de_pago) references LOS_QUERY_EXPLORERS.medio_de_pago(medio_de_pago_id);

alter table LOS_QUERY_EXPLORERS.pago_periodo
add constraint fk_pago_periodo_importe
foreign key (pago_periodo_importe) references LOS_QUERY_EXPLORERS.importe(importe_id);

alter table LOS_QUERY_EXPLORERS.pago_venta
add constraint fk_pago_venta_venta
foreign key (pago_venta_venta) references LOS_QUERY_EXPLORERS.venta(venta_id);

alter table LOS_QUERY_EXPLORERS.pago_venta
add constraint fk_pago_venta_moneda
foreign key (pago_venta_moneda) references LOS_QUERY_EXPLORERS.moneda(moneda_id);

alter table LOS_QUERY_EXPLORERS.pago_venta
add constraint fk_pago_venta_medio_de_pago
foreign key (pago_venta_medio_de_pago) references LOS_QUERY_EXPLORERS.medio_de_pago(medio_de_pago_id);

alter table LOS_QUERY_EXPLORERS.venta
add constraint fk_venta_anuncio
foreign key (venta_anuncio) references LOS_QUERY_EXPLORERS.anuncio(anuncio_id);

alter table LOS_QUERY_EXPLORERS.venta
add constraint fk_venta_comprador
foreign key (venta_comprador) references LOS_QUERY_EXPLORERS.comprador(comprador_id);

alter table LOS_QUERY_EXPLORERS.venta
add constraint fk_venta_moneda_precio
foreign key (venta_moneda_precio) references LOS_QUERY_EXPLORERS.moneda(moneda_id);

alter table LOS_QUERY_EXPLORERS.venta
add constraint fk_venta_pago
foreign key (venta_pago) references LOS_QUERY_EXPLORERS.pago_venta(pago_venta_id);

-- Migracion de datos - Creacion de Stored Procedures

--MONEDA
go

create procedure LOS_QUERY_EXPLORERS.migracion_moneda
as
begin 
	insert into LOS_QUERY_EXPLORERS.moneda(moneda_nombre)

	select distinct ANUNCIO_MONEDA
	from gd_esquema.Maestra 
	where ANUNCIO_MONEDA is not null 

	union
	
	select distinct VENTA_MONEDA
	from gd_esquema.Maestra 
	where VENTA_MONEDA is not null and not exists (select distinct ANUNCIO_MONEDA from gd_esquema.Maestra where ANUNCIO_MONEDA is not null )
	
    union 

	select distinct PAGO_VENTA_MONEDA
	from gd_esquema.Maestra 
	where PAGO_VENTA_MONEDA is not null and not exists (select distinct VENTA_MONEDA from gd_esquema.Maestra where VENTA_MONEDA is not null ) or not exists (select distinct VENTA_MONEDA from gd_esquema.Maestra where VENTA_MONEDA is not null)
end
go

--TIPO OPERACION
create procedure LOS_QUERY_EXPLORERS.migracion_tipo_operacion
as
begin 
	insert into LOS_QUERY_EXPLORERS.tipo_operacion(tipo_operacion_nombre)

    select distinct ANUNCIO_TIPO_OPERACION
	from gd_esquema.Maestra
	where ANUNCIO_TIPO_OPERACION is not null
end
go

--TIPO PERIODO
create procedure LOS_QUERY_EXPLORERS.migracion_tipo_periodo
as
begin 
	insert into LOS_QUERY_EXPLORERS.tipo_periodo(tipo_periodo_nombre)

    select distinct ANUNCIO_TIPO_PERIODO
	from gd_esquema.Maestra
	where ANUNCIO_TIPO_PERIODO is not null
end
go

--ESTADO ANUNCIO
create procedure LOS_QUERY_EXPLORERS.migracion_estado_anuncio
as
begin 
	insert into LOS_QUERY_EXPLORERS.estado_anuncio(estado_anuncio_nombre)

    select distinct ANUNCIO_ESTADO
	from gd_esquema.Maestra
	where ANUNCIO_ESTADO is not null
end
go

--TIPO INMUEBLE
create procedure LOS_QUERY_EXPLORERS.migracion_tipo_inmueble
as
begin 
	insert into LOS_QUERY_EXPLORERS.tipo_inmueble(tipo_inmueble_nombre)

    select distinct INMUEBLE_TIPO_INMUEBLE
	from gd_esquema.Maestra
	where INMUEBLE_TIPO_INMUEBLE is not null
end
go

-- ESTADO ALQUILER
create procedure LOS_QUERY_EXPLORERS.migracion_estado_alquiler
as
begin
    insert into LOS_QUERY_EXPLORERS.estado_alquiler (estado_alquiler_nombre)

    select distinct ALQUILER_ESTADO
    from gd_esquema.Maestra
    where ALQUILER_ESTADO is not null

end
go

-- MEDIO DE PAGO
create procedure LOS_QUERY_EXPLORERS.migracion_medio_de_pago
as
begin
    insert into LOS_QUERY_EXPLORERS.medio_de_pago (medio_de_pago_nombre)

    select distinct PAGO_ALQUILER_MEDIO_PAGO
    from gd_esquema.Maestra
    where PAGO_ALQUILER_MEDIO_PAGO is not null

    union

    select distinct PAGO_VENTA_MEDIO_PAGO
    from gd_esquema.Maestra
    where PAGO_VENTA_MEDIO_PAGO is not null and not exists (select distinct PAGO_ALQUILER_MEDIO_PAGO from gd_esquema.Maestra where PAGO_ALQUILER_MEDIO_PAGO is not null)

end
go


-- BARRIO
create procedure LOS_QUERY_EXPLORERS.migracion_barrio
as
begin
    insert into LOS_QUERY_EXPLORERS.barrio (barrio_nombre)

    select distinct INMUEBLE_BARRIO
    from gd_esquema.Maestra
    where INMUEBLE_BARRIO is not null

end
go

-- LOCALIDAD
create procedure LOS_QUERY_EXPLORERS.migracion_localidad
as
begin
    insert into LOS_QUERY_EXPLORERS.localidad (localidad_nombre)
    select distinct INMUEBLE_LOCALIDAD
    from gd_esquema.Maestra
	union
	select distinct SUCURSAL_LOCALIDAD
    from gd_esquema.Maestra
    where INMUEBLE_LOCALIDAD is not null and SUCURSAL_LOCALIDAD is not null

end
go

-- PROVINCIA
create procedure LOS_QUERY_EXPLORERS.migracion_provincia
as
begin
    insert into LOS_QUERY_EXPLORERS.provincia (provincia_nombre)
    select distinct INMUEBLE_PROVINCIA
    from gd_esquema.Maestra
	union
	select distinct SUCURSAL_PROVINCIA
    from gd_esquema.Maestra
    where INMUEBLE_PROVINCIA is not null and SUCURSAL_PROVINCIA is not null

end
go

--CARACTERISTICAS
create procedure LOS_QUERY_EXPLORERS.migracion_caracteristica
as
begin
    insert into LOS_QUERY_EXPLORERS.caracteristica (caracteristica_nombre)
    values ('Cable'), ('Calefaccion'), ('Gas'),('WiFi');
end
go

--AMBIENTES
create procedure LOS_QUERY_EXPLORERS.migracion_ambientes
as
begin
    insert into LOS_QUERY_EXPLORERS.ambientes (ambientes_numero)
    select distinct INMUEBLE_CANT_AMBIENTES
    from gd_esquema.Maestra
    where INMUEBLE_CANT_AMBIENTES is not null
end
go

--DISPOSICION
create procedure LOS_QUERY_EXPLORERS.migracion_disposicion
as
begin
    insert into LOS_QUERY_EXPLORERS.disposicion(disposicion_nombre)
    select distinct INMUEBLE_DISPOSICION
    from gd_esquema.Maestra
    where INMUEBLE_DISPOSICION is not null
end
go

--ESTADO INMUEBLE
create procedure LOS_QUERY_EXPLORERS.migracion_estado_inmueble
as
begin
    insert into LOS_QUERY_EXPLORERS.estado_inmueble(estado_inmueble_nombre)
    select distinct INMUEBLE_ESTADO
    from gd_esquema.Maestra
    where Maestra.INMUEBLE_ESTADO is not null
end
go

--ORIENTACION
create procedure LOS_QUERY_EXPLORERS.migracion_orientacion
as
begin
    insert into LOS_QUERY_EXPLORERS.orientacion(orientacion_nombre)
    select distinct INMUEBLE_ORIENTACION
    from gd_esquema.Maestra
    where Maestra.INMUEBLE_ORIENTACION is not null
end
go

-- PERSONA
create procedure LOS_QUERY_EXPLORERS.migracion_persona
as
begin
    insert into LOS_QUERY_EXPLORERS.persona (persona_nombre, persona_apellido, persona_dni, persona_fecha_nacimiento, persona_mail, persona_telefono, persona_fecha_registro)

    select distinct PROPIETARIO_NOMBRE, PROPIETARIO_APELLIDO, PROPIETARIO_DNI, PROPIETARIO_FECHA_NAC, PROPIETARIO_MAIL, PROPIETARIO_TELEFONO, PROPIETARIO_FECHA_REGISTRO
    from gd_esquema.Maestra
    where PROPIETARIO_NOMBRE is not null and PROPIETARIO_APELLIDO is not null and PROPIETARIO_DNI is not null and PROPIETARIO_FECHA_NAC is not null and PROPIETARIO_MAIL is not null and PROPIETARIO_TELEFONO is not null and PROPIETARIO_FECHA_REGISTRO is not null

    union

    select distinct AGENTE_NOMBRE, AGENTE_APELLIDO, AGENTE_DNI, AGENTE_FECHA_NAC, AGENTE_MAIL, AGENTE_TELEFONO, AGENTE_FECHA_REGISTRO
    from gd_esquema.Maestra
    where AGENTE_NOMBRE is not null and AGENTE_APELLIDO is not null and AGENTE_DNI is not null and 
    AGENTE_FECHA_NAC is not null and AGENTE_MAIL is not null and AGENTE_TELEFONO is not null and 
    AGENTE_FECHA_REGISTRO is not null
    union

    select distinct COMPRADOR_NOMBRE, COMPRADOR_APELLIDO, COMPRADOR_DNI, COMPRADOR_FECHA_NAC, COMPRADOR_MAIL, COMPRADOR_TELEFONO, COMPRADOR_FECHA_REGISTRO
    from gd_esquema.Maestra
    where COMPRADOR_NOMBRE is not null and COMPRADOR_APELLIDO is not null and COMPRADOR_DNI is not null and COMPRADOR_FECHA_NAC is not null and COMPRADOR_MAIL is not null and COMPRADOR_TELEFONO is not null and COMPRADOR_FECHA_REGISTRO is not null
   
    union

    select distinct INQUILINO_NOMBRE, INQUILINO_APELLIDO, INQUILINO_DNI, INQUILINO_FECHA_NAC, INQUILINO_MAIL, INQUILINO_TELEFONO, INQUILINO_FECHA_REGISTRO
    from gd_esquema.Maestra
    where INQUILINO_NOMBRE is not null and INQUILINO_APELLIDO is not null and INQUILINO_DNI is not null and INQUILINO_FECHA_NAC is not null and INQUILINO_MAIL is not null and INQUILINO_TELEFONO is not null and INQUILINO_FECHA_REGISTRO is not null
   
end
go

--INQUILINO
create procedure LOS_QUERY_EXPLORERS.migracion_inquilino
as
begin
    insert into LOS_QUERY_EXPLORERS.inquilino(inquilino_persona)
    select distinct (select persona_id from LOS_QUERY_EXPLORERS.persona where (persona_nombre = INQUILINO_NOMBRE) and (persona_apellido = INQUILINO_APELLIDO) and (persona_dni = INQUILINO_DNI) and
	(persona_fecha_nacimiento = INQUILINO_FECHA_NAC) and (persona_mail = INQUILINO_MAIL) and (persona_telefono = INQUILINO_TELEFONO) and (persona_fecha_registro = INQUILINO_FECHA_REGISTRO))
	from gd_esquema.Maestra
    where Maestra.INQUILINO_DNI is not null
end
go

--PROPIETARIO
create procedure LOS_QUERY_EXPLORERS.migracion_propietario
as
begin
    insert into LOS_QUERY_EXPLORERS.propietario(propietario_persona)
    select distinct (select persona_id from LOS_QUERY_EXPLORERS.persona where (persona_nombre = PROPIETARIO_NOMBRE) and (persona_apellido = PROPIETARIO_APELLIDO) and (persona_dni = PROPIETARIO_DNI) and
	(persona_fecha_nacimiento = PROPIETARIO_FECHA_NAC) and (persona_mail = PROPIETARIO_MAIL) and (persona_telefono = PROPIETARIO_TELEFONO) and (persona_fecha_registro = PROPIETARIO_FECHA_REGISTRO))
    from gd_esquema.Maestra
    where Maestra.PROPIETARIO_DNI is not null
end
go

--COMPRADOR
create procedure LOS_QUERY_EXPLORERS.migracion_comprador
as
begin
    insert into LOS_QUERY_EXPLORERS.comprador(comprador_persona)
	select distinct (select persona_id from LOS_QUERY_EXPLORERS.persona where (persona_nombre = COMPRADOR_NOMBRE) and (persona_apellido = COMPRADOR_APELLIDO) and (persona_dni = COMPRADOR_DNI) and
	(persona_fecha_nacimiento = COMPRADOR_FECHA_NAC) and (persona_mail = COMPRADOR_MAIL) and (persona_telefono = COMPRADOR_TELEFONO) and (persona_fecha_registro = COMPRADOR_FECHA_REGISTRO))
	from gd_esquema.Maestra
    where Maestra.COMPRADOR_DNI is not null
end
go

--AGENTE
create procedure LOS_QUERY_EXPLORERS.migracion_agente
as
begin
    insert into LOS_QUERY_EXPLORERS.agente(agente_persona, agente_sucursal)
	select distinct (select persona_id from LOS_QUERY_EXPLORERS.persona where (persona_nombre = AGENTE_NOMBRE) and (persona_apellido = AGENTE_APELLIDO) and (persona_dni = AGENTE_DNI) and
	(persona_fecha_nacimiento = AGENTE_FECHA_NAC) and (persona_mail = AGENTE_MAIL) and (persona_telefono = AGENTE_TELEFONO) and (persona_fecha_registro = AGENTE_FECHA_REGISTRO)), SUCURSAL_CODIGO
    from gd_esquema.Maestra
    where Maestra.AGENTE_DNI is not null
end
go

--SUCURSAL
create procedure LOS_QUERY_EXPLORERS.migracion_sucursal
as
begin
    insert into LOS_QUERY_EXPLORERS.sucursal(sucursal_id, sucursal_nombre, sucursal_direccion, sucursal_telefono, sucursal_localidad, sucursal_provincia)
    select distinct SUCURSAL_CODIGO, SUCURSAL_NOMBRE, SUCURSAL_DIRECCION, SUCURSAL_TELEFONO, (select localidad_id from LOS_QUERY_EXPLORERS.localidad where localidad_nombre = SUCURSAL_LOCALIDAD), (select provincia_id from LOS_QUERY_EXPLORERS.provincia where provincia_nombre = SUCURSAL_PROVINCIA)
    from gd_esquema.Maestra
    where SUCURSAL_CODIGO is not null and SUCURSAL_NOMBRE is not null and SUCURSAL_DIRECCION is not null and SUCURSAL_TELEFONO is not null
end
go

--INMUEBLE
create procedure LOS_QUERY_EXPLORERS.migracion_inmueble
as
begin
    insert into LOS_QUERY_EXPLORERS.inmueble(inmueble_id, inmueble_tipo_inmueble, inmueble_descripcion, inmueble_propietario, inmueble_direccion, inmueble_provincia, inmueble_localidad, inmueble_barrio, inmueble_ambientes, inmueble_superficie_total, inmueble_disposicion, inmueble_orientacion, inmueble_estado, inmueble_antiguedad, inmueble_expensas, inmueble_dependencia)
    select distinct INMUEBLE_CODIGO, 
                    (select tipo_inmueble_id from LOS_QUERY_EXPLORERS.tipo_inmueble where tipo_inmueble_nombre = INMUEBLE_TIPO_INMUEBLE),
                    INMUEBLE_DESCRIPCION,
                    (select propietario_id from LOS_QUERY_EXPLORERS.propietario where propietario_persona = (select persona_id from persona where (persona_apellido = PROPIETARIO_APELLIDO) and (persona_dni = PROPIETARIO_DNI))),
                    INMUEBLE_DIRECCION,
					(select provincia_id from LOS_QUERY_EXPLORERS.provincia where provincia_nombre = INMUEBLE_PROVINCIA),
                    (select localidad_id from LOS_QUERY_EXPLORERS.localidad where localidad_nombre = INMUEBLE_LOCALIDAD),
					(select barrio_id from LOS_QUERY_EXPLORERS.barrio where barrio_nombre = INMUEBLE_BARRIO), 
                    (select ambientes_id from LOS_QUERY_EXPLORERS.ambientes where ambientes_numero = INMUEBLE_CANT_AMBIENTES),
                    INMUEBLE_SUPERFICIETOTAL,
                    (select disposicion_id from LOS_QUERY_EXPLORERS.disposicion where disposicion_nombre = INMUEBLE_DISPOSICION),
                    (select orientacion_id from LOS_QUERY_EXPLORERS.orientacion where orientacion_nombre = INMUEBLE_ORIENTACION),
					(select estado_inmueble_id from LOS_QUERY_EXPLORERS.estado_inmueble where estado_inmueble_nombre = INMUEBLE_ESTADO),
                    INMUEBLE_ANTIGUEDAD,
                    INMUEBLE_EXPESAS,
                    (case 
                        when INMUEBLE_CANT_AMBIENTES = '2 ambientes con dependencia' then 1
                        else 0
                    end)
    from gd_esquema.Maestra
    where Maestra.INMUEBLE_CODIGO is not null
end
go

--Ejecuciones de Stored Procedures

exec LOS_QUERY_EXPLORERS.migracion_moneda
exec LOS_QUERY_EXPLORERS.migracion_tipo_operacion
exec LOS_QUERY_EXPLORERS.migracion_tipo_periodo
exec LOS_QUERY_EXPLORERS.migracion_estado_anuncio
exec LOS_QUERY_EXPLORERS.migracion_tipo_inmueble
exec LOS_QUERY_EXPLORERS.migracion_estado_alquiler
exec LOS_QUERY_EXPLORERS.migracion_medio_de_pago
exec LOS_QUERY_EXPLORERS.migracion_barrio
exec LOS_QUERY_EXPLORERS.migracion_localidad
exec LOS_QUERY_EXPLORERS.migracion_provincia
exec LOS_QUERY_EXPLORERS.migracion_caracteristica
exec LOS_QUERY_EXPLORERS.migracion_ambientes
exec LOS_QUERY_EXPLORERS.migracion_disposicion
exec LOS_QUERY_EXPLORERS.migracion_estado_inmueble
exec LOS_QUERY_EXPLORERS.migracion_orientacion
exec LOS_QUERY_EXPLORERS.migracion_persona
exec LOS_QUERY_EXPLORERS.migracion_inquilino
exec LOS_QUERY_EXPLORERS.migracion_propietario
exec LOS_QUERY_EXPLORERS.migracion_comprador
exec LOS_QUERY_EXPLORERS.migracion_agente
exec LOS_QUERY_EXPLORERS.migracion_sucursal
exec LOS_QUERY_EXPLORERS.migracion_inmueble