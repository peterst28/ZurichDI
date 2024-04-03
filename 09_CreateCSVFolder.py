# Databricks notebook source
# MAGIC %run ./Include

# COMMAND ----------

username = get_user_name()

# COMMAND ----------

# MAGIC %fs ls /databricks-datasets/airlines/part-00000

# COMMAND ----------

dbutils.fs.cp('/databricks-datasets/airlines/part-00000', f'/tmp/{username}/airlines_csv/part-00000')

# COMMAND ----------

print(dbutils.fs.ls(f'/tmp/{username}/airlines_csv/part-00000'))

# COMMAND ----------


