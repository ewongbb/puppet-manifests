# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# nagios::params::cgi for cgi.cfg
#
class nagios::params::cgi {
  include nagios::params
  content             => template('nagios/cgi.cfg.erb')

  $nagios_etc_path    = '/etc/nagios'
  $nagios_share_path  = '/var/nagios/share'

}
