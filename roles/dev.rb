description "General development cookbooks."
run_list [
  "recipe[curl]",
  "recipe[ack]",
  "recipe[git]",
  "recipe[libxml2]"
]
