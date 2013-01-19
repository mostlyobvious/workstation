description "General development cookbooks."
run_list [
  "recipe[ack]",
  "recipe[git]",
  "recipe[node]",
  "recipe[hub]",
  "recipe[libxml2]",
  "recipe[libxslt]",
  "recipe[libyaml]",
  "recipe[libffi]",
  "recipe[gdbm]",
  "recipe[zeromq]",
  "recipe[openssl]",
  "recipe[readline]",
  "recipe[netcat]",
  "recipe[socat]"
]
