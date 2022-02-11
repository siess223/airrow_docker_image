FROM apache/airflow:2.1.0

# RUN pip install pyodbc
# RUN pip install pymongo

# RUN apt-get update \
#   && apt-get install -y python3-pip python3-dev \
#   && pip install --upgrade pip \
#   && apt-get install python3-dev -y\
#   && apt-get install unixodbc-dev -y\
#   && pip install pyodbc 
  
  


COPY requirements.txt .

RUN pip3 install -r requirements.txt --no-cache-dir


