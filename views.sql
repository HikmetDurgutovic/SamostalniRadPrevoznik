CREATE VIEW Drivers_Vehicles as
	select Drivers.name as name, Drivers.surname as surname,
	Drivers.id as id, Vehicles.type as vehicle from Drivers
	inner join Shifts on Drivers.id = Shifts.id_driver
	inner join Vehicles on Shifts.id_vehicle = Vehicles.id
;

CREATE VIEW TramvajskeLinije as
	select Lines.start_point as start,
	Lines.end_point as end from Lines
	inner join Shifts on Lines.id = Shifts.id_line where Shifts.id_vehicle > 7
;

CREATE VIEW TrolejbuskeLinije as
	select Lines.start_point as start,
	Lines.end_point as end from Lines
	inner join Shifts on Lines.id = Shifts.id_line 
	where Shifts.id_vehicle > 4 AND Shifts.id_vehicle < 8
;

CREATE VIEW AutobuskeLinije as
	select Lines.start_point as start,
	Lines.end_point as end from Lines
	inner join Shifts on Lines.id = Shifts.id_line where Shifts.id_vehicle < 5
;

CREATE VIEW AutobuskeTrolejbuskeStanice as
	select Lines.start_point as station from Lines
	inner join Shifts on Lines.id = Shifts.id_line
	where Shifts.id_vehicle < 8
;

CREATE VIEW AutobuskeTramvajskeStanice as
	select Lines.start_point as station from Lines
	inner join Shifts on Lines.id = Shifts.id_line
	where Shifts.id_vehicle < 5 OR Shifts.id_vehicle > 7
;

CREATE VIEW StanicaIlidza as
	select * from Lines
	inner join Shifts on Lines.id = Shifts.id_line
	where Lines.start_point = "Ilidza"
	ORDER BY Lines.duration_time
;

CREATE VIEW LinijaOtokaDobrinja as
	select * from Drivers
	inner join Shifts on Drivers.id = Shifts.id_driver
	inner join Lines on Lines.id = Shifts.id_line
	where Lines.start_point = "Otoka" AND Lines.end_point = "Dobrinja"
;

CREATE VIEW Tramvaj2 as
	select * from Drivers
	inner join Shifts on Drivers.id = Shifts.id_driver
	inner join Vehicles on Vehicles.id = Shifts.id_vehicle
	where Vehicles.id = 9
;


CREATE VIEW VozacLinije1I11 as
	select * from Drivers
	inner join Shifts on Drivers.id = Shifts.id_driver
	inner join Lines on Lines.id = Shifts.id_line
	where Lines.id = 1 AND Lines.id = 11
;

CREATE VIEW PrvaSmjena as
	select distinct(surname) from Drivers
	inner join Shifts on Drivers.id = Shifts.id_driver
	where Shifts.shift_in = 1
;

CREATE VIEW PrvaSmjenaAutobusi as
	select distinct(surname) from Drivers
	inner join Shifts on Drivers.id = Shifts.id_driver
	inner join Vehicles on Vehicles.id = Shifts.id_vehicle
	where Shifts.shift_in = 1 AND Vehicles.id < 5
;

CREATE VIEW Vozac5PolazneStanice as
	select distinct(Lines.start_point) from Lines
	inner join Shifts on Lines.id = Shifts.id_line
	inner join Drivers on Drivers.id = Shifts.id_driver
	where Drivers.id = 5
;