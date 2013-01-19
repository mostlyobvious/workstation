remote_file "#{Chef::Config[:file_cache_path]}/BetterTouchTool.zip" do
  source "http://www.boastr.de/BetterTouchTool.zip"
  action :create_if_missing
end

execute "unzip BetterTouchTool to /Applications" do
  command "unzip -o #{Chef::Config[:file_cache_path]}/BetterTouchTool.zip -x __MACOSX* -d /Applications/"
  not_if { File.exists?("/Applications/BetterTouchTool.app") }
  # This is required to unzip into Applications
  group "admin"
end

ruby_block "test to see if BetterTouchTool was installed" do
  block do
    raise "BetterTouchTool install failed" unless File.exists?("/Applications/BetterTouchTool.app")
  end
end
