# Cosmetics Management System

## Project Overview
This is a SQL Server-based Cosmetics Management System database project.  
It manages products, suppliers, customers, sales, warehouses, and employees.  
The project includes table creation, sample data insertion, constraints, views, stored procedures, and triggers.


## Database Structure

### Main Tables & Sample Data

| Table | Description | Sample Data |
|-------|-------------|------------|
| `goods` | Product information | `gd01 - Foundation, Stock:150, Purchase:100, Retail:200` <br> `gd02 - Concealer, Stock:50, Purchase:30, Retail:100` |
| `gy_info` | Supplier information | `gy01 - Mac, Shanghai, Contact:13869016879` <br> `gy03 - YSL, Shenzhen, Contact:13569686834` |
| `kh_info` | Customer information | `kh01 - Xiao Zhu, Changsha, Male, Tel:12345321456` <br> `kh05 - Xiao Zhen, Hainan, Female, Tel:16756768789` |
| `ywy_info` | Employee information | `ywy01 - Xuan Xuan, Male, Phone:13336542897, Address: Tianjin` |
| `ck_info` | Warehouse stock information | `ck01 - 2018-11-30, Employee: ywy01, Supplier: gy01, Product: gd01, Quantity:40` |
| `outs` | Delivery/Sales information | `thdh01 - 2018-11-11, Customer: kh01, Product: gd18, Quantity:100, Total:1600` |



## Features

### Constraints
- `gd_lsjg` in `goods` table must be between 30 and 800  
- `ywy_sex` in `ywy_info` table defaults to 'Female'  

### Views
- `Viewkhinfo`: Selects customer ID, name, and sex  
- `Viewgoods_ck`: Shows product IDs, warehouse IDs, and supplier IDs  

### Stored Procedures
- `CC`: Query product `gd_name='散粉'` with warehouse entry date  
- `CCgoods`: Query product by ID  

### Triggers
- `TR_Viewgoods_ck`: Prevents updates on the `Viewgoods_ck` view  
- `goods_delete`: Handles deletion of product records  
- `kh_info_insert`: Prints welcome message when inserting a new customer  

### Example Queries
- Query male customers:  
```sql
SELECT kh_name AS 'Name', kh_yb AS 'Postal Code', kh_tel AS 'Phone' 
FROM kh_info 
WHERE kh_sex ='男';
```
- Query products with retail price 200:
```
SELECT gd_id AS 'Product ID', gd_name AS 'Product Name', gd_num AS 'Quantity', gd_lsjg AS 'Retail Price' 
FROM goods 
WHERE gd_lsjg='200';
```
- Query discounted products with joins:
```
SELECT goods.gd_id AS 'Product ID', goods.gd_name AS 'Product Name', outs.gd_lsjg AS 'Retail Price', outs_zk AS 'Discounted' 
FROM goods
INNER JOIN outs ON outs.gd_id = goods.gd_id  
WHERE outs_zk='是';
```


## Technology Stack

- SQL Server
- T-SQL
- Database design: Tables, Constraints, Views, Stored Procedures, Triggers

