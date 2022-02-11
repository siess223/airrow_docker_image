FROM apache/airflow:2.1.0

# RUN pip install pyodbc
# RUN pip install pymongo

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir


