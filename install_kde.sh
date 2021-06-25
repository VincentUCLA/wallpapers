#!/bin/bash

dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm
dnf --enablerepo=epel,powertools group -y install "KDE Plasma Workspaces" "base-x"
echo "exec /usr/bin/startkde" >> ~/.xinitrc
dnf install -y sddm firefox
systemctl enable sddm
systemctl set-default graphical.target
