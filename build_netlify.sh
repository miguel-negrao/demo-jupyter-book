#!/usr/bin/env bash
set -euo pipefail

python -m pip install --upgrade pip poetry    # install CLI

# Install project deps **inside** repo (faster Netlify cache)
python -m poetry config virtualenvs.in-project true
python -m poetry install --no-interaction --no-root

# Build HTML
python -m poetry run jupyter-book build .

echo "✅  Jupyter-Book built and ready for deploy"
