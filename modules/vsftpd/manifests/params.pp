# vsftpd params file.

class vsfptd::params {
  $vsftpd_conf_dir         = '/etc/vsftpd'

  $anonymous_enable        = YES
  $local_enable            = YES
  $write_enable            = YES
  $local_umask             = 022
  $anon_upload_enable      = YES
  $anon_mkdir_write_enable = YES
  $dirmessage_enable       = YES
  $xferlog_enable          = YES
  $connect_from_port_20    = YES
  $chown_uploads           = YES
  $chown_username          = whoever
  $xferlog_file            = '/var/log/vsftpd.log'
  $xferlog_std_format      = YES
  $idle_session_timeout    = '600'
  $data_connection_timeout = '120'
  $nopriv_user             = ftpsecure
  $async_abor_enable       = YES
  $ascii_upload_enable     = YES
  $ascii_download_enable   = YES
  $ftpd_banner             = 'Welcome to blah FTP service.'
  $deny_email_enable       = YES
  $banned_email_file       = '/etc/vsftpd.banned_emails'
  $chroot_local_user       = YES
  $chroot_list_enable      = YES
  $chroot_list_file        = '/etc/vsftpd.chroot_list'
  $ls_recurse_enable       = YES
  $listen                  = NO
  $listen_ipv6             = YES
}
