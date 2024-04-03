-- Databricks notebook source
CREATE OR REFRESH STREAMING TABLE airlines_bronze
AS
SELECT 
*
FROM cloud_files('/tmp/odl_instructor_638452/airlines_csv/', "csv", map(
  "header", "true",
  "inferSchema", "true"))

-- COMMAND ----------


