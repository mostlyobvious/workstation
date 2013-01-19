case node[:platform]
when "mac_os_x"
  dmg_package "Skype" do
    source "http://download.skype.com/macosx/Skype_6.0.0.2968.dmg"
    action :install
  end
end
