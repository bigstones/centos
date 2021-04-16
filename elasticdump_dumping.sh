#!/bin/bash

USER='[username]'
PATH_='[node_modules PATH]'

export SHELL=/bin/bash
export NVM_BIN=/home/$USER/.nvm/versions/node/v12.18.4/bin
export PATH=/home/$USER/.local/bin:/home/$USER/bin:/home/$USER/.nvm/versions/node/v12.18.4/bin:/usr/local/bin/python3:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin
export NVM_INC=/home/$USER/.nvm/versions/node/v12.18.4/include/node

/opt/$PATH_/node_modules/elasticdump/bin/elasticdump  \
    --input=http://localhost:9200/images                               \
    --output=/home/$USER/data/elasticsearchdata_$(date +\%Y\%m\%d).json \
    type=data > /home/$USER/data/es_$(date +\%Y\%m\%d).log
