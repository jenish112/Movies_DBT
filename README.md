# Movies Analytics Data Pipeline with dbt, Snowflake, Amazon S3 & Tableau

<p align="center" width="100%">
  <img src='https://github.com/jenish112/Movies_DBT/blob/main/Tableau%20Screenshot.png' width='700'/> 
</p>

This project demonstrates an end-to-end ELT (Extract, Load, Transform) data pipeline that emulates Netflix-style analytics. The workflow leverages industry-leading tools: **dbt (Data Build Tool)** for modular SQL transformations, **Snowflake** as the data warehouse, and **AWS S3** for cloud storage and data staging.

## 🚀 Features

- End-to-end ELT pipeline using real-world MovieLens dataset (Netflix analytics simulation)
- Cloud data warehousing using Snowflake
- Data modeling, testing, and documentation with dbt
- Modular SQL transformation and version control
- BI tool integration (Tableau, Power BI, or Looker Studio)
- Fully reproducible and scalable workflow

## 🛠️ Tech Stack

- dbt (Data Build Tool)
- Snowflake Data Warehouse
- Amazon S3 Storage
- SQL
- Tableau
  
## 📁 Project Structure
netflix-data-analysis-dbt/<br/>
│<br/>
├── models/ # dbt transformation models (staging, marts)<br/>
├── seeds/ # Static CSV data to seed into Snowflake<br/>
├── tests/ # dbt data tests<br/>
├── macros/ # Custom re-usable SQL macros<br/>
├── target/ # dbt build outputs<br/>
├── README.md # Project overview and setup (this file)<br/>
└── dbt_project.yml # dbt project config<br/>

Tableau Public Link: https://public.tableau.com/app/profile/jenish.vekariya/viz/Netflix_17038440035540/NetflixDashboard

## 🏁 Setup & Usage

### 1. Clone the Repository

    clone https://github.com/yourusername/netflix-data-analysis-dbt.git
    cd netflix-data-analysis-dbt


### 2. Prepare the Data

- Download the MovieLens 20M Dataset from [grouplens.org](https://grouplens.org/datasets/movielens/20m/)
- Upload the extracted CSV files to your Amazon S3 bucket

### 3. Snowflake Setup

- Register for a Snowflake account (30-day free trial available)
- Create a database, warehouse, and schema as per project needs

### 4. Configure dbt

- Install dbt (e.g., `pip install dbt-snowflake`)
- Set up your `profiles.yml` for Snowflake authentication (credentials, warehouse, database, schema)
- Test the connection with:

      dbt debug

### 5. Seed & Load Data

- Use Snowflake's `COPY INTO` commands to load raw CSV data from S3 to staging tables  
_(or use dbt `seeds:` for smaller static data files)_

### 6. Run dbt Models

- Build transformations:

      dbt run

- Run tests for data validation:

      dbt test

- Generate project documentation:

      dbt docs generate
      dbt docs serve

  ## 📝 Major dbt Concepts Used

- **Models:** Modular SQL transformations
- **Snapshots:** Capture slowly changing data
- **Tests:** Data quality and constraint checks
- **Documentation:** Auto-generated with dbt
- **Macros:** Re-usable SQL blocks

## 🧩 Future Improvements

- Add orchestration with Airflow/Prefect for automation
- Implement incremental data loading models
- Extend analytics and dashboarding
- Integrate CI/CD for automated deployments


  






