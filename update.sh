#!/bin/bash
# if not root, run as root
pwd=$(readlink -f $(dirname $0))
if (( $EUID != 0 )); then
    sudo $dirname $0
    exit
fi
apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade
apt-get clean
apt-get -y autoremove
echo "Le script est dans le répertoire \"$pwd\""
echo "Le script \"$dirname $0\" s'est exécuté correctement !"
