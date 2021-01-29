#!/usr/bin/env bash

find . -name "*.elc" -type f | xargs rm -f
find literate -name "*.elc" -type f | xargs rm -f
find literate -name "*.el" -type f | xargs rm -f
