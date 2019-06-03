class ntp::params {
  $package_name       = 'ntp'
  $package_ensure     = 'present'
  $config_name        = 'present'
  $config_file_mode   = '0644'
  $servers            = ['0.centos.pool.ntp.org']
  $service_ensure     = 'running'
  $service_enable     = true
  $service_hasrestart = true
  $service_hasstatus  = true
  $service_name       = $facts['os']['family'] ? {
    'Debian'          => 'ntp',
    'RedHat'          => 'ntpd',
  }
}
