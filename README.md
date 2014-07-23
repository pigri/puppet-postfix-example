Example:

class { postfix::config:
    bind_ip => '127.0.0.1',
    relay => 'true',
    relayhost => '10.0.10.101:2225',
 }