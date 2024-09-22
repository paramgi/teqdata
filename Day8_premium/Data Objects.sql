-- Databricks notebook source
Lakehouse DL-DW
Building a lakehouse === DELTA LAKE (Default) iceberg, hudi, 


-- COMMAND ----------

use catalog teqdata



-- COMMAND ----------

use giri_schema

-- COMMAND ----------

create table teqdata.giri_schema.employees (id int, name string)

-- COMMAND ----------

insert into employees values (1,"giri"),(2, "B"),(3,"C")

-- COMMAND ----------

select * from employees

-- COMMAND ----------

-- DBTITLE 1,Views
Views are vartual tables
standard view (persisted/ Saved)(SQL)
temp view (not persisted)
global tem()

-- COMMAND ----------

-- DBTITLE 1,Std view
create view teqdata.giri_schema.emp_view as select * from employees where id >1

-- COMMAND ----------

-- DBTITLE 1,temp
create temp view tempemp_view as select * from employees where id =1

-- COMMAND ----------

show views

-- COMMAND ----------

create global temp view tempemp_view as select * from employees where id =1

-- COMMAND ----------

select * from employees
