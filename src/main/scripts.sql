CREATE DATABASE air_travel;

create table passenger
(
    id int primary key,
    name varchar(30) not null
);

create table pass_in_trip
(
    id int primary key,
    trip_id int not null references trip(id),
    passenger_id int not null references passenger(id),
    place varchar(50)
);

create table company
(
    id int primary key,
    name varchar(30)
);

create table trip
(
    id int primary key,
    company_id int not null references company(id),
    plane varchar(30),
    town_from varchar(50),
    town_to varchar(50),
    time_out timestamp,
    time_in timestamp
);

INSERT INTO Passenger VALUES
                          (1, 'Bruce Willis'),
                          (2, 'George Clooney'),
                          (3, 'Kevin Costner'),
                          (4, 'Donald Sutherland'),
                          (5, 'Jennifer Lopez'),
                          (6, 'Ray Liotta'),
                          (7, 'Samuel L. Jackson'),
                          (8, 'Nikole Kidman'),
                          (9, 'Alan Rickman'),
                          (10, 'Kurt Russell'),
                          (11, 'Harrison Ford'),
                          (12, 'Russell Crowe'),
                          (13, 'Steve Martin'),
                          (14, 'Michael Caine'),
                          (15, 'Angelina Jolie'),
                          (16, 'Mel Gibson'),
                          (17, 'Michael Douglas'),
                          (18, 'John Travolta'),
                          (19, 'Sylvester Stallone'),
                          (20, 'Tommy Lee Jones'),
                          (21, 'Catherine Zeta-Jones'),
                          (22, 'Antonio Banderas'),
                          (23, 'Kim Basinger'),
                          (24, 'Sam Neill'),
                          (25, 'Gary Oldman'),
                          (26, 'Clint Eastwood'),
                          (27, 'Brad Pitt'),
                          (28, 'Johnny Depp'),
                          (29, 'Pierce Brosnan'),
                          (30, 'Sean Connery'),
                          (31, 'Bruce Willis'),
                          (37, 'Mullah Omar');

INSERT INTO Company values
                        (1, 'Don_avia'),
                        (2, 'Aeroflot'),
                        (3, 'Dale_avia'),
                        (4, 'air_France'),
                        (5, 'British_AW');

INSERT INTO Trip VALUES
                     (1100, 4, 'Boeing', 'Rostov', 'Paris', '1900-01-01 14:30:00', '1900-01-01T17:50:00.000Z'),
                     (1101, 4, 'Boeing', 'Paris', 'Rostov', '1900-01-01 08:12:00', '1900-01-01T11:45:00.000Z'),
                     (1123, 3, 'TU-154', 'Rostov', 'Vladivostok', '1900-01-01 16:20:00', '1900-01-02T03:40:00.000Z'),
                     (1124, 3, 'TU-154', 'Vladivostok', 'Rostov', '1900-01-01 09:00:00', '1900-01-01T19:50:00.000Z'),
                     (1145, 2, 'IL-86', 'Moscow', 'Rostov', '1900-01-01 09:35:00', '1900-01-01T11:23:00.000Z'),
                     (1146, 2, 'IL-86', 'Rostov', 'Moscow', '1900-01-01 17:55:00', '1900-01-01T20:01:00.000Z'),
                     (1181, 1, 'TU-134', 'Rostov', 'Moscow', '1900-01-01 06:12:00', '1900-01-01T08:01:00.000Z'),
                     (1182, 1, 'TU-134', 'Moscow', 'Rostov', '1900-01-01 12:35:00', '1900-01-01T14:30:00.000Z'),
                     (1187, 1, 'TU-134', 'Rostov', 'Moscow', '1900-01-01 15:42:00', '1900-01-01T17:39:00.000Z'),
                     (1188, 1, 'TU-134', 'Moscow', 'Rostov', '1900-01-01 22:50:00', '1900-01-02T00:48:00.000Z'),
                     (1195, 1, 'TU-154', 'Rostov', 'Moscow', '1900-01-01 23:30:00', '1900-01-02T01:11:00.000Z'),
                     (1196, 1, 'TU-154', 'Moscow', 'Rostov', '1900-01-01 04:00:00', '1900-01-01T05:45:00.000Z'),
                     (7771, 5, 'Boeing', 'London', 'Singapore', '1900-01-01 01:00:00', '1900-01-01T11:00:00.000Z'),
                     (7772, 5, 'Boeing', 'Singapore', 'London', '1900-01-01 12:00:00', '1900-01-02T02:00:00.000Z'),
                     (7773, 5, 'Boeing', 'London', 'Singapore', '1900-01-01T03:00:00.000Z', '1900-01-01T13:00:00.000Z'),
                     (7774, 5, 'Boeing', 'Singapore', 'London', '1900-01-01T14:00:00.000Z', '1900-01-02T06:00:00.000Z'),
                     (7775, 5, 'Boeing', 'London', 'Singapore', '1900-01-01T09:00:00.000Z', '1900-01-01T20:00:00.000Z'),
                     (7776, 5, 'Boeing', 'Singapore', 'London', '1900-01-01T18:00:00.000Z', '1900-01-02T08:00:00.000Z'),
                     (7777, 5, 'Boeing', 'London', 'Singapore', '1900-01-01T18:00:00.000Z', '1900-01-02T06:00:00.000Z'),
                     (7778, 5, 'Boeing', 'Singapore', 'London', '1900-01-01T22:00:00.000Z', '1900-01-02T12:00:00.000Z'),
                     (8881, 5, 'Boeing', 'London', 'Paris', '1900-01-01T03:00:00.000Z', '1900-01-01T04:00:00.000Z'),
                     (8882, 5, 'Boeing', 'Paris', 'London', '1900-01-01T22:00:00.000Z', '1900-01-01T23:00:00.000Z');

