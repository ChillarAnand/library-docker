#! /bin/bash

set -x

export DOCKERBUILKIT=1

cp requirements.txtp requirements.txt

alias dbcn='docker build . --no-cache --pull'

# dbc -t flask:v4 -f Dockerfile.4
# dbc -t flask:v5 -f Dockerfile.5


dbcn -t flask:0.0 -f Dockerfile.0
dbcn -t flask:1.0 -f Dockerfile.1
dbcn -t flask:2.0 -f Dockerfile.2
dbcn -t flask:3.0 -f Dockerfile.3
# dbc -t flask:v4 -f Dockerfile.4
# dbc -t flask:v5 -f Dockerfile.5

alias dbc='docker build .'

touch app.py
dbc -t flask:0.1 -f Dockerfile.0

touch app.py
dbc -t flask:1.1 -f Dockerfile.1

touch app.py
dbc -t flask:2.1 -f Dockerfile.2

touch app.py
dbc -t flask:3.1 -f Dockerfile.3

touch app.py
dbc -t flask:v4 -f Dockerfile.4

touch app.py
dbc -t flask:v5 -f Dockerfile.5


docker images | grep 'flask' | sort
