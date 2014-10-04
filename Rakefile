lib_path = File.expand_path('lib')
$LOAD_PATH << lib_path

task :console do
  require 'irb'
  require 'irb/completion'
  ARGV.clear
  IRB.start
end
