--create extension postgis;
--4
-- create table tableB as
-- select distinct p.geom as "Liczba budynków" from popp p inner join majrivers m ON st_dwithin(p.geom, m.geom, 100000) 
-- where f_codedesc like 'Building';
-- 5
-- create table airportsNew as
-- select name, geom, elev from airports;
--a
-- select name as "Najbardziej na wschód", geom as "Współrzędne" from airportsnew where st_y(geom) in (select max(st_y(geom)) from airportsnew);
-- select name as "Najbardziej na zachód", geom as "Współrzędne" from airportsnew where st_y(geom) in (select min(st_y(geom)) from airportsnew);
--b
-- insert into airportsnew(name, geom, elev) values ('airportB',
-- (select st_centroid(st_union((select geom from airportsnew where st_y(geom) in (select min(st_y(geom)) from airportsnew)), 
-- (select geom from airportsnew where st_y(geom) in (select max(st_y(geom)) from airportsnew))))) ,0);
--6
--  select st_area(st_buffer(st_makeline((select st_centroid(geom) from lakes where names like 'Iliamna Lake'),
-- (select geom from airports where name like 'AMBLER')),1000)) as "Pole Powierzchni";
--7
-- select vegdesc, sum(st_area(st_intersection(st_buffer(tu.geom,0),st_intersection(st_buffer(t.geom,0),st_buffer(s.geom,0))))) from trees t, swamp s, tundra tu group by vegdesc;







