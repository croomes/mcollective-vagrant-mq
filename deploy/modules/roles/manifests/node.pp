class roles::node {
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
  class{"mcollective": } ->
  class{"motd": } ->
  Class[$name]
}
