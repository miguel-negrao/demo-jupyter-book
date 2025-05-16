#!/bin/bash

poetry export --without-hashes -f requirements.txt > requirements.txt
