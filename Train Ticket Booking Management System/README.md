# Train Ticket Booking System Database

## Project Overview
This project implements a **train ticket booking system** using MySQL.  
It manages passengers, tickets, trains, routes, stations, and user accounts.  
The database includes table creation, sample data insertion, primary keys, comments, and relationships.


## Database Structure


### Main Tables

| Table | Description | Key Fields / Sample Data |
|-------|-------------|--------------------------|
| `cusinfo` | Passenger information | `Id, cname, cidcard, intime, cpassword` <br> Example: `1, Zhang San, 2, 2016-04-04, 22` |
| `dpiao` | Ticket booking records | `Id, cidcard, pid, lyflag, reservationcode` <br> Example: `35, 2, 2, 'Booked', 951054` |
| `piao` | Ticket details | `Id, tid, szdid, ezdid, stime, pval, cxzh, ptype, yxsj` <br> Example: `1, 1, 1, 2, '07:30:00', 50, 'Car1-Seat20', 'Hard Seat', '2021-11-10'` |
| `traininfo` | Train information | `Id, tname, cz, znums, xcnums, traintype` <br> Example: `1, A100, null, 60, 30, null` |
| `userinfo` | System users (admins) | `Id, uname, upassword, utype` <br> Example: `1, admin, admin, Administrator` |
| `xianlu` | Train routes | `Id, xh, tid, zdid` <br> Example: `1, 1, 1, 1` |
| `zhandian` | Stations | `Id, zdname` <br> Example: `1, Main Campus` |


## Features

### Passengers
- Register and store personal info: name, ID card, registration time, and password.

### Tickets
- Store ticket details including train ID, seat, type, departure and arrival stations, price, and validity date.
- Track booking status and reservation codes.

### Trains
- Manage train information: train name, type, total seats, and limited capacity.

### Routes & Stations
- Maintain station information and route sequences for each train.

### Users
- System accounts for admins with role-based access control.



## Example Queries

- Query all booked tickets for a passenger:  
```
SELECT * FROM dpiao WHERE cidcard = '2';
```

- Query tickets for a specific train:
```
SELECT * FROM piao WHERE tid = '1';
```
- List all passengers:
```
SELECT cname, cidcard, intime FROM cusinfo;
```


## Usage
Import the SQL script into MySQL to create the database and all tables.
Insert sample data using the provided INSERT statements.
Use SQL queries to manage passengers, tickets, trains, and routes.


## Technology Stack
MySQL for relational database management
InnoDB storage engine for transactions and foreign key support
SQL scripts for table creation, sample data insertion, and constraints
