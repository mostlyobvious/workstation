case node[:platform]
when "mac_os_x"
  package "gdbm"
when "ubuntu"
  package "libgdbm-dev"
end
