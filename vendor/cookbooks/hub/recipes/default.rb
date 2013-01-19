case node[:platform]
when "mac_os_x"
  package 'hub'
else
  remote_file File.join(node[:home], 'bin/hub') do
    source "http://defunkt.io/hub/standalone"
    mode   00755
  end
end
