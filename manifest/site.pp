include 'docker'

docker::image { 'ubuntu':
  image_tag => 'precise'
}

docker::run { 'helloworld':
  image   => 'base',
  command => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
}

docker::exec { 'helloworld-uptime':
  detach    => true,
  container => 'helloworld',
  command   => 'uptime',
  tty       => true,
}
