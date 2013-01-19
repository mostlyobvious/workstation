package "pow" do
  options "--without-npm"
  action :install
end

ENV["POW_DOMAINS"] = "dev,test"

execute "pow --install-local" do
  not_if "pow --install-local --dry-run"
end
