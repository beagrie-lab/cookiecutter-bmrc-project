.PHONY: bootstrap

SHELL := /bin/bash

#################################################################################
# COMMANDS                                                                      #
#################################################################################

bootstrap: env-${MODULE_CPU_TYPE}/bin/activate .git requirements.txt
	echo "Installing prerequisites"
	( \
	module load Python/3.9.5-GCCcore-10.3.0; \
	source env-${MODULE_CPU_TYPE}/bin/activate; \
	pip install -U pip; \
{% if cookiecutter.gam_support == "yes" %}	pip install cython numpy; \
	pip install git+https://github.com/pombo-lab/gamtools.git@pyproject-toml; \
{% endif %}	pip install -r requirements.txt; \
	)

.git:
	echo "Initiating git repository"
	git init

env-${MODULE_CPU_TYPE}/bin/activate:
	echo "Creating virtualenv"
	( \
	source load_modules.sh; \
	python -m venv env-${MODULE_CPU_TYPE}; \
	)
	sed -i -e "4i source \$$(dirname -- \"\$${BASH_SOURCE[0]}\")/../../load_modules.sh" env-${MODULE_CPU_TYPE}/bin/activate
