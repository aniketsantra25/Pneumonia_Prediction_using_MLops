# Pneumonia_Prediction_using_MLops

Nowadays people suffer from a lot of disease. So, this is an application which can predict whether a person is suffering from Pneumonia or not by submitting their scanned X-Ray copy. If the person is suffering from Pneumonia then he/she can get suggestions from doctors. This system should be user-friendly so that user can interact with the application easily.

For solving this problem, I created a user friendly webapp which helps to predict whether the person is suffering from Pneumonia or not just by providing the scanned copy of Chest Xray.

Technologies used:
1. Terraform:-  It is used to provision the cloud resourcesautomatically. So I provisioned some needful resources with the help of this tool for the project in AWS.
2. Amazon Web Services(AWS):- It is public cloud provider, where I have used some computing networking resources like EC2, VPC and IAM, etc.
3. Ansible:- It is a tool which is used to automate the application and the infrastructure. I have used ansible to configure k8s multinode cluster.
4. Machine Learning and Deep Learning:- It helped to train the models which helped to predict the disease. The model was based on Convolution Neural Network algorithm which helps me to predict the disease with 88% accuracy.
5. Flask:- It is one of the simplest web framework and I have used this framework to create a user friendly webapp for users.
6. Docker:- It is containerized tool and I have used this tool for creating his custom container images with my ML models and Flask Code that contain all the stuff related to front-end of this project.
7. DockerHub:- It is a repository registry service provided by Docker inc. i have used this service to pull and push custom docker images.
8. Kubernetes:- It is an open-source container orchestration platform that enables the operation of an elastic web server framework for applications. It basically helped me to manage the pods which contains the webpage of the applications and exposing these pods to the public world.
