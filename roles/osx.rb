description "OSX specific cookbooks."
run_list [
  "recipe[homebrew]",
  "recipe[dmg]",
  "recipe[mac_os_x::settings]"
]
