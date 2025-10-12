# 1. Cosmetics Sales Management System

A database project developed for the *Database Principles and Applications* course, implementing a **cosmetics sales management system**. This system demonstrates relational database design, normalized schema, and key SQL features including views, stored procedures, triggers, and constraints.


## Project Overview
The system supports end-to-end management of cosmetics sales, including:

- **Product Management** – tracking product info, pricing, stock  
- **Supplier Management** – storing supplier details and contact info  
- **Customer Management** – storing customer info and purchase records  
- **Sales & Inventory Management** – tracking warehouse inventory, sales transactions, and stock movements  
- **Reporting & Analytics** – generating views and summaries of inventory and sales  

The system models real-world operations for a cosmetics retail company.



## Database Design

- **Entities**: Products, Suppliers, Customers, Salespersons, Inventory, Sales Transactions  
- **Relationships**: One-to-many between suppliers and products, customers and sales, products and inventory  
- **Constraints**: Primary keys, foreign keys, check constraints (e.g., valid price ranges), default values  
- **Views**: Provide summarized or filtered data for quick reporting  
- **Stored Procedures**: Encapsulate common queries, e.g., retrieve product stock, sales records  
- **Triggers**: Automated actions on data changes, such as logging or preventing invalid updates  

The database schema is normalized to reduce redundancy and improve data integrity.


## Key Features

1. **Modular Design** – separates products, customers, suppliers, sales, and inventory  
2. **Data Integrity** – enforced through primary/foreign keys and constraints  
3. **Automation** – triggers provide automatic notifications or validations  
4. **Query Support** – supports complex multi-table queries for reporting and analysis  
5. **Extensibility** – schema and procedures designed to allow easy addition of new product lines, suppliers, or sales campaigns  


## Technologies Used

- **Database Engine**: Microsoft SQL Server  
- **SQL Concepts**: Tables, Relationships, Constraints, Views, Stored Procedures, Triggers  
- **Design Methodologies**: ER modeling, relational schema normalization, multi-table joins  


## Usage

1. Open the provided database file in SQL Server Management Studio.  
2. Run initialization scripts to create tables, relationships, and insert sample data.  
3. Use views and stored procedures to explore data and generate reports.  
4. Triggers demonstrate automated responses to changes in the database.  


## Notes
The main goal is to demonstrate robust database architecture, query design, and the use of advanced SQL features.



---
## 2. Train Ticket Booking Management System

A database project designed to manage **train ticket reservations** and passenger information. It shares a similar structure and approach to the cosmetics project, focusing on backend functionality.

**Core Features:**
- Tracks train schedules, seat availability, and ticket bookings  
- Manages passenger data and ticket transactions  
- Supports complex queries and reporting  
- Implements constraints, views, stored procedures, and triggers  

**Technologies Used:** SQL Server, relational schema design, multi-table queries

**Highlights:**
- Relational design for trains, passengers, bookings, and schedules
- Use of constraints, views, and triggers to ensure data integrity
- Example stored procedures to query bookings by date or train



## 3. School Bus Management System

A database project for managing **school bus operations**, similar in design to the previous two projects.  

**Core Features:**
- Tracks bus routes, students, drivers, and trip logs  
- Records pick-up/drop-off data for students  
- Supports multi-table queries for route planning and performance monitoring  
- Uses constraints, views, stored procedures, and triggers to maintain data integrity  

**Technologies Used:** SQL Server, relational database design, advanced SQL queries

---

## Notes
- All projects are focused on **database design and backend functionality**.  
- No frontend applications are included.  
- Each project demonstrates core database design techniques, including relational modeling, use of constraints, and automation via SQL features, tailored to its specific domain and functionality.
