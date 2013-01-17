cookbook_path   File.expand_path(File.join(File.dirname(__FILE__), '..', 'cookbooks'))
role_path       File.expand_path(File.join(File.dirname(__FILE__), '..', 'roles'))
file_cache_path File.expand_path(File.join(File.dirname(__FILE__), '..', 'tmp'))
cache_options   :path => "tmp/cache"
