#!/usr/bin/env bash

set -e
set -x

ls -la /symfony-doc
cd /symfony-doc/_build

make html