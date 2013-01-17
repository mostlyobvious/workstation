remote_file "tmp/rvm-installer" do
  source "https://get.rvm.io"
  mode   00644
end

execute "bash tmp/rvm-installer stable"

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
