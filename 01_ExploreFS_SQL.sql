-- Databricks notebook source
-- MAGIC %fs ls /databricks-datasets/airlines/part-00000

-- COMMAND ----------

-- MAGIC %fs head /databricks-datasets/airlines/part-00000

-- COMMAND ----------

-- MAGIC %run ./Include

-- COMMAND ----------

-- MAGIC %python 
-- MAGIC
-- MAGIC print( get_user_name() )

-- COMMAND ----------

-- MAGIC %python
-- MAGIC dbutils.widgets.text('username', get_user_name())

-- COMMAND ----------

create schema ${username}

-- COMMAND ----------

CREATE TABLE ${username}.airlines_pt0_csv
USING
  CSV
LOCATION
  '/databricks-datasets/airlines/part-00000'
OPTIONS
  (inferSchema = True,
  header = True)

-- COMMAND ----------

SELECT * FROM ${username}.airlines_pt0_csv
