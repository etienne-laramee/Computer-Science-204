# Computer Science 204 Assignment 1: Creating & Manipulating a Database

## How to use
```
mysql -h hostname -u user -p < path/to/file.sql
```
## If no database have been created yet, follow these steps first:
```
mysql -u <username> -p
mysql> CREATE DATABASE <new database name>
```
## Included in this folder:
### Database structure
- [01_create_database.sql](01_create_database.sql)
- [02_create_tables.sql](02_create_tables.sql)
### Data insertion
- [03_populate_tables.sql](03_populate_tables.sql)
### Assignment queries and results file
- [04_execute_queries.sql](04_execute_queries.sql)
- [04_query_results.md](04_query_results.md)
### Debugging and conveniences files
- [05_DEBUG_empty_tables.sql](05_DEBUG_empty_tables.sql)
- [06_DEBUG_drop_tables.sql](06_DEBUG_drop_tables.sql)
- [07_DEBUG_show_tables.sql](07_DEBUG_show_tables.sql)