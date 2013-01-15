description "Base apps."
run_list [
  "recipe[vim]",
  "recipe[firefox]",
  "recipe[google-chrome]"
]
