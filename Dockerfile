FROM apache/airflow:2.0.0

RUN pip install apache-airflow[odbc]
# RUN pip install pymongo


