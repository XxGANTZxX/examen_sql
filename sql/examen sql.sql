create database prueba_sql ;


CREATE TABLE empleados(
   id_empleado int(9) not null primary key auto_increment,
   nombreEmpleado VARCHAR(100),
   fecha  datetime
);

CREATE TABLE servicio(
   idServicio int(9) not null primary key auto_increment,
   nombreServicio VARCHAR(100),
   valorServicio  float(7,3)
);

CREATE TABLE vehiculo (
   idVehiculo int(9) not null primary key auto_increment,
   marcaVehiculo VARCHAR(100),
   modeloVehiculo  VARCHAR(100)
);


CREATE TABLE prestacion_servicio (
	idPrestacionServicio int(9) not null primary key auto_increment,
	IdServicio int(9) not null ,
	idEmpleado int(9) not null ,
	idVehiculo int(9) not null ,
	fecha  datetime
);

insert INTO servicio Values(null,'aspirado','10.000'),(null,'aspirado','15.000'),(null,'cambio de aceite','1.000');
insert INTO empleados Values(null,'German Varas','2020-03-01 00:00:00'),(null,'Juan Vazquez','2020-01-01 00:00:00'),(null,'Felipe Herrera','2020-07-01 00:00:00');
insert INTO vehiculo Values(null,'toyota','corola'),(null,'chevrolet','sail'),(null,'chevrolet','corsa'),(null,'misan','tilda');
insert INTO prestacion_servicio Values(null,1,2,1,'2018-10-13 00:00:00'),(null,2,2,1,'2018-11-13 00:00:00'),(null,3,2,2,'2020-02-13 00:00:00'),(null,1,3,3,'2020-02-13 00:00:00');

-- Mostrar la cantidad de prestaciones de servicios ejecutados entre el 01 de octubre y el 26 de noviembre del 2018
select  count(*) as prestaciones from prestacion_servicio  where  fecha between '2018-10-01 00:00:00' and '2018-11-26 23:59:59';


-- Mostrar la cantidad total de prestaciones realizadas agrupadas por idVehiculo
select  count(*) as prestaciones_agrupadasxvehiculo from prestacion_servicio group by idVehiculo;

-- Mostrar los vehículos con la menor cantidad de prestaciones de servicios realizados.

select count(idVehiculo ) as total from prestacion_servicio  group by idVehiculo  order by total limit 1;    ;



CREATE TABLE empleado_ej_2(
   IdEmpleado int(9) not null primary key auto_increment,
   nombre VARCHAR(100),
   apellido  VARCHAR(100),
   direccion VARCHAR(100),
   telefono VARCHAR(12),
   idDepartamento int(11)
   
);
