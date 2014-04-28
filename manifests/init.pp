class artifactory (
  $port = 80,
) {
  service { 'artifactory':
    ensure  => running,
    enable  => true,
  }
 
  firewall { "100 allow $port access":
    port   => $port,
    proto  => tcp,
    action => accept,
  }
}
