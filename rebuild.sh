#!/bin/bash
if [ -d "site/_build" ]; then
    echo deleting site/_build
    rm -rf site/_build
fi

poetry run jupyter-book build site
