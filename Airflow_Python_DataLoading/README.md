# Data Pipelines
Use Airflow to process merging of 2 datasets with some data cleansing activities
Outputs to CSV and also a DB file which can be opened in SQL Lite for graphical version

# Contents

## Codes

- main.py 

- docker-compose.yaml 



## Source Data 

_Note "{dag_path}/raw_data/" folder is created and referenced to when reading source files_
- dataset1.csv  

- dataset2.csv

## Output

- final_dataset.csv  

- datapipeline.db

## Screenshots

- 1_Check_DAG.png
- 2_Run_DAG.png
- 3_Check_Run.png
- Datapipeline_DBeaver.png

# How to Run 

## 1. Start-up DB
    docker-compose up airflow-init

## 2. Start up Airflow
This starts both Airflow Webserver and Scheduler
    docker-compose up



## In Airflow 
### Open browser and access URL:
> localhost:8081 

> u: admin  

> p: airflow 


### Verify DAG creation success
Open the DAG created
![Check DAG](Airflow_Python_DataLoading/1_Check_DAG.png)
 

### Run Dag
Trigger the DAG
![Run DAG](https://github.com/monchong-sg/AnalyticsSideProjects/blob/bc61ddc8649845c4ec005e712d9d8662802118c7/Airflow_Python_DataLoading/1_Check_DAG.png)
 

### Check Graph View
Check the processing status 
![Check Run](https://github.com/monchong-sg/AnalyticsSideProjects/blob/bc61ddc8649845c4ec005e712d9d8662802118c7/Airflow_Python_DataLoading/2_Run_DAG.png)


## DB File
A DB file is also created which can be loaded to GUI-DB like DBeaver

![DBeaver](https://github.com/monchong-sg/AnalyticsSideProjects/blob/bc61ddc8649845c4ec005e712d9d8662802118c7/Airflow_Python_DataLoading/3_Check_Run.png)
