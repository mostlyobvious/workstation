description "General development cookbooks."
run_list [
  "recipe[ack]",
  "recipe[git]",
  "recipe[node]",
  "recipe[hub]",
  "recipe[libxml2]",
  "recipe[libxslt]",
  "recipe[openssl]",
  "recipe[readline]",
  "recipe[netcat]",
  "recipe[socat]"
]
