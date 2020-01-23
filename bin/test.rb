require_relative '../config/environment'
$prompt = TTY::Prompt.new
ActiveRecord::Base.logger = nil
require 'wikipedia'


