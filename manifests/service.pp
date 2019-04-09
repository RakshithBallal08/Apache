# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include apache::service
class apache::service (
  String $service_name,
  ) {
  service { $service_name:
    ensure => running,
  }
}
