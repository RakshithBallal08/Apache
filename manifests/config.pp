# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include apache::config
class apache::config {
  file { '/etc/httpd/conf/httpd.conf':
    ensure => file,
    source => 'puppet:///modules/apache/httpd.conf',
  }

  file { '/var/www':
    ensure => directory,
  }

  file { '/var/www/index.html':
    ensure => file,
    source => 'puppet:///modules/apache/index.html',
  }
}
