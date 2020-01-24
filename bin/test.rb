require_relative '../config/environment'
$prompt = TTY::Prompt.new
ActiveRecord::Base.logger = nil
require 'wikipedia'



$prompt.ask("What's your phone number?", required: true)# What's your phone number?
# >> Value must be provided
