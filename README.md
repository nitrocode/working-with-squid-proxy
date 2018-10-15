# Squid Test Blocking ACLs

Work in progress.

Simple Vagrant vm to test squid blocking acls.

## Setup

Start squid 3.3

    vagrant up trusty

Start squid 3.5

    vagrant up xenial

## Configure

1. Modify or add regex to `squid_sites.txt`
2. Restart squid

    Without debug

        vagrant ssh trusty
        sudo service squid restart

    With debug

        sudo squid3 -k debug

3. Or restart

## Test ACL

Example of blocked url:

    $ ./test_acl.sh http://www.google.com
    Server: squid/3.3.8
    X-Squid-Error: ERR_ACCESS_DENIED 0
    Via: 1.1 vagrant-ubuntu-trusty-64 (squid/3.3.8)

Example of allowed url:

    $ ./test_acl.sh http://www.github.com
    Via: 1.1 vagrant-ubuntu-trusty-64 (squid/3.3.8)

## Squid logs

For access and deny summaries

    /var/log/squid*/access.log

For more in depth

    /var/log/squid*/cache.log

## References

* https://wiki.squid-cache.org/SquidFaq/SquidAcl#How_can_I_block_access_to_porn_sites.3F
* http://www.squid-cache.org/Versions/v3/3.5/cfgman/
* http://www.squid-cache.org/Versions/v3/3.3/cfgman/
* https://wiki.squid-cache.org/SquidFaq/BugReporting#Debugging_Squid
* https://github.com/chef-cookbooks/squid

## TODO

* find out what configuration sets a granular whitelist using regexes and denies everything else
* find out how chef uses it - where the script is, what version cookbook, elc
