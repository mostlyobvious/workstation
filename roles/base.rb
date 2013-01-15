description "Base apps."
run_list [
  "recipe[vim]",
  "recipe[ctags]",
  "recipe[firefox]",
  "recipe[google-chrome]"
]
