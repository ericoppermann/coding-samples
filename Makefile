dev-ready:
	poetry add -D flake8 black isort pre-commit pytest pytest-cov
	poetry run pre-commit install
	poetry install

setup:
	poetry install

test: setup
	poetry run pytest -s --junitxml=pytests.xml --cov-report xml --cov-report term --cov-branch --cov=src

lint: setup
	poetry run flake8 src/ tests/
	poetry run black --check src/ tests/
	poetry run isort --check src/ tests/

