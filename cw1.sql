--zad 1
--create database s298436;
--zad 2
--create schema firma;
--zad 3
--create role ksiegowosc;
--grant connect on database s298436 to ksiegowosc;
--grant usage on schema firma to ksiegowosc;
--alter default privileges in schema firma
	--grant select on tables to ksiegowosc;
--zad 4 a
--create table firma.pracownicy(
	--id_pracownika smallint not null,
-- 	imie varchar(15), 
-- 	nazwisko varchar(30), 
-- 	adres varchar(40), 
-- 	telefon varchar(11));

-- create table firma.godziny(
-- 	id_godziny smallint not null,
-- 	data date,
-- 	liczba_godzin smallint,
-- 	id_pracownika smallint not null);
	
-- create table firma.pensja_stanowisko(
-- 	id_pensji smallint not null,
-- 	stanowisko varchar(45),
-- 	kwota smallint);

-- create table firma.premia(
-- 	id_premii smallint not null,
-- 	rodzaj varchar (40),
-- 	kwota smallint);
	
-- create table firma.wynagrodzenie(
-- 	id_wynagrodzenia smallint not null,
-- 	data date,
-- 	id_pracownika smallint not null,
-- 	id_godziny smallint not null,
-- 	id_pensji smallint not null,
-- 	id_premii smallint not null);

-- b
-- alter table firma.pracownicy add primary key (id_pracownika);
-- alter table firma.godziny add primary key (id_godziny);
-- alter table firma.pensja_stanowisko add primary key (id_pensji);
--alter table firma.premia add primary key (id_premii);
--alter table firma.wynagrodzenie add primary key (id_wynagrodzenia);

--c
--alter table firma.godziny add constraint fk_godziny_pracownicy foreign key (id_pracownika) references firma.pracownicy (id_pracownika);
--alter table firma.wynagrodzenie add constraint fk_wynagrodzenie_pracownicy foreign key (id_pracownika) references firma.pracownicy (id_pracownika);
--alter table firma.wynagrodzenie add constraint fk_wynagrodzenie_godziny foreign key (id_godziny) references firma.godziny (id_godziny);
--alter table firma.wynagrodzenie add constraint fk_wynagrodzenie_pensja foreign key (id_pensji) references firma.pensja_stanowisko (id_pensji);
--alter table firma.wynagrodzenie add constraint fk_wynagrodzenie_premia foreign key (id_premii) references firma.premia (id_premii);

--d
-- create index on firma.pracownicy using btree (nazwisko);
-- create index on firma.godziny using btree (data);
-- create index on firma.pensja_stanowisko using btree (stanowisko);
-- create index on firma.premia using btree (rodzaj);
-- create index on firma.wynagrodzenie using btree (data);

--e
-- comment on table firma.pracownicy is 'Tabela Pracownicy';
-- comment on table firma.godziny is 'Tabela Godziny';
-- comment on table firma.pensja_stanowisko is 'Tabela Pensja_Stanowisko';
-- comment on table firma.premia is 'Tabela Premia';
-- comment on table firma.wynagrodzenie is 'Tabela Wynagrodzenie';

--zad 5
-- --pracownicy
-- insert into firma.pracownicy
-- (id_pracownika, imie, nazwisko, adres, telefon)
-- values(1,'Wiktoria','Nowakowska','42-400 Zawiercie ul.Jasna 118','666-505-586');
-- insert into firma.pracownicy
-- (id_pracownika, imie, nazwisko, adres, telefon)
-- values(2,'Dariusz','Adamczyk','45-425 Opole ul.Czestochowska 55','556-985-965');
-- insert into firma.pracownicy
-- (id_pracownika, imie, nazwisko, adres, telefon)
-- values(3,'Bonifacy','Zielinski','93-324 Lodz ul.Opolska 32/3','458-985-521');
-- insert into firma.pracownicy
-- (id_pracownika, imie, nazwisko, adres, telefon)
-- values(4,'Kazimierz','Dabrowski','41-300 Dabrowa Gornicza ul.Lubelska 3','214-965-555');
-- insert into firma.pracownicy
-- (id_pracownika, imie, nazwisko, adres, telefon)
-- values(5,'Alan','Piotrowski','04-263 Warszawa ul.Poswietna 104','222-985-124');
-- insert into firma.pracownicy
-- (id_pracownika, imie, nazwisko, adres, telefon)
-- values(6,'Roza','Zajac','61-113 Poznan ul.Warszawska 80/8','256-844-854');
-- insert into firma.pracownicy
-- (id_pracownika, imie, nazwisko, adres, telefon)
-- values(7,'Krzysztof','Wiaczorek','71-790 Szczecin ul.Wapienna 107/4','214-965-852');
-- insert into firma.pracownicy
-- (id_pracownika, imie, nazwisko, adres, telefon)
-- values(8,'Klara','Kalinowska','92-440 Lodz ul.Podbipiety Longinusa 69/1','285-854-652');
-- insert into firma.pracownicy
-- (id_pracownika, imie, nazwisko, adres, telefon)
-- values(9,'Gabriel','Pawlak','15-706 Bialystok ul.Gruntowa 12/8','523-965-854');
-- insert into firma.pracownicy
-- (id_pracownika, imie, nazwisko, adres, telefon)
-- values(10,'Jozef','Wacik','51-180 Wroclaw ul.Pielegniarska 73/26','125-985-986');

