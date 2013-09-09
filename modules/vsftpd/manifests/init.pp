# vsftpd class
class vsftpd () inherits vsfptd::params {

  package { 'vsftpd':
    ensure => latest
  }

  class { 'vsftpd::package':
    notify => Class['vsftpd::service'],
  }

  class { 'vsftpd::config':
    require => Class['vsftpd::package'],
    notify  => Class['vsftpd::service'],
  }

  file { "${vsftpd::params::vsftpd_conf_dir}/vsftpd.conf":
    ensure  => file,
    require => Package['vsftpd'],
    content => template('vsftpd/vsftpd.conf.erb'),
  }

  service { 'vsftpd':
    ensure    => running,
    name      => 'vsftpd',
    enable    => true,
    subscribe => File['vsftpd.conf']
  }

}
