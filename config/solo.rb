workstation_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

file_cache_path File.join(workstation_root, 'tmp/cache')
cookbook_path %w[cookbooks tmp/cookbooks].map { |dir| File.join(workstation_root, dir) }
verify_api_cert true
