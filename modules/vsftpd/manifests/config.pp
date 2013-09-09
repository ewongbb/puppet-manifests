# vsftpd class
class vsftpd::config inherits vsftpd::params {
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
