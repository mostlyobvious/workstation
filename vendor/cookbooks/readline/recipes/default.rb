case node[:platform]
when "mac_os_x"
  package "readline"
when "ubuntu"
  package "libreadline-dev"
end
