# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include apache
class apache(
  String $service_name = $apache::params::service_name,
  String $package_name = $apache::params::package_name,
  String $message,
  ) inherits ::apache::params {
  class {'apache::install':
    package_name => $package_name,
  }
  class {'apache::service':
    service_name => $service_name,
  }
  include ::apache::config

  Class['::apache::install']
  -> Class['::apache::config']
  ~> Class['::apache::service']
}
