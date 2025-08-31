# Data Warehouse and Analytics

** Data Warehouse **
This project demontrates a comprehensive data warehouse and business analytics solution, from building a data warehouse to generating actionable insights.

---

## Project Requirements

### Build the Data Warehouse (Data Engineering)
#### Objective

Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

#### Specifications
- **Data Source**: Import data from two source systems (ERP and CRM) provided as CSV files.
- **Data Quality**: Cleanse and resolve data quality issues prior to analysis.
- **Integration**: Combine both sources into single, user-friendly data model design for analytical queries.
- **Scope**: Focus on the latest dataset only; historization of data is not required.
- **Documentation**: Provide clear documentation of the data model to support both business stakeholders and the analytics team.


### BI: Analytics & Reporting (Data Analysis)

####Objective

Develop SQL-based analytics to deliver detailed insights into:

- **Customer Behaviour**
- **Product Performance**
- **Sales Trends**

These insights empower stakeholders with key business metrics, enabling strategic decision-making.
For more details refer to docs/requirements.md

---

### Naming Convention
#### General Principles
- **Naming Convention**: use snake_case, with lowercase letters and underscore ( _ ) to separate words.
- **Language**: Use English for all names.
- **Avoid Reversed Words**: Do not use SQL reversed words as object names.

### Table Naming Convention
####Bronze Rules
All names must start with the source system name, and table names must match their original name without renaming.
<sourcesystem>_<entity>
<sourcesystem>: Name of the source system (eg: crm, erp)
<entity>: Exact table name for the source system.
Example: crm_customer_info - Customer information from CRM system.

Silver Rules
All names must start with the source system name, and table names must match their original name without renaming.
<sourcesystem>_<entity>
<sourcesystem>: Name of the source system (eg: crm, erp)
<entity>: Exact table name for the source system.
Example: crm_customer_info - Customer information from CRM system.

Gold Rules
All names must use meaningful, business-aligned name for tables, starting with category prefix.
<category>_<entity>
<category>: Describe the role of the table such as dim (dimention) or fact (fact table).
<entity>: Descriptive name of the table, aligned with the business domain (eg: customer, products, sales).
Example:
Dim_customer - Dimension table for customer data.
Fact_sales - Fact table containing sales transactions.

Glossary of Category Patterns

Pattern
Meaning
Examples
dim_
Dimension table
Dim_customer, dim_product
fact_
Fact table
fact_sales
agg_
Aggregated table
agg_customer, agg_sales_monthly


Column Naming Convensions
Surrogate Keys
All primary keys in dimension tables must use the suffix _key.
<table_name>_key:
<table_name>: Refers to the name of the table or entity the key belongs to.
_key: A suffix indicating that this column is a surrogate key.
Example: customer_key - Surrogate key in the dim_customer table.

Technical Columns
All technical columns must start with the prefix dwh_, followed by a descriptive name indicating the column’s purpose.
dwh_<column_name>
dwh: Prefix exclusively for system-generated metadata.
<column_name>: Descriptive name indicating the column’s purpose.
Example: dwh_load_date - System-generated column used to store the date when the record was loaded.

Stored Procedure
All stored procedures used for loading data must follow the naming pattern: load_<layer>.
<layer>: Represents the layer being loaded, such as bronze, silver or gold.
Example:
load_bronze - Stored procedure for loading data into the Bronze layer.

---

## Licence

This project is licenced under [MIT Licence](Licence). You are free to use, modify, and share this project with proper attributions.

## About me

Hey, I'm **Jenaide Sibolie**, I'm an self taught software developer and data engineer.
load_silver - Stored procedure for loading data into the Silver layer.
