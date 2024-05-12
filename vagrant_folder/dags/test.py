import datetime

from airflow import DAG
from airflow.operators.empty import EmptyOperator

default_args = {
  'start_date': datetime.datetime(2021, 1, 1),
  'owner': 'Hans'
}

with DAG(
    dag_id="my_dag_name",
    schedule="@daily",
    default_args=default_args
) as dag:
  task1 = EmptyOperator(task_id="task")

task1