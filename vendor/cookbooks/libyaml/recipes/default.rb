case node[:platform]
when "mac_os_x"
  package "libyaml"
when "ubuntu"
  package "libyaml-dev"
end
