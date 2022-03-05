#!/bin/sh
read -r -p 'Package name: ' package

flutter pub add $package
echo "Success"
