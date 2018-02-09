#!/bin/sh

USER=eduardojr
HOST=leg.ufpr.br
DIR=public_html/

Rscript -e 'blogdown::build_site()' && rsync -avz --delete --exclude-from 'rsync-exclude.txt' public/ ${USER}@${HOST}:~/${DIR}

exit 0
