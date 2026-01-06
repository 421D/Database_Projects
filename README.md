# system-engineering_backend

A backend engineering portfolio showcasing my work in **systems programming** and **relational database design**.  
This repository focuses on **concurrency**, **dependency management**, and **data integrity**, implemented through practical, non-trivial projects.

## Repository Structure

- **Rust_project**
  - A concurrent, dependency-aware spreadsheet compute engine built in Rust
  - Focuses on multi-threading, reactive dataflow, and safe state management

- **Database_Projects**
  - A collection of relational database systems designed for real-world domains
  - Emphasises schema design, normalisation, and advanced SQL logic

- **Cloud_Fullstack_Projects**
  - [Community Convenience Service System (WeChat Mini Program)](https://github.com/421D/fullstack_frontend-development/tree/main/WeChatMiniProgram_Projects/Community_WeChat_MiniProgram)  
    Full-stack cloud development using **WeChat Cloud Functions**, serverless backend, NoSQL database, and real-time updates. Integrates a **community second-hand trading platform** with a **property management system**, demonstrating full backend automation and data-driven UI logic.

## Technical Focus

- **Languages:** Rust, SQL (T-SQL), JavaScript (WeChat Mini Program)  
- **Systems Engineering:** Concurrency, dependency graphs, reactive computation  
- **Database Engineering:** Schema design, normalisation, integrity constraints  
- **Cloud / Backend Logic:** Serverless functions, cloud database management, automation, real-time synchronization


## Rust Project

### ① RSheet – Concurrent Spreadsheet Engine
A spreadsheet compute engine designed and implemented in Rust.

- DAG-based dependency tracking for cell relationships  
- Reactive recomputation on data updates  
- Multi-threaded execution with safe synchronisation  
- Version-based write protection to avoid race conditions  

**Core Technologies:**  
Rust, Arc / Mutex / Condvar, mpsc channels, HashMap / HashSet

See: - [Rust_project/README.md](./Rust_project/README.md)  


## ② Database Projects

Three independent database systems were developed using Microsoft SQL Server.

- **Cosmetics Sales Management System**  
  Inventory, suppliers, customers, and sales transactions

- **Clothing Sales Management System**  
  Retail warehouse modelling with SKU attributes and sales tracking

- **Train Ticket Booking Management System**  
  Reservation, scheduling, and passenger management logic

**Core Focus Areas:**  
Relational modelling, 3NF/BCNF normalisation, constraints, views, triggers, stored procedures

See: - [Database_Projects/README.md](./Database_Projects/README.md)  
