# Azure_cicd_pipeline_project2
Building ML project on CI/CD azure pipeline
![Python application test with Github Actions](https://github.com/CloudComputingPirate/Azure_cicd_pipeline_project2/workflows/Python%20application%20test%20with%20Github%20Actions/badge.svg?branch=master)

Overview

Hosting a ML application in Azure cloud shell and using Github Actions and Azure pipelines for Continous Integration and Continous delivery of application.

Project Plan

Planning and steps are included in Trello and Google spreadsheet
Trello board : https://trello.com/b/4z66BC1O/azure-flask-ml-app
Google Spreadsheet : https://docs.google.com/spreadsheets/d/1Uk-IQCwkit39lTLUoinEyh_AnC5ZVuQTtvhV2snepuQ/edit?usp=sharing

Instructions

Architectural Diagram ->

![architecturaldiagram](https://user-images.githubusercontent.com/76152268/102791915-b80abc00-43cd-11eb-9a86-1474100b84d6.png)

<TODO: Instructions for running the Python project. How could a user with no context run this project without asking you for any help. Include screenshots with explicit steps to create that work. Be sure to at least include the following screenshots:

Project running on Azure App Service. Running in port 5000.

![azureshellrun1](https://user-images.githubusercontent.com/76152268/102795914-7846d300-43d3-11eb-9f3b-fa289134a917.PNG)
![azureshellrun2](https://user-images.githubusercontent.com/76152268/102795923-7b41c380-43d3-11eb-9d47-9dafd0e93af0.PNG)

Project cloned into Azure Cloud Shell

![gitclone](https://user-images.githubusercontent.com/76152268/102793146-7da21e80-43cf-11eb-88cb-d0c866695e91.PNG)

Passing tests that are displayed after running the make all command from the Makefile

![makeall1](https://user-images.githubusercontent.com/76152268/102793332-be9a3300-43cf-11eb-9baa-016551f4c6af.PNG)
![makeall2](https://user-images.githubusercontent.com/76152268/102793337-c1952380-43cf-11eb-819d-10384bb2d539.PNG)

Output of a test run



Successful deploy of the project in Azure Pipelines. Note the official documentation should be referred to and double checked as you setup CI/CD.

Running Azure App Service from Azure Pipelines automatic deployment

Successful prediction from deployed flask app in Azure Cloud Shell. Use this file as a template for the deployed prediction. The output should look similar to this:



Output of streamed log files from deployed application

Enhancements
<TODO: A short description of how to improve the project in the future>

Demo

Youtube link:  https://youtu.be/Qo8wvcuz1YU
