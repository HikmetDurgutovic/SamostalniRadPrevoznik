.header on
pragma foreign_keys = on;

CREATE TABLE Vehicles(
	type VARCHAR(10) NOT NULL,
	id INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE Drivers(
	name VARCHAR(20) NOT NULL,
	surname VARCHAR(20) NOT NULL,
	year SMALLINT NOT NULL,
	year_of_employment SMALLINT  DEFAULT 2015,
	id INTEGER PRIMARY KEY AUTOINCREMENT	
);

CREATE TABLE Lines(
	start_point VARCHAR(20) DEFAULT "Vijecnica",
	end_point VARCHAR(20) DEFAULT "Hrasnica",
	start_time VARCHAR(5) DEFAULT "07.00",
	duration_time SMALLINT DEFAULT 60,
	id INTEGER PRIMARY KEY AUTOINCREMENT
);

CREATE TABLE Shifts(
	id_driver INTEGER, 
	id_vehicle INTEGER,
	id_line INTEGER,
	shift_in INTEGER DEFAULT 1,
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	FOREIGN KEY (id_driver) REFERENCES Drivers ON UPDATE CASCADE ON DELETE CASCADE,
	FOREIGN KEY (id_vehicle) references Vehicles ON UPDATE CASCADE ON DELETE CASCADE,	
	FOREIGN KEY (id_line) references Lines ON UPDATE CASCADE ON DELETE CASCADE
);