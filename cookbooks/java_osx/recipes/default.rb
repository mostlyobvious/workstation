::Chef::Recipe.send(:include, Homebrew::Mixin)
owner = homebrew_owner

dmg_package "JavaForOSX" do
  owner     owner
  dmg_name  "JavaForOSX2014-001"
  volumes_dir "Java for OS X 2014-001"
  type      "pkg"
  source    "http://support.apple.com/downloads/DL1572/en_US/JavaForOSX2014-001.dmg"
  checksum  "97bc9b3c47af1f303710c8b15f2bcaedd6b40963c711a18da8eac1e49690a8a0"
  only_if   { `pkgutil --pkg-info=com.apple.pkg.JavaForMacOSX107`.empty? }
  action    :install
end
