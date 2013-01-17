remote_file "tmp/rvm-installer" do
  source "https://get.rvm.io"
  mode   00644
end

execute "bash tmp/rvm-installer stable"

if node[:platform] == "mac_os_x"
  homebrew_tap "homebrew/dupes"

  package "libksba"
  package "autoconf"
  package "automake"
  package "apple-gcc42"

  bash "rvm pkg install openssl" do
    code <<-EOS
      source "#{node[:rvm][:prefix]}/scripts/rvm"
      rvm pkg install openssl
    EOS
  end
end


node[:rvm][:rubies].each do |ruby|
  bash "rvm install #{ruby}" do
    code <<-EOS
      source "#{node[:rvm][:prefix]}/scripts/rvm"
      rvm install #{ruby}
    EOS
    not_if <<-EOS
      source "#{node[:rvm][:prefix]}/scripts/rvm"
      rvm list | grep #{ruby}
    EOS
  end
end
