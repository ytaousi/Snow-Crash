#!/bin/bash

while :; do /home/user/level10/level10 /tmp/sym2 127.0.0.1; done



while :; do rm -f /tmp/sym2; ln -sf /tmp/sym1 /home/user/level10/token; rm -f /tmp/sym2; done