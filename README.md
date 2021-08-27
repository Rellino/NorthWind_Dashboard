### Northwind Dashboard

Another stimulating project completed at SPICED Accademy. The goal of this project was to build a Dashboard with [Metabase](https://www.metabase.com/) running on AWS and based on a Postgres database on Amazon RDS. The dashboard summurizes data from the _"Nothwind Traders"_ a fictional company. 

![dashboardgif](dashboard.gif)

## Project description

A Postgres database was creted first locally, then remotly. The [csv tables](https://github.com/pawlodkowski/northwind_data_clean) composing the DB were loaded using `SQL COPY` command in the [northwind.sql](sql_data/northwind.sql) file that I wrote for creating the tables and copying data from the csv-files (check the path!).

[Python scripts](Postgres_Python_training.ipynb) and ASLAlchemy library was used to access the DB using Python. 
After this a [dump file](sql_data/northwind2.sql) was created and later on used to load the DB on the amazon RDS. 

Metabase was installed on an AWS EC2 Machine and used for creating a <s>publically available</s> Metabase dashboard (not available anymore: EC2 stopped and RDS deleted). 


