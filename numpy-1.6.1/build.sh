#!/bin/bash

sed -e "s,@PREFIX@,$PREFIX," <$RECIPE_DIR/site-atlas-linux.cfg >site.cfg

if [ ! -f site.cfg ]; then
    echo "ERROR: *** site.cfg missing ***"
    exit 1
fi

$PYTHON setup.py install
