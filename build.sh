#!/usr/bin/env bash
# exit on error
curl -sSL https://install.python-poetry.org | python3 -
python --version
poetry --version
poetry lock

set -o errexit

poetry install

python manage.py collectstatic --no-input
python manage.py migrate
