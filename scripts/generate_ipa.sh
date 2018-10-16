#!/bin/sh

mkdir Payload
cp -R $1.app Payload/
zip -r -s 64 Payload.zip Payload/
mv Payload.zip $1.ipa
rm -rf Payload
