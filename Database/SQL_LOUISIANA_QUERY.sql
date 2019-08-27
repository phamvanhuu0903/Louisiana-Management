CREATE DATABASE QUANLY_LOUISIANA

GO

USE QUANLY_LOUISIANA

GO

CREATE TABLE UNIT
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	DISPLAYNAME NVARCHAR(MAX)
)

GO

CREATE TABLE SUPPLIER
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	DISPLAYNAME NVARCHAR(MAX),
	ADDRESS_SUPPLIER NVARCHAR(MAX),
	PHONE NVARCHAR(20),
	EMAIL NVARCHAR(200),
	MORE_INFO NVARCHAR(MAX),
	CONTRACTDATE DATETIME


)

GO

CREATE TABLE CUSTOMER
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	DISPLAYNAME NVARCHAR(MAX),
	ADDRESS_SUPPLIER NVARCHAR(MAX),
	PHONE NVARCHAR(20),
	EMAIL NVARCHAR(200),
	MORE_INFO NVARCHAR(MAX),
	CONTRACTDATE DATETIME


)

GO

CREATE TABLE OBJECT
(
	ID NVARCHAR(128) PRIMARY KEY,
	DISPLAYNAME NVARCHAR(MAX),
	ID_UNIT INT NOT NULL,
	ID_SUPPLIER INT NOT NULL,
	QRCODE NVARCHAR(MAX),
	BARCODE NVARCHAR(MAX)

	FOREIGN KEY (ID_UNIT) REFERENCES UNIT(ID),
	FOREIGN KEY (ID_SUPPLIER) REFERENCES SUPPLIER(ID),
)

GO

CREATE TABLE USERROLE
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	DISPLAYNAME NVARCHAR(MAX)
)


GO

INSERT INTO USERROLE(DISPLAYNAME) VALUES (N'ADMIN')
INSERT INTO USERROLE(DISPLAYNAME) VALUES (N'NH�N VI�N')

GO
CREATE TABLE USERS
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	DISPLAYNAME NVARCHAR(MAX),
	USERNAME NVARCHAR(100),
	PASSWORD NVARCHAR(MAX),
	ID_ROLE INT NOT NULL

	FOREIGN KEY (ID_ROLE) REFERENCES USERROLE(ID)
)

INSERT INTO USERS(DISPLAYNAME,USERNAME,PASSWORD,ID_ROLE) VALUES(N'HUU',N'ADMIN',N'6dc2e680a9fccee167c00af53ca72342',1)
INSERT INTO USERS(DISPLAYNAME,USERNAME,PASSWORD,ID_ROLE) VALUES(N'NHAN VIEN',N'STAFF',N'ba6ab6c3616b1059fc3dd4ace49238fe',2)


GO

CREATE TABLE INPUT
(
	ID NVARCHAR(128) PRIMARY KEY,
	DATETINPUT DATETIME
)

CREATE TABLE INPUTINFO
(
	ID NVARCHAR(128) PRIMARY KEY,
	ID_OBJECT NVARCHAR(128) NOT NULL,
	ID_INPUT NVARCHAR(128) NOT NULL,
	COUNT_IN INT,
	INPUT_PRICE FLOAT DEFAULT 0,
	OUTPUT_PRICE FLOAT DEFAULT 0,
	STATUS NVARCHAR(MAX)

	FOREIGN KEY (ID_OBJECT) REFERENCES OBJECT(ID),
	FOREIGN KEY (ID_INPUT) REFERENCES INPUT(ID)

)


GO

CREATE TABLE OUTPUT
(
	ID NVARCHAR(128) PRIMARY KEY,
	DATETOUTPUT DATETIME
)

CREATE TABLE OUTPUTINFO
(
	ID NVARCHAR(128) PRIMARY KEY,
	ID_OBJECT NVARCHAR(128) NOT NULL,
	ID_OUTPUT NVARCHAR(128) NOT NULL,
	ID_CUSTOMER INT NOT NULL,
	COUNT_OUT INT,
	INPUT_PRICE FLOAT DEFAULT 0,
	OUTPUT_PRICE FLOAT DEFAULT 0,
	STATUS NVARCHAR(MAX)

	FOREIGN KEY (ID_OBJECT) REFERENCES OBJECT(ID),
	FOREIGN KEY (ID_OUTPUT) REFERENCES OUTPUT(ID),
	FOREIGN KEY (ID_CUSTOMER) REFERENCES CUSTOMER(ID)

)