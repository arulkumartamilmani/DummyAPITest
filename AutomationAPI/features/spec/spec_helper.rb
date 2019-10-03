begin
  require "#{File.join(File.expand_path('../../', __FILE__),'api','DummyV1_api.rb')}"
rescue
  puts "API not found"
end
