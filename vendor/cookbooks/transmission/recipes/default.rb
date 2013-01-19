case node[:platform]
when 'mac_os_x'
  dmg_package "Transmission" do
    source "http://download.transmissionbt.com/files/Transmission-2.76.dmg"
    action :install
  end
else
  package 'transmission'
end