INSERT INTO Pass_in_trip VALUES
                             (1, 1100, 1, '1a'),
                             (2, 1123, 3, '2a'),
                             (3, 1123, 1, '4c'),
                             (4, 1123, 6, '4b'),
                             (5, 1124, 2, '2d'),
                             (6, 1145, 3, '2c'),
                             (7, 1181, 1, '1a'),
                             (8, 1181, 6, '1b'),
                             (9, 1181, 8, '3c'),
                             (10, 1181, 5, '1b'),
                             (11, 1182, 5, '4b'),
                             (12, 1187, 8, '3a'),
                             (13, 1188, 8, '3a'),
                             (14, 1182, 9, '6d'),
                             (15, 1145, 5, '1d'),
                             (16, 1187, 10, '3d'),
                             (17, 8882, 37, '1a'),
                             (18, 7771, 37, '1c'),
                             (19, 7772, 37, '1a'),
                             (20, 8881, 37, '1d'),
                             (21, 7778, 10, '2a'),
                             (22, 7772, 10, '3a'),
                             (23, 7771, 11, '4a'),
                             (24, 7771, 11, '1b'),
                             (25, 7771, 11, '5a'),
                             (26, 7772, 12, '1d'),
                             (27, 7773, 13, '2d'),
                             (28, 7772, 13, '1b'),
                             (29, 8882, 14, '3d'),
                             (30, 7771, 14, '4d'),
                             (31, 7771, 14, '5d'),
                             (32, 7772, 14, '1c');

select * name from passenger;

select  name from company;

select trip.town_from from trip
where town_from = 'Moscow';

select  passenger.name from passenger
where passenger.name like '%man%';

select count(*) from trip
where trip.plane='TU-134';

select company.name from trip
                             join company on company.id=trip.company_id
where trip.plane='Boeing';

select company.name from trip
                             join company on company.id=trip.company_id
where trip.town_to='Vladivostok';

select passenger.id , count(*) from pass_in_trip
                                        join passenger on passenger.id=pass_in_trip.passenger_id;

select trip.town_to from trip

                             join pass_in_trip on pass_in_trip.trip_id=trip.id
                             join passenger on passenger.id=pass_in_trip.passenger_id
where passenger.name='Bruce Willis';

select trip.time_in from trip
                             join pass_in_trip on pass_in_trip.trip_id=trip.id
                             join passenger on passenger.id=pass_in_trip.passenger_id
where trip.town_to='London' and passenger.name='Steve Martin)';

select count(trip) from trip
                            join company on company.id=trip.company_id
where trip.town_from='Rostov' and trip.town_to='Moscow';

select name from passenger
where length(name) = (select max(length(name)) from passenger);

select name from passenger
group by name
having count(name) > 1;

select name, count(*) from passenger
                               join pass_in_trip on passenger.id=pass_in_trip.passenger_id
                               join pass_in_trip on pass_in_trip.trip_id=trip.id
group by passenger
having count(trip) > 0
order by count(trip);

select count(*) as count
from trip
where town_from='Rostov' and town_to='Moscow';

delete from trip
where town_from='Moscow';