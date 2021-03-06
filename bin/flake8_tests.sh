#!/bin/sh

flake8 --version ; pip --version
# stop the build if there are Python syntax errors or undefined names
flake8 . --count --select=E901,E999,F821,F822,F823 --show-source --statistics
# exit-zero treats all errors as warnings
flake8 . --count --exit-zero --max-complexity=10 --max-line-length=120 --statistics
