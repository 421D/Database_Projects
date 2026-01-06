# RSheet

**RSheet** is a spreadsheet compute engine I designed and implemented in **Rust**, focusing on **concurrent execution**, **reactive data propagation**, and **dependency-aware computation**.

---

##  Technical Stack

- **Language:** Rust  
- **Concurrency:** `Arc`, `Mutex`, `Condvar`, `mpsc` channels  
- **Architecture:** DAG-based dependency graph, reactive dataflow  
- **State Management:** Version-based write protection for concurrent updates  
- **Core Logic:** Expression parsing, dependency tracking, automatic recomputation  
- **Data Structures:** `HashMap`, `HashSet`  



## Core Architecture & Design

### 1. Expression & Parsing Engine
- Supports **scalars**, **vectors** (`A1_A7`), and **matrices** (`B2_D10`)  
- Custom `CellExpr` parser evaluates expressions like `A1 + B2 * 5`  
- Converts cell references into `CellArgument` variants (`Value`, `Vector`, `Matrix`) for unified processing  

### 2. Reactive Dependency Tracking
- Maintains two synchronised maps:
  - `dependents` – which cells depend on a given cell  
  - `uses_sources` – which cells a given cell depends on  
- On `SET`, the engine:
  1. Removes outdated dependencies  
  2. Updates the dependency graph  
  3. Propagates recomputation downstream in correct topological order  

### 3. Multi-threaded Worker Model
- Handles **parallel updates** via a dedicated worker thread  
- Uses **Rust concurrency primitives**: `Arc<Mutex<T>>` and `Condvar` for safe shared state  
- Implements **version-based write protection** to prevent stale data from overwriting newer values  


## Key Engineering Focus
- Safe concurrent state management in Rust
- DAG-based dependency resolution and recomputation
- Robust parsing and error propagation



##  How to Run & Test

Clone and run the engine:

```bash
git clone <repo-url>
cd Rust_project
cargo run
```
Example Interactive Commands:
```
SET A1 5
SET B1 A1*2
GET B1
```

- `SET <cell> <expression>` – update a cell’s value
- `GET <cell>` – retrieve the current value, automatically computed with dependencies
