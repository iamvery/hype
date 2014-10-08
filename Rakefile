lib_path = File.expand_path('lib')
$LOAD_PATH << lib_path

task :console do
  require 'pry'
  ARGV.clear
  Pry.start
end
