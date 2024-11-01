run: ## Run the test server.
	python manage.py runserver_plus

test: ## Run unittests.
	python manage.py test

makemigrations: ## Create migration files
	python manage.py makemigrations

migrate: ## Run new migrations
	python manage.py migrate

install: ## Install the python requirements.
	pip install -r requirements.txt

install-dev: ## Install the python requirements as well as some dev specific ones.
	pip install -r requirements-dev.txt

lint: ## Run code linter and formatter
	black . -S
	flake8 .
