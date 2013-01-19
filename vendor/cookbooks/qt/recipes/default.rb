case node[:platform]
when "mac_os_x"
  package "qt"
when "ubuntu"
  package "libqt4-dev"
end
