#!/bin/bash

curl -sc /tmp/cookie "https://drive.google.com/uc?export=download&id=1cStK5PaexNBvbvYG2yZUlCRauHa5l50r" > /dev/null
CODE="$(awk '/_warning_/ {print $NF}' /tmp/cookie)"
curl -Lb /tmp/cookie "https://drive.google.com/uc?export=download&confirm=${CODE}&id=1cStK5PaexNBvbvYG2yZUlCRauHa5l50r" -o tensorflow-2.1.0rc0-cp37-cp37m-linux_armv7l.whl
echo Download finished.
