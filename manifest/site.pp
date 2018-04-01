include 'docker'

docker::image { 'ubuntu':
  image_tag => 'precise'
}

docker::run { 'helloworld':
  image   => 'ubuntu',
  command => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
}

docker::run { 'goodbye':
  image  => 'ubuntu',
  command => '/bin/sh -c "while, true do eccho; sleep 1; done"'.
}
