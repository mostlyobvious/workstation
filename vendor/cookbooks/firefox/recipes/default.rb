case node[:platform]
when 'mac_os_x'
  dmg_package "Firefox" do
    source 'http://releases.mozilla.org/pub/mozilla.org/firefox/releases/latest/mac/en-US/Firefox%2018.0.dmg'
    action :install
  end

else
  package 'firefox'
end
