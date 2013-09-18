# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

class nagios::config {

  file { $nagios::params::nagios_service_conf:
    ensure  => present,
    owner   => nagios,
    group   => nagios,
    mode    => '0600',
    require => Class['nagios::install'],
    notify  => Class['nagios::service'],
  }
}

