# Symfony doc builder

This a docker container. It contains all required things for building Symfony doc and a script to build it.

## Setup

1. Clone repository

```bash
$ git clone git@github.com:makasim/symfony-doc-builder.git symfony-doc-builder
$ cd symfony-doc-builder; 
```

/Users/makasim/projects/enqueue/enqueue-sandbox/symfony-doc-builder/README.md

2. Build image

```bash
$ docker build --rm --tag symfony-doc-builder .
```

3. Clone symfony doc

```bash
$ git clone git@github.com:symfony/symfony-docs.git docs
```

4. Build docs

```bash 
$ docker run --rm -v `pwd`/docs:/symfony-doc symfony-doc-builder
```

5. View docs 

```bash
$ google-chrome docs/_build/html/index.html
```

