lib_path = File.expand_path('lib')
$LOAD_PATH << lib_path

require 'hype/app'
run Hype::App
