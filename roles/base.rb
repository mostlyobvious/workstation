description "Base apps."
run_list [
  "recipe[vim]",
  "recipe[coreutils]",
  "recipe[findutils]",
  "recipe[ctags]",
  "recipe[bash::completion]",
  "recipe[firefox]",
  "recipe[google-chrome]"
]
