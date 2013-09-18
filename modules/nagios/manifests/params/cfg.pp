# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# nagios::params::cfg for nagios.cfg
#
class nagios::params::cfg {
  include nagios::params::cgi
  content             => template('nagios/nagios.cfg.erb')

  $nagios_log_file    = '/var/log/nagios.log'
  $nagios_obj_path    = '/etc/nagios/objects'
  $nagios_var_path    = '/etc/nagios/var'
}
