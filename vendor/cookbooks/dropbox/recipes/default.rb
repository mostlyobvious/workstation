case node[:platform]
when "mac_os_x"
  dmg_package "Dropbox" do
    volumes_dir "Dropbox Installer"
    source "https://www.dropbox.com/download?plat=mac"
    action :install
  end
end
