include 'docker'
include 'ntp'

docker::image { 'ubuntu':
  image_tag => 'precise'
  hostname => 'thisimage.puppet.vm
}

docker::run { 'helloworld':
  image   => 'ubuntu',
  hostname => 'hello.puppet.vm',  
}

docker::run { 'goodbyeworld':
  image  => 'ubuntu',
  command => '/bin/sh -c "while true; do echo go away; sleep 1; done"',
}
