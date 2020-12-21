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

![githubActions](https://user-images.githubusercontent.com/76152268/102796468-5863df00-43d4-11eb-94ce-3ae990182ac8.PNG)

![successfulldeployments](https://user-images.githubusercontent.com/76152268/102796421-42561e80-43d4-11eb-80ce-0bec674336b2.PNG)

![output](https://user-images.githubusercontent.com/76152268/102796586-821d0600-43d4-11eb-8f32-c69d1b430864.PNG)

In the youtube video(link provided below) you can see live working of CI/CD deployment.

Successful prediction from deployed flask app in Azure Cloud Shell:

![prediction](https://user-images.githubusercontent.com/76152268/102797086-3028b000-43d5-11eb-9dc3-0f6c8dae5a76.PNG)

Output of streamed log files from deployed application:

(.myrepo) shubham@Azure:~/Azure_cicd_pipeline_project2$ az webapp log tail --name udacityflaskmlapp --resource-group wazirshubham_rg_Linux_eastus
2020-12-21T16:13:22  Welcome, you are now connected to log-streaming service.

Starting Log Tail -n 10 of existing logs ----
2020-12-21T14:51:42.818098582Z
2020-12-21T14:51:42.818128082Z   _____
2020-12-21T14:51:42.818133182Z   /  _  \ __________ _________   ____
2020-12-21T14:51:42.818137182Z  /  /_\  \___   /  |  \_  __ \_/ __ \
2020-12-21T14:51:42.818141082Z /    |    \/    /|  |  /|  | \/\  ___/
2020-12-21T14:51:42.827837667Z \____|__  /_____ \____/ |__|    \___  >
2020-12-21T14:51:42.827849267Z         \/      \/                  \/
2020-12-21T14:51:42.827869767Z
2020-12-21T14:51:42.827873567Z A P P   S E R V I C E   O N   L I N U X
2020-12-21T14:51:42.827877567Z
2020-12-21T14:51:42.827881067Z Documentation: http://aka.ms/webapp-linux
2020-12-21T14:51:42.827884867Z Python 3.7.9
2020-12-21T14:51:42.827888367Z Note: Any data outside '/home' is not persisted
2020-12-21T14:51:43.265063708Z Starting OpenBSD Secure Shell server: sshd.
2020-12-21T14:51:43.453851767Z App Command Line not configured, will attempt auto-detect
2020-12-21T14:51:43.455053778Z Launching oryx with: create-script -appPath /home/site/wwwroot -output /opt/startup/startup.sh -virtualEnvName antenv -defaultApp /opt/defaultsite -bindPort 8000
2020-12-21T14:51:43.835038161Z Found build manifest file at '/home/site/wwwroot/oryx-manifest.toml'. Deserializing it...
2020-12-21T14:51:43.844141238Z Build Operation ID: |qeKV1nB9ve4=.b546ae32_
2020-12-21T14:51:43.844913844Z Oryx Version: 0.2.20201112.1, Commit: a120bb248aa8d208ca5e02d7d9d075196e79cffd, ReleaseTagName: 20201112.1
2020-12-21T14:51:43.845026845Z Output is compressed. Extracting it...
2020-12-21T14:51:43.845930253Z Extracting '/home/site/wwwroot/output.tar.gz' to directory '/tmp/8d8a5bf46c2867f'...
2020-12-21T14:51:56.514841608Z App path is set to '/tmp/8d8a5bf46c2867f'
2020-12-21T14:51:59.862538060Z Detected an app based on Flask
2020-12-21T14:51:59.862567361Z Generating `gunicorn` command for 'app:app'
2020-12-21T14:52:00.056370738Z Writing output script to '/opt/startup/startup.sh'
2020-12-21T14:52:03.803599192Z Using packages from virtual environment antenv located at /tmp/8d8a5bf46c2867f/antenv.
2020-12-21T14:52:03.803620393Z Updated PYTHONPATH to ':/tmp/8d8a5bf46c2867f/antenv/lib/python3.7/site-packages'
2020-12-21T14:52:10.134757023Z [2020-12-21 14:52:10 +0000] [36] [INFO] Starting gunicorn 20.0.4
2020-12-21T14:52:10.136039761Z [2020-12-21 14:52:10 +0000] [36] [INFO] Listening at: http://0.0.0.0:8000 (36)
2020-12-21T14:52:10.136547676Z [2020-12-21 14:52:10 +0000] [36] [INFO] Using worker: sync
2020-12-21T14:52:10.148011312Z [2020-12-21 14:52:10 +0000] [39] [INFO] Booting worker with pid: 39
2020-12-21T14:52:22.646738081Z 172.16.0.1 - - [21/Dec/2020:14:52:22 +0000] "GET /robots933456.txt HTTP/1.1" 404 232 "-" "HealthCheck/1.0"

2020-12-21T15:42:15.516942837Z
2020-12-21T15:42:15.516970737Z   _____
2020-12-21T15:42:15.516976137Z   /  _  \ __________ _________   ____
2020-12-21T15:42:15.516980137Z  /  /_\  \___   /  |  \_  __ \_/ __ \
2020-12-21T15:42:15.516984237Z /    |    \/    /|  |  /|  | \/\  ___/
2020-12-21T15:42:15.516988037Z \____|__  /_____ \____/ |__|    \___  >
2020-12-21T15:42:15.516992037Z         \/      \/                  \/
2020-12-21T15:42:15.517002437Z
2020-12-21T15:42:15.517006237Z A P P   S E R V I C E   O N   L I N U X
2020-12-21T15:42:15.517009937Z
2020-12-21T15:42:15.517013537Z Documentation: http://aka.ms/webapp-linux
2020-12-21T15:42:15.517017237Z Python 3.7.9
2020-12-21T15:42:15.517021137Z Note: Any data outside '/home' is not persisted
2020-12-21T15:42:16.184687778Z Starting OpenBSD Secure Shell server: sshd.
2020-12-21T15:42:16.306056302Z App Command Line not configured, will attempt auto-detect
2020-12-21T15:42:16.307030612Z Launching oryx with: create-script -appPath /home/site/wwwroot -output /opt/startup/startup.sh -virtualEnvName antenv -defaultApp /opt/defaultsite -bindPort 8000
2020-12-21T15:42:16.713214608Z Found build manifest file at '/home/site/wwwroot/oryx-manifest.toml'. Deserializing it...
2020-12-21T15:42:16.715944036Z Build Operation ID: |KumGfHiC6+o=.7959223c_
2020-12-21T15:42:16.716620843Z Oryx Version: 0.2.20201112.1, Commit: a120bb248aa8d208ca5e02d7d9d075196e79cffd, ReleaseTagName: 20201112.1
2020-12-21T15:42:16.717061647Z Output is compressed. Extracting it...
2020-12-21T15:42:16.722837705Z Extracting '/home/site/wwwroot/output.tar.gz' to directory '/tmp/8d8a5c655cd84c2'...
2020-12-21T15:42:31.359781170Z App path is set to '/tmp/8d8a5c655cd84c2'
2020-12-21T15:42:38.785889497Z Detected an app based on Flask
2020-12-21T15:42:38.785913598Z Generating `gunicorn` command for 'app:app'
2020-12-21T15:42:44.766605273Z Writing output script to '/opt/startup/startup.sh'
2020-12-21T15:42:47.987966121Z Using packages from virtual environment antenv located at /tmp/8d8a5c655cd84c2/antenv.
2020-12-21T15:42:47.988636529Z Updated PYTHONPATH to ':/tmp/8d8a5c655cd84c2/antenv/lib/python3.7/site-packages'
2020-12-21T15:42:49.148548649Z [2020-12-21 15:42:49 +0000] [37] [INFO] Starting gunicorn 20.0.4
2020-12-21T15:42:49.155432839Z [2020-12-21 15:42:49 +0000] [37] [INFO] Listening at: http://0.0.0.0:8000 (37)
2020-12-21T15:42:49.155955945Z [2020-12-21 15:42:49 +0000] [37] [INFO] Using worker: sync
2020-12-21T15:42:49.252182000Z [2020-12-21 15:42:49 +0000] [40] [INFO] Booting worker with pid: 40
2020-12-21T15:43:01.949962537Z 172.16.0.1 - - [21/Dec/2020:15:43:01 +0000] "GET /robots933456.txt HTTP/1.1" 404 232 "-" "HealthCheck/1.0"

2020-12-21T16:03:53.619826670Z 172.16.0.1 - - [21/Dec/2020:16:03:53 +0000] "GET / HTTP/1.1" 200 75 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36"
2020-12-21T16:03:54.171599283Z 172.16.0.1 - - [21/Dec/2020:16:03:54 +0000] "GET /favicon.ico HTTP/1.1" 404 232 "https://udacityflaskmlapp.azurewebsites.net/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36"

2020-12-21T16:07:51.543673072Z
2020-12-21T16:07:51.543699872Z   _____
2020-12-21T16:07:51.543704772Z   /  _  \ __________ _________   ____
2020-12-21T16:07:51.543714072Z  /  /_\  \___   /  |  \_  __ \_/ __ \
2020-12-21T16:07:51.543718172Z /    |    \/    /|  |  /|  | \/\  ___/
2020-12-21T16:07:51.543721872Z \____|__  /_____ \____/ |__|    \___  >
2020-12-21T16:07:51.543725572Z         \/      \/                  \/
2020-12-21T16:07:51.543729072Z
2020-12-21T16:07:51.543732272Z A P P   S E R V I C E   O N   L I N U X
2020-12-21T16:07:51.543735672Z
2020-12-21T16:07:51.543738772Z Documentation: http://aka.ms/webapp-linux
2020-12-21T16:07:51.543742072Z Python 3.7.9
2020-12-21T16:07:51.543745473Z Note: Any data outside '/home' is not persisted
2020-12-21T16:07:52.191418595Z Starting OpenBSD Secure Shell server: sshd.
2020-12-21T16:07:52.323124704Z App Command Line not configured, will attempt auto-detect
2020-12-21T16:07:52.323155305Z Launching oryx with: create-script -appPath /home/site/wwwroot -output /opt/startup/startup.sh -virtualEnvName antenv -defaultApp /opt/defaultsite -bindPort 8000
2020-12-21T16:07:52.696937290Z Found build manifest file at '/home/site/wwwroot/oryx-manifest.toml'. Deserializing it...
2020-12-21T16:07:52.700999236Z Build Operation ID: |lb3+hXNfAik=.5949014c_
2020-12-21T16:07:52.707273508Z Oryx Version: 0.2.20201112.1, Commit: a120bb248aa8d208ca5e02d7d9d075196e79cffd, ReleaseTagName: 20201112.1
2020-12-21T16:07:52.707517611Z Output is compressed. Extracting it...
2020-12-21T16:07:52.708815526Z Extracting '/home/site/wwwroot/output.tar.gz' to directory '/tmp/8d8a5c9ec146e41'...
2020-12-21T16:08:08.356904413Z App path is set to '/tmp/8d8a5c9ec146e41'
2020-12-21T16:08:18.566544228Z Detected an app based on Flask
2020-12-21T16:08:18.566568928Z Generating `gunicorn` command for 'app:app'
2020-12-21T16:08:24.785362576Z Writing output script to '/opt/startup/startup.sh'
2020-12-21T16:08:27.820480526Z Using packages from virtual environment antenv located at /tmp/8d8a5c9ec146e41/antenv.
2020-12-21T16:08:27.821108337Z Updated PYTHONPATH to ':/tmp/8d8a5c9ec146e41/antenv/lib/python3.7/site-packages'
2020-12-21T16:08:28.968544444Z [2020-12-21 16:08:28 +0000] [37] [INFO] Starting gunicorn 20.0.4
2020-12-21T16:08:29.066517444Z [2020-12-21 16:08:28 +0000] [37] [INFO] Listening at: http://0.0.0.0:8000 (37)
2020-12-21T16:08:29.066541245Z [2020-12-21 16:08:28 +0000] [37] [INFO] Using worker: sync
2020-12-21T16:08:29.066546245Z [2020-12-21 16:08:28 +0000] [40] [INFO] Booting worker with pid: 40
2020-12-21T16:09:18.229705834Z 172.16.0.1 - - [21/Dec/2020:16:09:18 +0000] "GET /robots933456.txt HTTP/1.1" 404 232 "-" "HealthCheck/1.0"

2020-12-21T16:09:44.883293077Z [2020-12-21 16:09:44,883] INFO in app: JSON payload: %s json_payload
2020-12-21T16:09:45.007898106Z [2020-12-21 16:09:45,007] INFO in app: inference payload DataFrame: %s inference_payload
2020-12-21T16:09:45.008703017Z [2020-12-21 16:09:45,008] INFO in app: Scaling Payload: %s payload
2020-12-21T16:09:45.088548661Z 172.16.0.1 - - [21/Dec/2020:16:09:45 +0000] "POST /predict HTTP/1.1" 200 35 "-" "curl/7.64.0"



2020-12-21T14:51:34.256Z INFO  - Starting container for site
2020-12-21T14:51:34.257Z INFO  - docker run -d -p 7440:8000 --name udacityflaskmlapp_9_cdfbbf03 -e WEBSITE_SITE_NAME=udacityflaskmlapp -e WEBSITE_AUTH_ENABLED=False -e WEBSITE_ROLE_INSTANCE_ID=0 -e WEBSITE_HOSTNAME=udacityflaskmlapp.azurewebsites.net -e WEBSITE_INSTANCE_ID=a2fa831d16021d925a0f99f667df2ce8bca2429815f806880f0aa167f21a611f -e HTTP_LOGGING_ENABLED=1 appsvc/python:3.7_20201112.3

2020-12-21T14:51:42.663Z INFO  - Initiating warmup request to container udacityflaskmlapp_9_cdfbbf03 for site udacityflaskmlapp
2020-12-21T14:52:03.210Z INFO  - Waiting for response to warmup request for container udacityflaskmlapp_9_cdfbbf03. Elapsed time = 20.0817376 sec
2020-12-21T14:52:22.648Z INFO  - Container udacityflaskmlapp_9_cdfbbf03 for site udacityflaskmlapp initialized successfully and is ready to serve requests.
2020-12-21T15:42:07.100Z INFO  - Starting container for site
2020-12-21T15:42:07.101Z INFO  - docker run -d -p 2945:8000 --name udacityflaskmlapp_10_f30a7a58 -e WEBSITE_SITE_NAME=udacityflaskmlapp -e WEBSITE_AUTH_ENABLED=False -e WEBSITE_ROLE_INSTANCE_ID=0 -e WEBSITE_HOSTNAME=udacityflaskmlapp.azurewebsites.net -e WEBSITE_INSTANCE_ID=a2fa831d16021d925a0f99f667df2ce8bca2429815f806880f0aa167f21a611f -e HTTP_LOGGING_ENABLED=1 appsvc/python:3.7_20201112.3

2020-12-21T15:42:15.299Z INFO  - Initiating warmup request to container udacityflaskmlapp_10_f30a7a58 for site udacityflaskmlapp
2020-12-21T15:42:41.399Z INFO  - Waiting for response to warmup request for container udacityflaskmlapp_10_f30a7a58. Elapsed time = 24.7659475 sec
2020-12-21T15:43:01.951Z INFO  - Container udacityflaskmlapp_10_f30a7a58 for site udacityflaskmlapp initialized successfully and is ready to serve requests.
2020-12-21T16:07:42.526Z INFO  - Starting container for site
2020-12-21T16:07:42.527Z INFO  - docker run -d -p 2980:8000 --name udacityflaskmlapp_11_6289f267 -e WEBSITE_SITE_NAME=udacityflaskmlapp -e WEBSITE_AUTH_ENABLED=False -e WEBSITE_ROLE_INSTANCE_ID=0 -e WEBSITE_HOSTNAME=udacityflaskmlapp.azurewebsites.net -e WEBSITE_INSTANCE_ID=a2fa831d16021d925a0f99f667df2ce8bca2429815f806880f0aa167f21a611f -e HTTP_LOGGING_ENABLED=1 appsvc/python:3.7_20201112.3

2020-12-21T16:07:51.236Z INFO  - Initiating warmup request to container udacityflaskmlapp_11_6289f267 for site udacityflaskmlapp
2020-12-21T16:08:08.621Z INFO  - Waiting for response to warmup request for container udacityflaskmlapp_11_6289f267. Elapsed time = 16.9080467 sec
2020-12-21T16:09:18.146Z INFO  - Container udacityflaskmlapp_11_6289f267 for site udacityflaskmlapp initialized successfully and is ready to serve requests.

Ending Log Tail of existing logs ---

Starting Live Log Stream ---


Enhancements
<TODO: A short description of how to improve the project in the future>

Demo

Youtube link:  https://youtu.be/Qo8wvcuz1YU
