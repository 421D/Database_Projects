# RSheet – Concurrent Dependency-Aware Spreadsheet Engine

RSheet is a high-performance spreadsheet compute engine built in **Rust**, handling complex expression evaluation and reactive data propagation using a multi-threaded, dependency-aware architecture.

---

## Core Architecture

RSheet operates on a **Directed Acyclic Graph (DAG)** to manage cell relationships.

### 1. Expression & Parsing Engine
- **Supported Types:** Scalars, Vectors (`A1_A7`), Matrices (`B2_D10`)  
- **Parser:** Evaluates expressions like `A1 + B2 * 5` using the `CellExpr` API  
- **CellArgument Mapping:** Automatically converts cell references to `CellArgument::Value`, `CellArgument::Vector`, or `CellArgument::Matrix`  

### 2. Reactive Dependency Tracking
- **Dependents Map:** Tracks which cells rely on the current cell  
- **Uses Sources Map:** Tracks which cells the current cell depends on  
- **Logic:** On `SET`, old dependencies are removed, new dependencies inserted, and downstream cells recomputed  

### 3. Multi-threaded Worker Model
- **Communication:** Tasks dispatched via `mpsc` channels  
- **Concurrency:** Shared state managed with `Arc<Mutex<T>>` and `Condvar`  
- **Conflict Prevention:** Version-based write protection ensures stale updates do not overwrite newer values  



## Key Rust Features
- Ownership & Borrowing guarantees memory safety without a garbage collector  
- Multi-threading with `Mutex`, `Arc`, `Condvar`, and channels  
- Efficient lookups using `HashMap` and `HashSet`  
- Robust error handling for calculation and parsing errors  



## Usage

```bash
# Clone repository
git clone <repo-url>
cd Rust_project

# Run the engine
cargo run

```
SET A1 5
SET B1 A1*2
GET B1

---
