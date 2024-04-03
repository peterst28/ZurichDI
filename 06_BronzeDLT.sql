-- Databricks notebook source
CREATE OR REFRESH LIVE TABLE airlines_bronze
AS
SELECT * FROM odl_instructor_638452.airlines_pt0_csv

-- COMMAND ----------


