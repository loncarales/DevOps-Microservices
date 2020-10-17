# Machine Learning Microservice API with the help of Sklearn model

| Build |
|-------|
| [![loncaral](https://circleci.com/gh/loncarales/DevOps_Microservices.svg?style=shield)](https://app.circleci.com/pipelines/github/loncarales/DevOps_Microservices?branch=master) |

## Project Overview

The project Goal is to operationalize Machine Learning Microservice API using [Docker](https://www.docker.com/) and [Kubernetes](https://kubernetes.io/). 

## Machine Learning Model

We are using a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

The model is consumed by Python flask app—in a provided file, `app.py` — that serves out predictions (inference) about housing prices through API calls.

## Prerequisites

You need to install docker and kubernetes to run this project

* [Install Docker](https://docs.docker.com/get-docker/)
* [Install Kubernetes](https://kubernetes.io/docs/tasks/tools/)

## Local Environment Setup

### Using the `Makefile`

* Run `make setup` to create python virtualenv in ./venv
* Run `make install` to install the necessary dependencies
* Run `make lint` to lint the python file using pylint
* Run `make lint-dockerfile` to lint the Dockerfile using hadolint running in interactive Docker container

### Running the `app.py`

### Standalone

`python3 app.py`

### Run in Docker

`./run_docker.sh`

### Run in Kubernetes

First we need to upload the image to docker hub repository by running `./upload_docker.sh` so it can be pulled down by Kubernetes.

`./run_kubernetes.sh`
