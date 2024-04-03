-- Databricks notebook source
-- MAGIC %md
-- MAGIC # Lateness findings
-- MAGIC
-- MAGIC This is our finding on how airlines fair regarding lateness

-- COMMAND ----------

-- MAGIC %run ./Include

-- COMMAND ----------

-- MAGIC %python
-- MAGIC dbutils.widgets.text('username', get_user_name())

-- COMMAND ----------

SELECT * FROM ${username}.Airlines_gold

-- COMMAND ----------


