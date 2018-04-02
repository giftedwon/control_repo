include 'docker'
include 'ntp'

docker::image { 'ubuntu':
  image_tag => 'precise'
}

docker::run { 'helloworld':
  image   => 'ubuntu',
  command => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
  hostname => 'hello.puppet.vm',  
}

docker::run { 'goodbyeworld':
  image  => 'ubuntu',
  command => '/bin/sh -c "while true; do echo go away; sleep 1; done"',
}

ntp::config { 'ntp':
  servers => [ 'ntp1.corp.com', 'ntp2.corp.com' ],
}
