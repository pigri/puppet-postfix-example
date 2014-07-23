class postfix::config (
$bind_ip = undef,
$relayhost = undef,
$mail_owner = postfix,
$relay = false,
) {
include postfix::install

  file { "/etc/postfix/main.cf":
    ensure => present,
    content => template('postfix/main_config.erb'),
    owner   => root,
    group   => root,
    mode    => '0644',
    notify  =>  Service["postfix"],
    require => Class['postfix::install'];
  }

   service { "postfix":
    enable  => true,
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    require => Class['postfix::install'];
  }


}