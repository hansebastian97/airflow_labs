FROM apache/airflow:slim-latest
# USER root
# RUN apt update
# RUN apt add postgresql-dev gcc python3-dev musl-dev
# user airflow
COPY requirements.txt /
RUN pip install --no-cache-dir "apache-airflow==${AIRFLOW_VERSION}" -r /requirements.txt