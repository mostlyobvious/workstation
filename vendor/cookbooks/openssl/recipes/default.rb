case node[:platform]
when "mac_os_x"
  package "openssl"
when "ubuntu"
  package "libssl-dev"
end
