::Chef::Recipe.send(:include, Homebrew::Mixin)
owner = homebrew_owner

directory '/usr/local' do
  owner owner
  group 'staff'
  recursive true
end

directory '/opt/homebrew-cask' do
  owner owner
  group 'staff'
  recursive true
end
