#!/bin/bash

cd /home/arvind/.dw/

nohup /usr/local/sbin/dnscrypt-wrapper --resolver-address=127.0.0.1:53 --listen-address=0.0.0.0:5353 --provider-name=2.dnscrypt-cert.arvind.io --crypt-secretkey-file=old.key,new.key --provider-cert-file=old.cert,new.cert > dnscrypt-wrapper.log 2>&1 &
