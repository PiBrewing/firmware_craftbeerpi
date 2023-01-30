#!/bin/bash
OPENSSL=/usr/local/opt/openssl@3/bin/openssl
# Generate root key and CA cert
$OPENSSL req -x509 -config openssl-ca.conf -days 10950 -newkey rsa:4096 -sha256 -nodes -out ca.crt -outform PEM
# Create CSR and private key for release certificate 
$OPENSSL req -config signing-cert.conf -newkey rsa:4096 -sha256 -nodes -out sign-release.csr -outform PEM
$OPENSSL ca -config openssl-ca.conf -policy signing_policy -extensions signing_req -out sign-release.crt -infiles sign-release.csr
