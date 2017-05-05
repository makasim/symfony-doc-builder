FROM ubuntu:16.04

WORKDIR /symfony-doc

RUN apt-get update && \
    apt-get install -y --no-install-recommends --no-install-suggests python-sphinx python-pip make git && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip
RUN pip install setuptools
RUN pip install git+https://github.com/fabpot/sphinx-php.git

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh