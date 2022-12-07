# We'll start by importing the DAG object
from datetime import timedelta

from airflow import DAG
# We need to import the operators used in our tasks
from airflow.operators.python_operator import PythonOperator
# We then import the days_ago function
from airflow.utils.dates import days_ago

import pandas as pd
import sqlite3
import os

# get dag directory path
dag_path = os.getcwd()


def transform_data():
    dataset1 = pd.read_csv(f"{dag_path}/raw_data/dataset1.csv", low_memory=False)
    dataset2 = pd.read_csv(f"{dag_path}/raw_data/dataset2.csv", low_memory=False)

    # merge datasets
    data = pd.merge(dataset1, dataset2, on='IDENTIFIER')
    
     # Delete rows with no value for NAME
    data.drop(data[data['NAME'].isna()].index,inplace=True)
    
  
    # split NAME into FIRST NAME and LAST NAME
    data['FIRST_NAME'] = data['NAME'].str.split(',',expand=True)[0]
    data['LAST_NAME'] = data['NAME'].str.split(', ',expand=True)[1]

    # Create dervied coluMn ABOVE_100 
    data['ABOVE_100'] = data.apply(lambda row: row['PRICE'] > 100, axis=1)
    

    # load processed data
    data.to_csv(f"{dag_path}/processed_data/final_dataset.csv", index=False)


def load_data():
    conn = sqlite3.connect("/usr/local/airflow/db/datapipeline.db")
    c = conn.cursor()
    c.execute('''
                CREATE TABLE IF NOT EXISTS FINAL_DATASET (
                    
                    IDENTIFIER TEXT NOT NULL,
                    NAME TEXT(50) ,
                    EMAIL TEXT(50),
                    PRICE TEXT(50) ,
                    FIRST_NAME TEXT(50) ,
                    LAST_NAME TEXT(50) ,
                    ABOVE_100 TEXT(10) 
                );
             ''')
    records = pd.read_csv(f"{dag_path}/processed_data/final_dataset.csv")
    records.to_sql('FINAL_DATASET', conn, if_exists='replace', index=False)


# initializing the default arguments that we'll pass to our DAG
default_args = {
    'owner': 'airflow',
    'start_date': days_ago(5)
}

ingestion_dag = DAG(
    'datapipeline',
    default_args=default_args,
    description='Section1DataPipelines',
    schedule_interval=timedelta(days=1),
    catchup=False
)

task_1 = PythonOperator(
    task_id='transform_data',
    python_callable=transform_data,
    dag=ingestion_dag,
)

task_2 = PythonOperator(
    task_id='load_data',
    python_callable=load_data,
    dag=ingestion_dag,
)


task_1 >> task_2