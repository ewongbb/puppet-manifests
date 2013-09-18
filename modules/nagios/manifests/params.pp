# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

class nagios::params {
  $nagios_service_name  = 'nagios'
}

# nagios::params::cgi for cgi.cfg
#
class nagios::params::cgi inherits nagios::params {
  content             => template('nagios/cgi.cfg.erb')

  $nagios_etc_path    = '/etc/nagios'
  $nagios_share_path  = '/var/nagios/share'

}

# nagios::params::cfg for nagios.cfg
#
class nagios::params::cfg inherits nagios::params::cgi {
  content             => template('nagios/nagios.cfg.erb')

  $nagios_log_file    = '/var/log/nagios.log'
  $nagios_obj_path    = '/etc/nagios/objects'
  $nagios_var_path    = '/etc/nagios/var'
}
