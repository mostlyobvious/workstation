case node[:platform]
when "mac_os_x"
  package "libffi"
when "ubuntu"
  package "libffi-dev"
end
