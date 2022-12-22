#!/bin/bash
OPENSSL=/usr/local/opt/openssl@3/bin/openssl
# Generate root key
$OPENSSL genpkey -algorithm ed25519 -out root.pem
# Generate CA CSR
$OPENSSL req -new -out ca.csr -key root.pem -config ./root-cert.conf
# Create self signed root cert
$OPENSSL x509 -req -days 10950 -in ca.csr -signkey root.pem -out ca.crt
# Generate actual signing key for releases
$OPENSSL genpkey -algorithm ed25519 -out sign-release.pem
# Create CSR for release certificate
$OPENSSL req -new -out sign-release.csr -key sign-release.pem -config ./signing-cert.conf
# Sign certificate
$OPENSSL x509 -req -days 3650 -in sign-release.csr -signkey root.pem -out sign-release.crt
