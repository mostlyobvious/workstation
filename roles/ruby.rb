description "Anything to get up and running with Ruby."
run_list [
  # "recipe[rvm]"
  "recipe[ruby-build]",
  "recipe[chruby]",
]
