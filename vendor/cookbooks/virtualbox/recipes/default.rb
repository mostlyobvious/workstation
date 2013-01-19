case node[:platform]
when "mac_os_x"
  dmg_package "VirtualBox" do
    source "http://download.virtualbox.org/virtualbox/4.2.6/VirtualBox-4.2.6-82870-OSX.dmg"
    action :install
    type "pkg"
    package_id "org.virtualbox.pkg.virtualbox"
  end
end
