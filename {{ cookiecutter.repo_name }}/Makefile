.PHONY: bootstrap

SHELL := /bin/bash

#################################################################################
# COMMANDS                                                                      #
#################################################################################

bootstrap:
	( \
	source load_modules.sh; \
	python -m venv {{ cookiecutter.repo_name }}/env-${MODULE_CPU_TYPE}; \
	source {{ cookiecutter.repo_name }}/env-${MODULE_CPU_TYPE}/bin/activate; \
	pip install --upgrade pip;
	pip install -r requirements.txt;
	)
	git init
