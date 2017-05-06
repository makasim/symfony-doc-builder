FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests python-sphinx python-pip make git && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip
RUN pip install setuptools
RUN pip install sphinx~=1.3.0 git+https://github.com/fabpot/sphinx-php.git