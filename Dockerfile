FROM apache/airflow:2.1.0

RUN pip install apache-airflow[odbc]
# RUN pip install pymongo


