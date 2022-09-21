CREATE DATABASE minitest_module3_week2;

USE minitest_module3_week2;

CREATE TABLE City
	(
		City_ID					INT				NOT NULL AUTO_INCREMENT PRIMARY KEY,
        City_Name				VARCHAR(255)	NOT NULL
	);
    
CREATE TABLE CategoryTour
	(
		CategoryTour_ID			INT				NOT NULL PRIMARY KEY,
        CategoryTour_Code		VARCHAR(255)	NOT NULL UNIQUE,
        CategoryTour_Name		VARCHAR(255)	NOT NULL
	);

CREATE TABLE Destination
	(
		Destination_ID			INT				NOT NULL PRIMARY KEY,
        Destination_Name		VARCHAR(255)	NOT NULL,
        Describes				VARCHAR(255),
        Cost					INT,
        City_ID					INT				NOT NULL,
        FOREIGN KEY (City_ID)		REFERENCES		City (City_ID)
	);
    

CREATE TABLE Clients
	(
		Clients_ID				INT				NOT NULL PRIMARY KEY,
        Clients_Name			VARCHAR(255)	NOT NULL,
        IDNumber				VARCHAR(255)	NOT NULL,
        DateBirth				DATE,
        City_ID					INT				NOT NULL,
        FOREIGN KEY		(City_ID)				REFERENCES		City (City_ID)
	);

    
CREATE TABLE Tour
	(
		Tour_ID					INT				NOT NULL PRIMARY KEY,
        Tour_Code				VARCHAR(255)	NOT NULL UNIQUE,
        Category_ID				INT				NOT NULL,
        Destination_ID			INT				NOT NULL,
        DateStart				DATE,
        DateEnd					DATE,
        FOREIGN KEY		(Category_ID)			REFERENCES		CategoryTour (CategoryTour_ID),
        FOREIGN KEY		(Destination_ID)		REFERENCES		Destination (Destination_ID)
	);
    

    CREATE TABLE OrderTour
	(
		OrderTour_ID			INT				NOT NULL PRIMARY KEY,
        Tour_ID					INT				NOT NULL,
        Clients_ID				INT				NOT NULL,
        Status					VARCHAR(255),
        FOREIGN KEY		(Tour_ID)				REFERENCES		Tour (Tour_ID),
        FOREIGN KEY		(Clients_ID)			REFERENCES		Clients (Clients_ID)
	);

	