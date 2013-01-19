case node[:platform]
  package "zeromq"
when "ubuntu"
  package "libzmq-dev"
end
