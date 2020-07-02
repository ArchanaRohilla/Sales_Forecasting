
# Project Outline

## Background

Our project focuses on sales forecasting and how certain outside influences can affect store performance. We will predict sales for Walmart based on three years of data across 45 stores by using various machine learning models. We want to determine which model generates the most accurate predictions. 

## Project Team and Role Responsibilities 

**Segment 1**

Archana Rohilla - Created preliminary Machine Learning Models, Imported data from RDS Database "Walmart sales" into Jupyter Notebook 

Vick Anand - ETL analysis, build schema utilizing ERD QuickDB, Postgress and connection to AWS RDS DB

Tri Luu - Presentation and communication plan (readme.md)

Frances Klingenberger - created github master branch and tracked communications 

**Segment 2**

Archana Rohilla - Imported data from RDS Database "Walmart sales" into Jupyter notebook, Expanded Machine Learning Models using "lags"

Vick Anand - Created Dashboard with Tri

Tri Luu - Created Dashboard with Vick 

Frances Klingenberger - Manage Github and expanded Presentation 

**Segment 3**

Archana Rohilla - Expanded Machine Learning Models using "Naive Forecasting Technique"

Vick Anand - Created Dashboard with Tri and worked on Machine Learning Model with Archana

Tri Luu - Created Dashboard with Vick 

Frances Klingenberger - Manage Github and expanded Presentation 

**Segment 4**

Archana Rohilla - Finalized Machine Learning Model, Practiced Presentation

Vick Anand - Finalized Dashboard and Machine Leanring Model, Practiced Presentation

Tri Luu - Finalized Dashboard and Presentation, Practiced Presentation

Frances Klingenberger - Manage Github and Finalized Presenatation, Practiced Presentation

## Process Overview and Technology used
![alt text](JPGS/ProcessFlow.png)






## ETL

**Extract:** Extracted csv file from Kaggle.com 

**Transform:** We created an ETL function to revise and clean columns

**Load:** Loaded data into Postgress from Jupyter Notebook

Source: ETL/Walmart_Wkly_Sales_ETL.ipynb

## Machine Learning Model:

See full machine learning description in the Machine_learning_Report.pdf

**Model Type:**
Supervised Machine Learning : Linear Regression and Random Forest Regression 

**Why we are using this Model:**
To predict Walmart stores sales for 45 stores in aggregate utilizing features like temperature, holiday, CPI, fuel price and unemployment data.

**How are we training our Model:**
We used Linear Regression and Random Forest Regressor to fit the training dataset, scale and transform the data to predict sales data. After that, we compared the test data actual with the predicted value. 

**How does this Model work?**
We used 3 metrics to compare the effectiveness of Machine Learning Models. The 3 metrics are: RMSE, MAE, and R2 score. 
     
- RMSE: The square root of the average of squared differences between the predicted values and actual values.
     
- MAE: The average of the absolute differences between the predicted values and actual vales, all differences have the same weight.
     
- R2 score: A measure of best fit that shows how much variation of a dependent variable is explained by the independent variable. 
     
- Naive RMSE: Same as RMSE with the assumption that predictions will mirror previous week sales.



## Database
Develop database schema utilizing ERD DB below:

Sources: ETL/QuickDBD-WMT_Weekly_Sales.sql

Database Connections & Steps: database/Steps for Database & Connections.docx

RDS DB endpoint: walmartsales.ctixdh2hiprk.us-east-2.rds.amazonaws.com

![alt text](https://github.com/Franceskling/final_project/blob/master/database/databsae_QBD.PNG)

## Dashboard

Links to Dashboard: 

https://public.tableau.com/profile/vick.anand#!/vizhome/Walmart_Sales_ML_Prediction-revised/WalmartSalesOverview

https://public.tableau.com/profile/vick.anand#!/vizhome/Walmart_Sales_ML_Prediction-revised/MachineLearningResults


![alt_text](https://github.com/Franceskling/final_project/blob/2d70f36cf685700cc4216009755111548d5fb470/JPGS/Walmart%20Sales%20Prediction%20-%20Time%20Series.PNG)
![alt_text](https://github.com/Franceskling/final_project/blob/master/JPGS/Walmart%20Machine%20Learning%20Results.PNG)

## Final Presentation

Link to Presentation/Dashboard: https://public.tableau.com/shared/NBPGWZXQT?:display_count=y&:origin=viz_share_link

Link to Presentation Notes: https://docs.google.com/document/d/1PgImt_HTl0jHM45ZBqyobfUrsQerVCWuR3aXJnAJICE/edit?usp=sharing




