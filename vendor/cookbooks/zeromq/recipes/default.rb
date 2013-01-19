case node[:platform]
when "mac_os_x"
  package "zeromq"
when "ubuntu"
  package "libzmq-dev"
end
