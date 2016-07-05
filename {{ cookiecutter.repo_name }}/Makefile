.PHONY: clean data lint requirements bootstrap

SHELL := /bin/bash

#################################################################################
# COMMANDS                                                                      #
#################################################################################

bootstrap:
	( \
	source `which virtualenvwrapper.sh`; \
	mkvirtualenv -p {{ cookiecutter.python_interpreter }} {{ cookiecutter.repo_name }}; \
	)

requirements:
	( \
	source `which virtualenvwrapper.sh`; \
	deactivate; \
	workon {{ cookiecutter.repo_name }}; \
	pip install -r requirements.txt; \
	)

data: requirements
	python src/data/make_dataset.py

clean:
	find . -name "*.pyc" -exec rm {} \;

lint:
	flake8 --exclude=lib/,bin/ .

#################################################################################
# PROJECT RULES                                                                 #
#################################################################################
