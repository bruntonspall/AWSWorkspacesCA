#!/bin/bash
echo "Signing $1"
openssl x509 -req -in $1 -CA CA.pem -CAkey CA.key -CAcreateserial -out $1.crt -days 365 -sha256   -extensions v3_req -extfile ext.txt
