.PHONY: bootstrap

SHELL := /bin/bash

#################################################################################
# COMMANDS                                                                      #
#################################################################################

bootstrap: env-${MODULE_CPU_TYPE}/bin/activate .git requirements.txt
	echo "Installing prerequisites"
	( \
	module load Python/3.11.3-GCCcore-12.3.0; \
	source env-${MODULE_CPU_TYPE}/bin/activate; \
	pip install -U pip; \
	pip install -r requirements.txt; \
	)

.git:
	echo "Initiating git repository"
	git init
	git add README.md
	git commit -m "First commit"

env-${MODULE_CPU_TYPE}/bin/activate:
	echo "Creating virtualenv"
	( \
	source load_modules.sh; \
	python -m venv env-${MODULE_CPU_TYPE}; \
	)
	sed -i -e "4i source \$$(dirname -- \"\$${BASH_SOURCE[0]}\")/../../load_modules.sh" env-${MODULE_CPU_TYPE}/bin/activate
