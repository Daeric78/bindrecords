bindrecords
====

## Description
nsupdate dns records with puppet


Overview
--------

Usage:

Add
```
        class { 'bindrecords':}
```
to manifest



Add following to hieradata:

Configure Defaults
```
bindrecords::defaults:
        keyname: 'rndc-key'
        hmac: 'hmac-md5'
        secret: '----secretkey----'
        ttl: 86400 
        server: 127.0.0.1
        ensure: present 
```


Use a hash to maintain records:
```
IN/CNAME/www.example.com:
  ensure: present
  rrdata:
  - server.example.com.
  ttl: 86400
  zone: example.com
  server: ns.example.com
IN/A/server.example.com:
  ensure: present
  rrdata:
  - 192.168.0.1
  ttl: 86400
  purge: false
  zone: example.com
  server: ns.example.com
IN/PTR/1.0.168.192.in-addr.arpa:
  rrdata:
  - server.example.com.
```
