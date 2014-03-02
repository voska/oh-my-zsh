#!/bin/bash

# Installs this configuration in the current user's linux machine.

DIR=$(pwd)

cd ..
ln -i -s $DIR/zshrc .zshrc

