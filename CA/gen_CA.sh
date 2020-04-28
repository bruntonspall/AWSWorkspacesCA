#!/bin/bash

openssl genrsa -aes256 -out CA.key 2048
openssl req -x509 -new -nodes -key CA.key -sha256 -days 1024 -out CA.pem -subj "/C=GB/ST=England/L=London/O=ORGHERE/OU=OUHERE/CN=ca.local"
openssl x509 -in CA.pem -out CA.crt
