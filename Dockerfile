FROM apache/airflow:2.0.0

RUN pip install pymongo

RUN pip install -r requirements.txt
