node 'master.puppet.vm' {
  include dockeragent
  include role::master_server
}
node /^web/ { 
  include dockeragent
  include role::app_server
}
node /^db/ {
  include dockeragent
  include role::db_server
}
