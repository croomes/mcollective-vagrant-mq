class roles::middleware {
  service{"iptables": ensure => stopped}

  class{"repos": } ->
  package {"stomp":
    ensure   => '1.2.16',
    provider => gem,
  } ->
  class{"java":
    distribution => 'jdk',
    version      => 'latest',
  }
  class{"activemq": } ->
  class{"puppet": } ->
  class{"nagios": } ->
  class{"puppet::master": } ->
  class{"mcollective": } ->
  class{"motd": } ->
  Class[$name]

  exec{"/usr/bin/curl http://srt.ly/mcvagrantcounter":
    refreshonly => true,
    subscribe => Class["motd"]
  }
}
