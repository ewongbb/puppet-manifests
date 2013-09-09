# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

class vsftpd::config {
  include vsftpd::params
  File {
    owner => 'root',
    group => 'root',
    mode  => '0644',
  }

  file { "${vsftpd::params::vsftpd_conf_dir}":
    ensure => directory,
  }

  file { "${vsftpd::params::xferlog_file}":
    ensure => file,
  }

  file { "$(vsftpd::params::banned_email_file}":
    ensure => file,
  }
}
