--create extension postgis

--zad1
create table obiekty(
	name varchar(20),
	geom geometry
)

--obiekt 1
insert into obiekty values (
	'obiekt1', st_geomfromtext('multicurve((0 1,1 1), circularstring(1 1, 2 0, 3 1), circularstring(3 1, 4 2, 5 1), (5 1,6 1))',0));

--obiekt 2
insert into obiekty values (
	'obiekt2', ST_GeomFromText('curvepolygoncompundcurve((10 6, 14 6), circularstring(14 6, 16 4, 14 2, 12 0, 10 2), (10 2, 10 6)), circularstring(11 2, 13 2, 11 2) )', 0) );

--obiekt 3
insert into obiekty values (
	'obiekt3', st_geomfromtext('polygon((10 17, 12 13, 7 15, 10 17))', 0) );

--obiekt 4
insert into obiekty values (
	'obiekt4', st_geomfromtext('linestring(20 20, 25 25, 27 24, 25 22, 26 21, 22 19, 20.5 19.5)', 0) );

--obiekt 5
insert into obiekty values (
	'obiekt5', st_geomfromtext('multipoint Z((30 30 59), (38 32 234))',0) );

--obiekt 6
insert into obiekty values (
	'obiekt6', st_geomfromtext('geometrycollection(linestring(1 1, 3 2), point(4 2))',0) );
	
--1
select st_area(st_buffer(st_shortestline((select geom from obiekty where name like 'obiekt3'), 
									  (select geom from obiekty where name like 'obiekt4')), 5)) as pp_bufora;

--2
update obiekty set geom = st_geomfromtext('polygon((20 20,25 25,27 24,25 22,26 21,22 19,20.5 19.5,20 20))', 0)
where name like 'obiekt4';

--3
insert into obiekty values(
	'obiekt7', (select st_union((select geom from obiekty where name like 'obiekt3'),
								(select geom from obiekty where name like 'obiekt4'))));
--4
select sum (st_area(st_buffer(geom,5))) as pp_bufota_bezlukow from obiekty where st_hasarc(geom) is false;
