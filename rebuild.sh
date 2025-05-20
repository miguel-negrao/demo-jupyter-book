#!/bin/bash
if [ -d "_build" ]; then
    echo deleting _build
    rm -rf _build
fi

poetry run jupyter-book build .
