#!/bin/sh
{
    echo "This script requires super user access."
    echo "You will be prompted for your password by sudo."

    # clear any previous sudo permission
    sudo -k

    # run inside sudo
    sudo sh <<SCRIPT
  # create file in case we deleted it
  touch /etc/init.d/couchdb
  
  ##Update, Upgrade, Autoremove
    sudo apt-get -y update
   sudo apt -y full-upgrade
    sudo apt-get -y autoremove
SCRIPT
