.PHONY: bootstrap

SHELL := /bin/bash

#################################################################################
# COMMANDS                                                                      #
#################################################################################

bootstrap: env-${MODULE_CPU_TYPE}/bin/activate .git requirements.txt
	echo "Installing prerequisites"
	( \
	source load_modules.sh; \
	source env-${MODULE_CPU_TYPE}/bin/activate; \
	pip install --upgrade pip; \
	pip install -r requirements.txt; \
	)

.git:
	echo "Initiating git repository
	git init

env-${MODULE_CPU_TYPE}/bin/activate:
	echo "Creating virtualenv"
	( \
	source load_modules.sh; \
	python -m venv env-${MODULE_CPU_TYPE}; \
	)
