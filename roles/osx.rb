description "OSX specific cookbooks."
run_list [
  "recipe[homebrew]",
  "recipe[dmg]",
  "recipe[mac_os_x::settings]",
  "recipe[ssh-copy-id]",
  "recipe[viscosity]",
  "recipe[silverlight]",
  "recipe[iterm2]",
  "recipe[bettertouchtool]",
  "recipe[1password]",
  "recipe[pow]"
]
