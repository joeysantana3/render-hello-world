#!/usr/bin/env bash
# exit on error
python --version
poetry --version
poetry lock

set -o errexit

poetry install

python manage.py collectstatic --no-input
python manage.py migrate

pip freeze
