include_recipe "virtualbox"

case node[:platform]
when "mac_os_x"
  dmg_package "Vagrant" do
    source "http://files.vagrantup.com/packages/476b19a9e5f499b5d0b9d4aba5c0b16ebe434311/Vagrant.dmg"
    action :install
    type "pkg"
    package_id "com.vagrant.vagrant"
  end
end
