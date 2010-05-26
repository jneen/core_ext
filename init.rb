$:.unshift File.expand_path(File.dirname(__FILE__))
Dir['lib/**'].each do |f|
  require f
end
$:.shift
