#!/bin/bash

pkill -f dnscrypt-wrapper

cd /home/arvind/.dw/
rm -f old.key old.cert
mv ./new.key ./old.key
mv ./new.cert ./old.cert

/usr/local/sbin/dnscrypt-wrapper --gen-crypt-keypair --crypt-secretkey-file=new.key
/usr/local/sbin/dnscrypt-wrapper --gen-cert-file --crypt-secretkey-file=new.key --provider-cert-file=new.cert --provider-publickey-file=public.key --provider-secretkey-file=secret.key --cert-file-expire-days=9
./start.sh

