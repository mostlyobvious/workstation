description "OSX specific cookbooks."
run_list [
  "recipe[homebrew]",
  "recipe[dmg]"
]
