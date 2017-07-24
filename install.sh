#!/usr/bin/env bash

# Find script parent dir path.
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done

CONFIG_DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

TMP_DIR=/tmp/nvim

usage() {
    echo "Usage:"
    echo "      --clean: wipe old configuration"
    echo "      --install: install configuration files"
    echo "      --all: wipe old configuration, then install configuration files"

    exit 0
}

CLEAN=false
INSTALL=false

if [ $# -eq 0 ]; then
    usage
fi

while [ $# -gt 0 ]
do
    key="$1"
    case $key in
        --clean)
            CLEAN=true
        ;;
        --install)
            INSTALL=true
        ;;
        --all)
            CLEAN=true
            INSTALL=true
        ;;
        --help)
            usage
        ;;
    esac

    shift
done

if $CLEAN; then
	rm -rfv ~/.config/nvim
	rm -v   ~/.nvimrc
fi

if $INSTALL; then
	cp -Rv $CONFIG_DIR/src/nvim    ~/.config
	cp -v  $CONFIG_DIR/src/.nvimrc ~
fi
