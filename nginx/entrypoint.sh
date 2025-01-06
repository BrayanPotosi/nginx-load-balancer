#!/bin/sh

mkdir -p certs && cd certs

# Generate ssl certificate
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout nginx-selfsigned.key \
    -out nginx-selfsigned.crt \
    -subj "/C=XX/ST=STATE/L=LOCALITY/O=ORGANIZATION/OU=ORGANIZATIONAL_UNIT/CN=localhost" \
    > /dev/null 2>&1

nginx -g 'daemon off;'
