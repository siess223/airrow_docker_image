FROM apache/airflow:2.0.0


RUN pip install --upgrade pip
RUN apt-get update && apt-get -y install libglib2.0; apt-get clean
RUN apt-get install -y libsm6 libxext6 libxrender-dev
RUN apt-get update && apt-get install -y libpq-dev gcc
# RUN pip install opencv-contrib-python-headless

RUN apt-get install 'ffmpeg'\
    'libsm6'\
    'libxext6'  -y


RUN apt-get update \
 && apt-get install unixodbc -y \
 && apt-get install unixodbc-dev -y \
 && apt-get install freetds-dev -y \
 && apt-get install freetds-bin -y \
 && apt-get install tdsodbc -y \
 &&  apt-get install -y locales \
 && apt-get install --reinstall build-essential -y 

# RUN locale-gen zh_CN.UTF-8
# ENV LANG zh_CN.UTF-8    
# ENV LANGUAGE zh_CN    
# ENV LC_ALL zh_CN.UTF-8 
# ENV LANG en_US.UTF-8
# ENV LANGUAGE en_US:en
# ENV LC_ALL en_US.UTF-8
# ENV LANG C.UTF-8

# RUN yum -y groupinstall chinese-support


RUN echo "[FreeTDS]\n\
Description = FreeTDS Driver\n\
Driver = /usr/lib/x86_64-linux-gnu/odbc/libtdsodbc.so\n\
Setup = /usr/lib/x86_64-linux-gnu/odbc/libtdsS.so" >> /etc/odbcinst.ini

RUN pip install pymongo
RUN pip install pyodbc



