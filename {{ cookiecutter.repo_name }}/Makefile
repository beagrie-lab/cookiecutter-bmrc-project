.PHONY: clean data lint requirements bootstrap

#################################################################################
# COMMANDS                                                                      #
#################################################################################

bootstrap:
	mkvirtualenv {{ cookiecutter.repo_name }}

requirements:
	pip install -q -r requirements.txt

data: requirements
	python src/data/make_dataset.py

clean:
	find . -name "*.pyc" -exec rm {} \;

lint:
	flake8 --exclude=lib/,bin/ .

#################################################################################
# PROJECT RULES                                                                 #
#################################################################################
