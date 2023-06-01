.PHONY: bootstrap

SHELL := /bin/bash

#################################################################################
# COMMANDS                                                                      #
#################################################################################

bootstrap:
	( \
	source load_modules.sh; \
	python -m venv env-${MODULE_CPU_TYPE}; \
	source env-${MODULE_CPU_TYPE}/bin/activate; \
	pip install --upgrade pip; \
	pip install -r requirements.txt; \
	)
	git init