-- --godziny
-- insert into firma.godziny
-- (id_godziny,"data",liczba_godzin,id_pracownika)
-- values(1,'2020-03-25',8,3);
-- insert into firma.godziny
-- (id_godziny,"data",liczba_godzin,id_pracownika)
-- values(2,'2020-03-25',8,2);
-- insert into firma.godziny
-- (id_godziny,"data",liczba_godzin,id_pracownika)
-- values(3,'2020-03-25',8,9);
-- insert into firma.godziny
-- (id_godziny,"data",liczba_godzin,id_pracownika)
-- values(4,'2020-03-25',8,10);
-- insert into firma.godziny
-- (id_godziny,"data",liczba_godzin,id_pracownika)
-- values(5,'2020-03-25',8,5);
-- insert into firma.godziny
-- (id_godziny,"data",liczba_godzin,id_pracownika)
-- values(6,'2020-03-25',8,1);
-- insert into firma.godziny
-- (id_godziny,"data",liczba_godzin,id_pracownika)
-- values(7,'2020-03-25',8,4);
-- insert into firma.godziny
-- (id_godziny,"data",liczba_godzin,id_pracownika)
-- values(8,'2020-03-26',8,7);
-- insert into firma.godziny
-- (id_godziny,"data",liczba_godzin,id_pracownika)
-- values(9,'2020-03-26',8,8);
-- insert into firma.godziny
-- (id_godziny,"data",liczba_godzin,id_pracownika)
-- values(10,'2020-03-26',8,6);

-- --pensja
-- insert into firma.pensja_stanowisko
-- (id_pensji,stanowisko,kwota)
-- values(1, 'Przedstawiciel handlowy',3500);
-- insert into firma.pensja_stanowisko
-- (id_pensji,stanowisko,kwota)
-- values(2,'Pracownik administracji',3600);
-- insert into firma.pensja_stanowisko
-- (id_pensji,stanowisko,kwota)
-- values(3,'Magazynier',3000);
-- insert into firma.pensja_stanowisko
-- (id_pensji,stanowisko,kwota)
-- values(4,'Kierownik',4200);
-- insert into firma.pensja_stanowisko
-- (id_pensji,stanowisko,kwota)
-- values(5,'Prezes',6000);
-- insert into firma.pensja_stanowisko
-- (id_pensji,stanowisko,kwota)
-- values(6,'Konserwator powierzchni plaskich',2800);
-- insert into firma.pensja_stanowisko
-- (id_pensji,stanowisko,kwota)
-- values(7,'Montazysta sprzetow elektronicznych',3800);
-- insert into firma.pensja_stanowisko
-- (id_pensji,stanowisko,kwota)
-- values(8,'Wozny',3000);
-- insert into firma.pensja_stanowisko
-- (id_pensji,stanowisko,kwota)
-- values(9,'Kierowca',3200);
-- insert into firma.pensja_stanowisko
-- (id_pensji,stanowisko,kwota)
-- values(10,'Operator wozka widlowego',3500);

-- --premia
-- insert into firma.premia
-- (id_premii,rodzaj,kwota)
-- values(1,'premia indywidualna',300);
-- insert into firma.premia
-- (id_premii,rodzaj,kwota)
-- values(2,'premia zespolowa',200);
-- insert into firma.premia
-- (id_premii,rodzaj,kwota)
-- values(3,'premia za kwartal',500);
-- insert into firma.premia
-- (id_premii,rodzaj,kwota)
-- values(4,'premia roczna',800);
-- insert into firma.premia
-- (id_premii,rodzaj,kwota)
-- values(5,'premia swiateczna',400);
-- insert into firma.premia
-- (id_premii,rodzaj,kwota)
-- values(6,'premia za nadgodziny',200);
-- insert into firma.premia
-- (id_premii,rodzaj,kwota)
-- values(7,'premia dla najlepszego pracownika',900);
-- insert into firma.premia
-- (id_premii,rodzaj,kwota)
-- values(8,'premia za specjalne osiagniecia',400);
-- insert into firma.premia
-- (id_premii,rodzaj,kwota)
-- values(9,'premia za najwyzsza sprzedaz',550);
-- insert into firma.premia
-- (id_premii,rodzaj,kwota)
-- values(10,'premia dodatkowa',150);

