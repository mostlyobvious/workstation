case node[:platform]
when 'ubuntu'
  package 'libxml2-dev'
when 'fedora'
  package 'libxml2-devel'
when 'mac_os_x'
  package 'libxml2'
end
