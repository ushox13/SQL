Create table passengers (
	passengers_ID INT PRIMARY KEY,
	first_name VARCHAR (50),
	last_name VARCHAR (50),
	date_of_birth date,
	country_of_citizenship varchar (50),
	country_of_residence varchar (50),
	passport_number varchar (20),
	created_at datetime,
	updated_at datetime
)


Create table security_check
(
	ID INT PRIMARY KEY,
	passengers_ID INT,
	check_result  varchar (20),
	comments varchar (6500),
	created_at datetime, 
	updated_at datetime,
	CONSTRAINT FK_passengers_ID FOREIGN KEY (passengers_ID)
	REFERENCES passengers(passengers_ID)
)

Create table booking
(
	bookingID BIGINT PRIMARY KEY,
	passengers_ID INT,
	flight_ID  BIGINT,
	status varchar (20),
	booking_platform varchar (20),
	created_at datetime, 
	updated_at datetime,
	CONSTRAINT FK_booking_passengers_ID FOREIGN KEY (passengers_ID)
	REFERENCES passengers(passengers_ID)
)

Create table baggage_check
(
	baggage_check_ID BIGINT PRIMARY KEY,
	passengers_ID INT,
	bookingID BIGINT,
	check_result varchar(50),
	created_at datetime, 
	updated_at datetime
	CONSTRAINT FK_baggage_check_booking FOREIGN KEY (bookingID)
	REFERENCES booking(bookingID),
	CONSTRAINT FK_baggage_check_passenger_ID FOREIGN KEY (passengers_ID)
	REFERENCES passengers(passengers_ID)
)

Create table baggage
(
	baggageID BIGINT PRIMARY KEY,
	weight_in_kg decimal(4,2),
	created_at timestamp, 
	updated at timestamp,
	CONSTRAINT FK_bookingID FOREIGN KEY (bookingID)
	REFERENCES booking(bookingID)
)

Create table no_fly_list
(
	no_fly_listID BIGINT PRIMARY KEY,
	passengers_ID INT,
	active_form date,
	active_to date,
	no_fly_reason varchar (255),
	created_at datetime, 
	updated_at datetime,
	CONSTRAINT FK_no_fly_list_passengers_ID FOREIGN KEY (passengers_ID)
	REFERENCES passengers(passengers_ID)
)

Create table boarding_pass
(
	boarding_passID BIGINT PRIMARY KEY,
	bookingID bigint,
	qr_code varchar (6500),
	created_at datetime, 
	updated_at datetime,
	CONSTRAINT FK_boarding_pass_bookingID FOREIGN KEY (bookingID)
	REFERENCES booking(bookingID)
)

Create table airport (
	airport_ID BIGINT PRIMARY KEY,
	airport_name VARCHAR (50),
	country VARCHAR (50),
	state VARCHAR (50),
	city VARCHAR (50),
	created_at datetime,
	updated_at datetime
)

Create table airline
(
	airline_ID BIGINT PRIMARY KEY,
	airline_code VARCHAR,
	airline_name BIGINT,
	airline_country VARCHAR (50),
	created_at datetime,
	updated_at datetime
)

Create table flights
(
	flight_ID BIGINT PRIMARY KEY,
	airport_id bigint,
	airline_id bigint,
	departing_gate varchar(20),
	arriving_gate varchar(20),
	created_at datetime, 
	updated_at datetime,
	CONSTRAINT FK_flights_airportID FOREIGN KEY (airport_ID)
	REFERENCES airport(airport_ID),
	CONSTRAINT FK_flights_airline_ID FOREIGN KEY (airline_ID)
	REFERENCES airline(airline_ID)
)

Create table flight_manifest
(
	flight_manifestID BIGINT PRIMARY KEY,
	bookingID bigint,
	flight_id bigint,
	created_at datetime,
	updated_at datetime,
	CONSTRAINT FK_flight_manifest_bookingID FOREIGN KEY (bookingID)
	REFERENCES booking(bookingID),
	CONSTRAINT FK_flight_manifest_flight_ID FOREIGN KEY (flight_ID)
	REFERENCES flights(flight_ID)
)