-- --wynagrodzenie
-- insert into firma.wynagrodzenie
-- (id_wynagrodzenia,"data",id_pracownika,id_godziny,id_pensji,id_premii)
-- values(1,'2020-03-25',1,6,1,1);
-- insert into firma.wynagrodzenie
-- (id_wynagrodzenia,"data",id_pracownika,id_godziny,id_pensji,id_premii)
-- values(2,'2020-03-25',2,2,3,1);
-- insert into firma.wynagrodzenie
-- (id_wynagrodzenia,"data",id_pracownika,id_godziny,id_pensji,id_premii)
-- values(3,'2020-03-25',3,1,4,8);
-- insert into firma.wynagrodzenie
-- (id_wynagrodzenia,"data",id_pracownika,id_godziny,id_pensji,id_premii)
-- values(4,'2020-03-25',4,7,1,1);
-- insert into firma.wynagrodzenie
-- (id_wynagrodzenia,"data",id_pracownika,id_godziny,id_pensji,id_premii)
-- values(5,'2020-03-25',5,5,1,4);
-- insert into firma.wynagrodzenie
-- (id_wynagrodzenia,"data",id_pracownika,id_godziny,id_pensji,id_premii)
-- values(6,'2020-03-25',6,10,10,1);
-- insert into firma.wynagrodzenie
-- (id_wynagrodzenia,"data",id_pracownika,id_godziny,id_pensji,id_premii)
-- values(7,'2020-03-25',7,8,7,7);
-- insert into firma.wynagrodzenie
-- (id_wynagrodzenia,"data",id_pracownika,id_godziny,id_pensji,id_premii)
-- values(8,'2020-03-26',8,9,9,1);
-- insert into firma.wynagrodzenie
-- (id_wynagrodzenia,"data",id_pracownika,id_godziny,id_pensji,id_premii)
-- values(9,'2020-03-26',9,3,7,1);
-- insert into firma.wynagrodzenie
-- (id_wynagrodzenia,"data",id_pracownika,id_godziny,id_pensji,id_premii)
-- values(10,'2020-03-26',10,4,7,9);

-- a
--alter table firma.godziny add column miesiac smallint;
--update firma.godziny set miesiac=date_part('month', data);
-- alter table firma.godziny add column "nr tygodnia" smallint;
-- update firma.godziny set "nr tygodnia"=date_part('week', data);

--b
-- alter table firma.wynagrodzenie 
-- 	alter column data type varchar(25);

--c
-- update firma.premia set kwota = 0 where rodzaj='brak';

--6 a
-- select id_pracownika, nazwisko from firma.pracownicy;
--b
-- select pracownicy.id_pracownika from firma.pracownicy
-- 	join firma.wynagrodzenie on firma.wynagrodzenie.id_pracownika = firma.pracownicy.id_pracownika
-- 	join firma.pensja_stanowisko on firma.pensja_stanowisko.id_pensji = firma.wynagrodzenie.id_pensji
-- 	where kwota>1000;
--c
-- select id_pracownika as "pracownicy bez premii i wieksze od 2000" from firma.wynagrodzenie
-- 	join firma.premia on firma.premia.id_premii = firma.wynagrodzenie.id_premii
-- 	join firma.pensja_stanowisko on firma.pensja_stanowisko.id_pensji = firma.wynagrodzenie.id_pensji
-- 	where rodzaj = 'brak' and pensja_stanowisko.kwota>2000;
--d
-- select imie, nazwisko from firma.pracownicy where imie like 'J%';
--e
-- select imie, nazwisko from firma.pracownicy where (nazwisko like '%n%' or nazwisko like 'N%' or nazwisko like '%n') and imie like '%a';
--f
-- select imie, nazwisko,(20*liczba_godzin)-160 as nadgodziny from firma.pracownicy
-- join firma.wynagrodzenie on firma.wynagrodzenie.id_pracownika=firma.pracownicy.id_pracownika
-- join firma.godziny on firma.godziny.id_godziny=firma.wynagrodzenie.id_godziny
-- where (20*liczba_godzin)-160>0;
--g
-- select imie, nazwisko from firma.pracownicy
-- join firma.wynagrodzenie on firma.wynagrodzenie.id_pracownika=firma.pracownicy.id_pracownika
-- join firma.pensja_stanowisko on firma.pensja_stanowisko.id_pensji=firma.wynagrodzenie.id_pensji
-- where kwota between 1500 and 3000;
--h
-- select imie, nazwisko from firma.pracownicy
-- join firma.wynagrodzenie on firma.wynagrodzenie.id_pracownika=firma.pracownicy.id_pracownika
-- join firma.godziny on firma.godziny.id_godziny=firma.wynagrodzenie.id_godziny
-- join firma.premia on firma.premia.id_premii=firma.wynagrodzenie.id_premii
-- where (20*liczba_godzin)-160>0 and premia.kwota = 0;

