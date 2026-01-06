# system-engineering_backend

A backend engineering portfolio showcasing my work in **systems programming** and **relational database design**.  
This repository focuses on **concurrency**, **dependency management**, and **data integrity**, implemented through practical, non-trivial projects.



## Repository Structure

- **Rust_project/**
  - A concurrent, dependency-aware spreadsheet compute engine built in Rust
  - Focuses on multi-threading, reactive dataflow, and safe state management

- **Database_Projects/**
  - A collection of relational database systems designed for real-world domains
  - Emphasises schema design, normalisation, and advanced SQL logic


## Technical Focus

- **Languages:** Rust, SQL (T-SQL)  
- **Systems Engineering:** Concurrency, dependency graphs, reactive computation  
- **Database Engineering:** Schema design, normalisation, integrity constraints  
- **Backend Logic:** State management, automation, data consistency  


---

## Rust Project

### RSheet – Concurrent Spreadsheet Engine
A spreadsheet compute engine designed and implemented in Rust.

- DAG-based dependency tracking for cell relationships  
- Reactive recomputation on data updates  
- Multi-threaded execution with safe synchronisation  
- Version-based write protection to avoid race conditions  

**Core Technologies:**  
Rust, Arc / Mutex / Condvar, mpsc channels, HashMap / HashSet

See: `Rust_project/README.md`



## Database Projects

Three independent database systems were developed using Microsoft SQL Server.

- **Cosmetics Sales Management System**  
  Inventory, suppliers, customers, and sales transactions

- **Clothing Sales Management System**  
  Retail warehouse modelling with SKU attributes and sales tracking

- **Train Ticket Booking Management System**  
  Reservation, scheduling, and passenger management logic

**Core Focus Areas:**  
Relational modelling, 3NF/BCNF normalisation, constraints, views, triggers, stored procedures

See: `Database_Projects/README.md`



## Purpose

This repository reflects my approach to backend engineering:
- Designing systems from first principles  
- Prioritising correctness, data integrity, and concurrency safety  
- Bridging low-level system logic with high-level data management

---
