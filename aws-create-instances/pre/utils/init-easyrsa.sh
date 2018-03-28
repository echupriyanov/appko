#!/usr/bin/env bash
cd easy-rsa
source ./vars
./clean-all
./build-ca --batch
./build-key-server --batch server
cd keys
openvpn --genkey --secret ta.key
openssl dhparam -out dh2048.pem 2048
