function tunnels-nomad-api --description 'setup a tunnel to [*] nomad API'
  argparse 's/stop' -- $argv

  ps ux | grep [s]sh | grep 4646 | awk '{print $2}'|xargs -n 1 kill; echo "killed tunnel";

  # Will create a new tunnel only if no stop argument passed
  if test -z $_flag_s;
      ssh -fNL localhost:4646:127.0.0.1:4646 vm-nomad-01.node.consul;
      echo "Tunnel to [*] nomad api opened on 4646";
      http 'http://127.0.0.1:4646/v1/agent/members'
  end
end
