drop database if exists Maverick;
create database Maverick;
use Maverick;

ALTER DATABASE Maverick DEFAULT CHARACTER SET utf8;

create table Tipos(
codType int,
nombre varchar(40),
constraint pk_tipos primary key (codType));

insert into Tipos values
(1,"Pistolas"),
(2,"Subfusiles"),
(3,"Escopetas"),
(4,"Fusiles de Asalto"),
(5,"Fusiles de Tirador"),
(6,"Armas Pesadas");

Create table Productos(
id int,
nombre varchar(40),
tipo varchar(40) not null,
codType int,
municion varchar(40),
calibre varchar(40),
cargador varchar(40),
precio varchar(12),
stock int,
activo tinyint(1),
constraint pk_productos primary key (id),
constraint fk_tipos foreign key (codType) references Tipos(codType)
);

insert into Productos values
(1,"Desert Eagle","Pistola","1","50 Action Express","12,7 mm","7 Cartuchos","10$", 0,1),
(2,"Magnum.357","Pistola","1","9 x 33 mmR","44 mm","7 cartuchos","10$",0,0),
(3,"M1911","Pistola","1","45 ACP","11,43 mm","7 Cartuchos","10$",0,0),
(4,"Mp5","Subfusil","2","9 x 19 Parabellum 10 mm","9 x 10 mm","50 cartuchos","10$",0,0),
(5,"FN P90","Subfusil","2","5,7 x 28 (SS190 - SS193)","5,7 mm","50 Catuchos","10$",0,1),
(6,"Thompson","Subfusil","2",".45 ACP (11,43 x 23)","11,43 mm","100 Cartuchos","10$",0,1),
(7,"SPAS - 12","Escopeta","3","Cartucho del 12, recamara de 76 mm","18,53 mm","Deposito tubular 7 + 1 en la recamara","10$",0,1),
(8,"Remington 870","Escopeta","3","Cartucho del 28","28 (18,53 mm)","Deposito tubular de 8 cartuchos","10$",0,1),
(9,"Carabina M4A1","Fusil de Asalto","4","5,56 x 45 OTAN","5,56x45 mm","30 Cartuchos","10$",0,1),
(10,"AK-47","Fusil de Asalto","4","7,62 x 39 .22 Long Rifle","7,62 x 5,5 mm","30 cartuchos","10$",0,1),
(11,"FN SCAR-H", "Fusil de asalto","4","7,62 x 51 OTAN","7,62 mm","20 Cartuchos","10$",0,1),
(12,"Barrett M82A3","Fusil de Asalto","5","12.7 a 99 mm OTAN","12.7 mm","5 o 10 Cartuchos","10$",0,1),
(13,"AWP L96A1","Fusil de Tirador","5","7,62 x 51 OTAN","7,62 mm","10 Cartuchos","10$",0,1),
(14,"Dragunov","Fusil de Tirador","5","7,62 x 54 R","7,62 mm","10 Cartuchos","10$",0,1),
(15,"M134 gau 17","Ametralladora multicanon","6","7.62 x 51 mm Otan","7,62mm","4400","10$",0,1),
(16,"rpg-7","Lanza Cohetes","6","PG-7VL Cohete de 85 mm","40 mm de lanzador, 85 mm la ojiva","1 Cohete","10$",0,1);

create table Atras(
    id int,
    Peso varchar(10),
    Longitud varchar(20),
    Longitud_Canion varchar(20),
    Sistema_Disparo varchar(80),
    Cadencia varchar(30),
    Alcance varchar(10),
    Velocidad varchar(20),
    constraint pk_atras primary key (id),
    constraint fk_productos foreign key (id) references Productos(id)
);

insert into Atras values
(1, '1,9kg', '260mm', '152mm', 'Recarga acondicionada por gas', '60 disparos/min', '50m', '450m/s'),
(2, '1,2 kg', '16.51 cm', '', '', '', '', ''),
(4, '', '', '', '', '', '', ''), 
(3, '1,3kg', '219mm', '127mm', 'Blowback, accion simple', '75 disparos/min', '50m', '243m/s'),
(5, '2,6 kg', '50,5 cm', '26,40 cm', ' Recarga accionada por retroceso de masas', '1100 disparos/min', '200 m', '715 m/s'),
(6, ' 4,8 kg', '811 mm', '267 mm', 'Blowback', '1000 disparos/min', '150 m', '280 m/s'),
(7, '4,4 kg', '1041 mm', '546 mm', ' De corredera / recarga accionada por gas', '4 disparos/segundo', '20 m', '80 m/s'),
(8, '3,2 kg', '1.283 mm', '762 mm', 'Accion de bombeo ', '40 disparos/min', '40 m', '80m/s'),
(9, '3,52 kg', '838 mm', '368,3 mm', 'Recarga accionada por gas, cerrojo rotativo', '950 disparos/min', '500 m', '910 m/s'),
(10, '4,3 kg', '870 mm', ' 415 mm', 'Recarga accionada por gas, cerrojo rotativo', '600 disparos/minuto ', '302 m', '715 m/s'),
(11, '3.58 kg', '700 mm', '400 mm', 'Recarga accionada por gas, cerrojo rotativo', '600 disparos/min', '1000 Metros', '802 m/s'),
(12, '13,5 kg', '1200 mm', '510 mm', 'Recarga accionada por retroceso ', '75 disparos/min', '1800 m', '853 m/s'),
(13, '6,5 kg', '1180 mm', ' 660 mm', 'Cerrojo accionado manualmente ', '20 disparos/min', '800 m', '850 m/s'),
(14, '4,30 kg', '1225 mm', '610 mm', 'Recarga accionada por gas, cerrojo rotativo', '80 disparos/min', '800 m', '830 m/s'),
(15, '16kg', '80 cm', '56 cm', 'Canones rotativos accionados electricamente ', '4000 disparos/min ', '1000m', '856 m/s'),
(16, '7 kg', '950 mm', '0 mm', 'pequena carga tubular de polvora', '1 disparo/min', '920', '294 m/s');

create table carrito(
    id int,
    nombre varchar(40),
    precio varchar(12),
    cantidad int,
    activo boolean,
    constraint pk_carrito primary key (id),
    constraint fk_productoscarrito foreign key (id) references Productos(id)
);

insert into carrito values
(1,"Desert Eagle","10$",1,1),
(2,"Magnum.357","10$",1,0),
(3,"M1911","10$",1,0),
(4,"Mp5","10$",1,0),
(5,"FN P90","10$",1,1),
(6,"Thompson","10$",1,1),
(7,"SPAS - 12","10$",1,1),
(8,"Remington 870","10$",1,1),
(9,"Carabina M4A1","10$",1,1),
(10,"AK-47","10$",1,1),
(11,"FN SCAR-H","10$",1,1),
(12,"Barrett M82A3","10$",1,1),
(13,"AWP L96A1","10$",1,1),
(14,"Dragunov","10$",1,1),
(15,"M134 gau 17","10$",1,1),
(16,"rpg-7","10$",1,1);


create view listacarrito as
select * from carrito;

