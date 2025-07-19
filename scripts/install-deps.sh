#!/usr/bin/env bash

# set -e

install__postgres()
{
    sudo apt-get install -y postgresql-16
}


install__dbeaver()
{
    sudo snap install dbeaver-ce
}


install__nvm()
{
    wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash
}

install_node_24()
{
    source ~/.nvm/nvm.sh
    nvm install node 24
    nvm use 24
}

install_npm_packages()
{
    npm init -y && npm install express pg typescript ts-node-dev && npx tsc --init
    npm install @types/express @types/node @types/pg --save-dev
}


sudo apt-get update

install__postgres
install__dbeaver
install__nvm
install_node_24
install_npm_packages

