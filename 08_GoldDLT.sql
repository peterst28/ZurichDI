-- Databricks notebook source
CREATE OR REFRESH LIVE TABLE Airlines_Gold AS
SELECT UniqueCarrier, round(count_if(WasLate) / count(*) * 100) as LatePercentage from LIVE.Airlines_Silver Group By UniqueCarrier

-- COMMAND ----------


