#!/bin/sh -l

echo "//npm.pkg.github.com/:_authToken=$INPUT_AUTH_TOKEN" > .npmrc
echo "@$INPUT_ORG_NAME:registry=https://npm.pkg.github.com/" >> .npmrc

if [[ "$INPUT_ALWAYS_AUTH" = true ]]; then
    echo "always-auth=true" >> .npmrc
fi