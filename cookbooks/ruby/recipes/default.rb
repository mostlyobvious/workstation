include_recipe 'rvm'

::Chef::Recipe.send(:include, Homebrew::Mixin)
owner = homebrew_owner

rubies = %w(
  2.1.2
  2.0
  1.9.3
  jruby
)

homedir = File.join('/Users', owner)

file File.join(homedir, '.rvmrc') do
  content %Q/\nrvm_without_gems="rubygems-bundler executable-hooks"/
  owner owner
  group 'staff'
end

install_rvm(
  user:          owner,
  rvm_prefix:    homedir,
  script_flags:  '-s stable',
  installer_url: 'https://get.rvm.io'
)

rubies.each do |ruby_version|
  rvm_ruby ruby_version do
    user owner
    action :install
  end
end

rvm_default_ruby 'system'
