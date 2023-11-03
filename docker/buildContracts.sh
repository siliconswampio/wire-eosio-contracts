#!/bin/bash
set -e # exit on failure of any "simple" command (excludes &&, ||, or | chains)
cd ~/contracts/eosio.contracts
./build.sh -c /usr/opt/eosio.cdt/1.7.0 -e /usr/opt/eosio/2.0.13 -t -y
cd build
tar -pczf /artifacts/contracts.tar.gz *
