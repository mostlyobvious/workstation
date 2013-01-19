case node[:platform]
when 'ubuntu'
  package 'libxslt-dev'
when 'fedora'
  package 'libxslt-devel'
when 'mac_os_x'
  package 'libxslt'
end
