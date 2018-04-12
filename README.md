# Sentiment Analysis for Serverless

This is a simple API based Serverless application written in Python using the
Flask webserver and NLTK module.

## Custom environment

A simple docker image has been created to install preferred interpreter and 
modules for the application. For more details, look into the 
[Dockerfile](https://github.com/BU-NU-CLOUD-SP18/Serverless-Computing-on-the-Edge/blob/master/sentiment_analysis/Dockerfile).
The image built with this docker file has been pushed to docker hub with the following label and tag: [anish92gupta/python-nltk:latest](https://hub.docker.com/r/anish92gupta/python-nltk/).