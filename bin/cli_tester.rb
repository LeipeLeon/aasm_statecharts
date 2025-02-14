require_relative '../lib/aasm_state_charts'

load File.join(__dir__, 'aasm_state_charts')


# ["-#{arg_info[:short]}", "#{arg_info[:option]}", "#{arg_info[:model]}"]

#FileUtils.cd (File.expand_path('~/github/AV--shf-project'))

#./bin/aasm_state_charts -i ./spec/fixtures/shf  -c ./spec/fixtures/shf/aasm_diagram_blue_green_config.yml -n -d ./spec/fixtures/shf pivotal_tracker_feature

args = ["-i", "./spec/fixtures/shf",
        "-c", "./spec/fixtures/shf/aasm_diagram_blue_green_config.yml",
        "-n",
        "-d", "./spec/fixtures/shf",
        "pivotal_tracker_feature"]

puts ">>>>>>>>>>>>>>>>>>>>>>>>"
puts "#{__dir__}"

puts "#{File.expand_path(File.join(__dir__, "./spec/fixtures/shf") )}"

puts "#{File.exist?(File.join(__dir__, "./spec/fixtures/shf/aasm_diagram_blue_green_config.yml") )}"

AASM_StateChart::AASM_Statecharts_CLI.new(args)
