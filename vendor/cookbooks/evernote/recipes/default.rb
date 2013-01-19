case node[:platform]
when "mac_os_x"
  dmg_package "Evernote" do
    volumes_dir "Evernote"
    source "http://evernote.com/download/get.php?file=EvernoteMac"
    accept_eula true
    action :install
  end
end
