-- Databricks notebook source
CREATE OR REFRESH LIVE TABLE Airlines_Silver
AS
SELECT 
*,
ArrDelay > 0 OR DepDelay > 0 AS WasLate 
FROM 
LIVE.Airlines_Bronze

-- COMMAND ----------


