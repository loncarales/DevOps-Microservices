## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	# Create python virtualenv in ./venv
	python3 -m venv ./venv

install:
	# This should be run from inside a virtualenv
	. ./venv/bin/activate && pip install --upgrade pip && pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# This should be run from inside a virtualenv
	. ./venv/bin/activate && pylint --disable=R,C,W1203,W1309 app.py

lint-dockerfile:
	docker run --rm --interactive hadolint/hadolint < Dockerfile

all: setup install test lint lint-dockerfile
