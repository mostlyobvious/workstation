description "General development cookbooks."
run_list [
  "recipe[curl]",
  "recipe[wget]",
  "recipe[ack]",
  "recipe[git]",
  "recipe[libxml2]"
]