--7 a
-- select imie,nazwisko,kwota from firma.pracownicy 
-- join firma.wynagrodzenie on firma.wynagrodzenie.id_pracownika=firma.pracownicy.id_pracownika
-- join firma.pensja_stanowisko on firma.pensja_stanowisko.id_pensji=firma.wynagrodzenie.id_pensji
-- order by kwota;

--b
-- select imie, nazwisko, (pensja_stanowisko.kwota + premia.kwota) as "pensja + premia" from firma.pracownicy 
-- join firma.wynagrodzenie on firma.wynagrodzenie.id_pracownika=firma.pracownicy.id_pracownika
-- join firma.pensja_stanowisko on firma.pensja_stanowisko.id_pensji=firma.wynagrodzenie.id_pensji
-- join firma.premia on firma.premia.id_premii=firma.wynagrodzenie.id_premii
-- order by pensja_stanowisko.kwota + premia.kwota desc;

--c
-- select stanowisko, count(stanowisko) as ilosc from firma.pensja_stanowisko 
-- join firma.wynagrodzenie on firma.pensja_stanowisko.id_pensji=firma.wynagrodzenie.id_pensji
-- join firma.pracownicy on firma.pracownicy.id_pracownika = firma.wynagrodzenie.id_pracownika
-- group by stanowisko;

--d
-- select cast(avg(kwota) as smallint) as srednia,min(kwota),max(kwota) from firma.pensja_stanowisko
-- where stanowisko like 'Kierownik';

--e
-- select sum(kwota) from firma.pensja_stanowisko
-- join firma.wynagrodzenie on firma.pensja_stanowisko.id_pensji=firma.wynagrodzenie.id_pensji
-- join firma.pracownicy on firma.pracownicy.id_pracownika = firma.wynagrodzenie.id_pracownika;

--f
-- select stanowisko,sum(kwota) from firma.pensja_stanowisko
-- join firma.wynagrodzenie on firma.pensja_stanowisko.id_pensji=firma.wynagrodzenie.id_pensji
-- join firma.pracownicy on firma.pracownicy.id_pracownika = firma.wynagrodzenie.id_pracownika
-- group by stanowisko;

--g
-- select stanowisko, count(rodzaj) from firma.premia
-- join firma.wynagrodzenie on firma.premia.id_premii=firma.wynagrodzenie.id_premii
-- join firma.pensja_stanowisko on firma.pensja_stanowisko.id_pensji=firma.wynagrodzenie.id_pensji
-- join firma.pracownicy on firma.pracownicy.id_pracownika = firma.wynagrodzenie.id_pracownika
-- group by stanowisko;

--h
-- delete from firma.pracownicy where id_pracownika in
-- (select id_pracownika from firma.wynagrodzenie
-- join firma.pensja_stanowisko on firma.pensja_stanowisko.id_pensji=firma.wynagrodzenie.id_pensji
-- where kwota<1200
-- );

--zad 8 a
-- alter table firma.pracownicy
-- alter column telefon type varchar(16); 
-- update firma.pracownicy set telefon = '(+48)' || telefon;

--b
-- update firma.pracownicy set telefon = substring(telefon,1,8) || '-' || substring(telefon,9,3) || '-' || substring(telefon,12,3);

--c
-- select upper(nazwisko) from firma.pracownicy order by char_length(nazwisko) desc limit 1;

--d
-- select pracownicy.*,md5(kwota::text) as kwota from firma.pracownicy
-- join firma.wynagrodzenie on firma.wynagrodzenie.id_pracownika=firma.pracownicy.id_pracownika
-- join firma.pensja_stanowisko on firma.pensja_stanowisko.id_pensji=firma.wynagrodzenie.id_pensji
 
--zad 9
-- select 'Pracownik ' || firma.pracownicy.imie || ' ' || firma.pracownicy.nazwisko || ' w dniu ' 
-- || firma.wynagrodzenie.data::date || ' otrzymal pensje calkowita na kwote ' || firma.pensja_stanowisko.kwota + firma.premia.kwota 
-- || 'zl, gdzie wynagrodzenie zasadnicze wynosilo: ' || firma.pensja_stanowisko.kwota || 'zl, premia: ' || firma.premia.kwota 
-- || 'zl, nadgodziny: 0 zl.' as Raport from firma.pracownicy 
-- join firma.wynagrodzenie on firma.wynagrodzenie.id_pracownika = firma.pracownicy.id_pracownika 
-- join firma.pensja_stanowisko on firma.pensja_stanowisko.id_pensji = firma.wynagrodzenie.id_pensji 
-- join firma.premia on firma.premia.id_premii =firma.wynagrodzenie.id_premii 
-- where imie = 'Jozef' and nazwisko = 'Wacik';






