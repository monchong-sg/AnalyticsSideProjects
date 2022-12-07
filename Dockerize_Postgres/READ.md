# Section 2: Databases
Dockerize launch of PostgreSQL DB and load mock data

# Contents
## Dockerfile 
> Dockerfile
## DDL
_Contains DDL and Insertion of Mock data_ 
> sql_Create_tables.sql
 

#  How to Run
## 1. Build 
```bash
docker build -t postgresdb ./
```

## 2. Run
```bash
docker run  --name postgres-db -p 5432:5432 -d postgresdb
```


## 3.	Execute
Check for container id
 ```bash
    docker ps
```
Then 

```bash
Docker exec [container_id] /bin/bash
```

## 4. Validate Load
Using a GUI DB tool like DBeaver, validate table creation and data insertion

![DBeaverScreenshot](https://github.com/monchong-sg/AnalyticsSideProjects/blob/f85466f932758d0e061cc5df386bf05fa04c2379/Dockerize_Postgres/DDLSuccess_DBeaver.png)

 

# ERD Notes
### CUSTOMER
Contains customer details


### CAR_INVENTORY
Contains car inventory details

### EMPLOYEE
Contains sales employee information


### SALES_TRANSACTION
Transactional details of cars sold



