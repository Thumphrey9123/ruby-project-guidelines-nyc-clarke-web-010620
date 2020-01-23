require_relative '../config/environment'
$prompt = TTY::Prompt.new
ActiveRecord::Base.logger = nil
require 'wikipedia'



start
$current_user = nil
puts "Logging Out. Have a good day!"




