FROM apache/airflow:2.0.0

RUN pip install pymongo


ADD requirements.txt ./
RUN pip install -r requirements.txt
