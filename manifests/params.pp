#This is a Params class
class apache::params  {
$service_name = $facts['os']['name'] ? {
  'Debian' => 'apache',
  'Redhat' => 'httpd',
  }

$package_name = $facts['os']['name'] ? {
    'Debian' => 'apache',
    'Redhat' => 'httpd',
  }
}
