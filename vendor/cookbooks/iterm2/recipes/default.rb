unless File.exists?("/Applications/iTerm.app")
  remote_file "#{Chef::Config[:file_cache_path]}/iTerm2.zip" do
    source "https://iterm2.googlecode.com/files/iTerm2_v1_0_0.zip"
  end

  execute "unzip iterm2" do
    command "unzip #{Chef::Config[:file_cache_path]}/iTerm2.zip -d #{Chef::Config[:file_cache_path]}/"
  end

  execute "copy iterm2 to /Applications" do
    command "mv #{Chef::Config[:file_cache_path]}/iTerm.app #{Regexp.escape("/Applications/iTerm.app")}"
  end
end
