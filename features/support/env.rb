require './config/config_initializer.rb'


require 'rubygems'
#require 'selenium-webdriver'
require 'watir-webdriver'

$config = conf


def print_error
  puts "\nInappropraite browser \"#{ENV['BROWSER']}\""
  puts "\nUsage : cucumber BROWSER=browser_name"
  puts "\nbrowser_name can be one of following :"
  puts "1.ie\n2.chrome\n3.ff\n4.safari\n5.opera"
  puts "\nNow using default browser \"Firefox\""
end


case $config['enviroment']['browser']
  when 'ie'
    browser_type = :ie
  when 'firefox'
    browser_type = :ff
  when 'chrome'
    browser_type = :chrome
  when 'opera'
    browser_type = :opera
  when 'safari'
    browser_type = :safari
  else
    if ENV['BROWSER']
      print_error
    end
    browser_type = :ff
end


begin

  $browser = Watir::Browser.new browser_type

rescue Exception => e
  puts e.message


end

at_exit do
  $browser.close
end
