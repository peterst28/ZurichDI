# Databricks notebook source
def get_user_name():
    return dbutils.notebook.entry_point.getDbutils().notebook().getContext().userName().get().split('@')[0]

# COMMAND ----------


