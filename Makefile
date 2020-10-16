lint:
	set -e
	set -x
	flake8 app
format:
	set -e
	isort --force-single-line-imports app tests
	autoflake --recursive --remove-all-unused-imports --remove-unused-variables --in-place app tests
	black app tests
	isort app tests
pytest:
	pytest --cov=app tests/

