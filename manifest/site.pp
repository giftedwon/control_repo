include 'docker'
include 'ntp'

docker::image { 'ubuntu':
  image_tag => 'precise'
}

docker::run { 'helloworld':
  image   => 'ubuntu',
  command => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
}

docker::run { 'goodbyeworld':
  image  => 'ubuntu',
  command => '/bin/sh -c "while true; do echo go away; sleep 1; done"',
}
