# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

class vsftpd () {

  include vsftpd::params

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
