# Database Management Systems Collection

This directory contains three independent database system designs developed for the *Database Principles and Applications* course.  
Each project emphasises **relational modelling**, **3NF/BCNF normalisation**, and **advanced SQL programming**.

---


##  Technical Stack
- **RDBMS:** Microsoft SQL Server  
- **Techniques:**  
  - **Modelling:** ER Diagramming, Logical Schema Design  
  - **Optimization:** Indexing, Data Normalization  
  - **Logic:** Stored Procedures, Triggers, Views, Constraints
 

##  Projects Portfolio

### 1. Cosmetics Sales Management System
A comprehensive solution for a cosmetics retail business, focusing on inventory, suppliers, and customer transactions.
- **Key Modules:** Product (Pricing/Stock), Supplier, Customer, Sales Transactions  
- **Advanced Features:** Automated inventory alerts via **Triggers**, consolidated sales reports via **Views**, stored procedures for querying sales history  
- **Data Integrity:** Primary/Foreign keys, Check constraints, Default values  

### 2. Train Ticket Booking Management System
A backend-focused system for train reservations and passenger management.
- **Key Modules:** Train Schedules, Seat Availability, Passenger Profiles, Booking Transactions  
- **Advanced Features:** Stored procedures for availability and date-based scheduling, views for booking summaries, triggers for automatic validation  
- **Data Integrity:** Relational constraints enforce consistency across trains, passengers, and bookings  

### 3. Clothing Sales Management System
Models a retail clothing warehouse with emphasis on SKU attributes (colour, size, category) and warehouse operations.
- **Key Modules:** Warehouse Operations, Multi-category Inventory, Customer & Salesperson Performance  
- **Advanced Features:** Data integrity enforcement via Check Constraints and Foreign Key cascades, views and stored procedures for reporting  
- **Data Integrity:** Normalized tables for products, suppliers, customers, sales, and inventory  


```text
1. Open the `.sql` scripts in SQL Server Management Studio (SSMS)
2. Execute the initialization scripts to build the schema and seed sample data
3. Use stored procedures and views to simulate real-world transactions
4. Observe triggers for automated data validations or alerts
