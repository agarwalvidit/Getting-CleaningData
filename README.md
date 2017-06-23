# Getting and Cleaning Data Peer Assessment

  This repo includes solution to final assignment of Course "Getting and Cleaning Data"
   
### Assignment Purpose
  The purpose of this assignment is convert raw data into tidy data by using multiple tools in R in meaningful way

### Data Set Used
  Data is collected through experiment based on wearable technology device Samsung Galaxy S smartphone  
    1. 30 subjects (9  for test phase,  21 for training phase)  
    2. Total number of varibles : 561 ( various reading of accelerometer & gyroscope, their mean,sd,max,min,iqr,energy)  
    3. Total number of activities : 6 ( Walking,walking upstairs, walking downstairs, sitting, standing,laying).  
    
    A full description is available at :
    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
    
### Steps Used
    1. Clearing workspace for the existing R-Studio environment  
    2. Checking whether dataset is currently available in working directly, if not then program downloads and unzips the dataset  
    3. Loading files containing information on Subjects and List of varibles measured   
    4. Filtering out varibales required for project i.e mean & std
    5. Extracting and loading relevant files and respective variables for Testing, Training sets separately
    6. Merging Data sets
    7. Finally tidying data using "reshape2" package. i.e summarizing each subject & respective activity by mean of variables 
    
  *run.analysis.R  would do all these in order and return tidydata : "TidyDataSet" (stored in repo)*  
  *if you would like to see raw fulldataset that also in stored in repo : "FullDataSet"*
    
  **Thanks for going through this document. Hoping it gave a concise outlook on particular assignment and repective code**