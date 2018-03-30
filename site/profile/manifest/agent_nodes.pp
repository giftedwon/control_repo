class profile::agent_nodes {
  include dockeragent
  include docker
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
 }
