include_recipe 'homebrew'

node[:homebrew][:taps].each do |tap_name|
  homebrew_tap tap_name
end
