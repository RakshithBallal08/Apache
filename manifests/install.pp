# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include apache::install
class apache::install (
  String $package_name,
  ) {
  package { $package_name:
    ensure => installed,
  }
}
