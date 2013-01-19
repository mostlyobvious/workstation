if node[:platform] == "mac_os_x"
  dmg_package "Viscosity" do
    source "http://www.sparklabs.com/downloads/Viscosity.dmg"
    action :install
  end
end
