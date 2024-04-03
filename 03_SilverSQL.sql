-- Databricks notebook source
-- MAGIC %run ./Include

-- COMMAND ----------

-- MAGIC %python
-- MAGIC dbutils.widgets.text('username', get_user_name())

-- COMMAND ----------

SELECT * FROM ${username}.Airlines_Bronze

-- COMMAND ----------

CREATE TABLE ${username}.Airlines_Silver
AS
SELECT 
*,
ArrDelay > 0 OR DepDelay > 0 AS WasLate 
FROM 
${username}.Airlines_Bronze

-- COMMAND ----------

SELECT ArrDelay, DepDelay, WasLate FROM ${username}.Airlines_Silver

-- COMMAND ----------


